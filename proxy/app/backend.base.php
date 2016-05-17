<?php

/**
 *    Desc
 *
 *    @author    Garbin
 *    @usage    none
 */
class BackendApp extends ECBaseApp
{
    function __construct()
    {
        $this->BackendApp();
    }
    function BackendApp()
    {
        Lang::load(lang_file('common'));
     //   Lang::load(lang_file('proxy/' . APP));
        parent::__construct();
    }
    function login()
    {
        if ($this->visitor->has_login)
        {
            $this->show_warning('has_login');

            return;
        }
        if (!IS_POST)
        {
            if (Conf::get('captcha_status.backend'))
            {
                $this->assign('captcha', 1);
            }
            $this->display('login.html');
        }
        else
        {
            if (Conf::get('captcha_status.backend') && base64_decode($_SESSION['captcha']) != strtolower($_POST['captcha']))
            {
                $this->show_warning('captcha_faild');

                return;
            }

            $user_name = trim($_POST['user_name']);
            $password  = $_POST['password'];
            $region_name = trim($_POST['region_name']);
            $ms =& ms();
            $user_id = $ms->user->auth($user_name, $password);
            if (!$user_id)
            {
                /* 未通过验证，提示错误信息 */
                $this->show_warning($ms->user->get_error());

                return;
            }

            //查看是否在代理库里
            $proxy_mod = &m('proxy');
            $proxy_data = $proxy_mod->get(array(
                'conditions' => "user_id=$user_id and region_name='$region_name'"
            ));

            if(empty($proxy_data)){
                $this->show_warning("对不起，您不在代理库中");
                return;
            }

            /* 通过验证，执行登陆操作 */
            if (!$this->_do_login($user_id))
            {
                return;
            }

            $this->show_message('login_successed',
                '代理中心', 'index.php');
        }
    }

    function logout()
    {
        parent::logout();
        $this->show_message('logout_successed',
            'go_to_admin', 'index.php');
    }

    /**
     * 执行登陆操作
     *
     * @param int $user_id
     * @return bool
     */
    function _do_login($user_id)
    {
        $mod_user =& m('member');
        $user_info = $mod_user->get(array(
            'conditions' => $user_id,
            'join'       => 'manage_mall',
            'fields'     => 'this.user_id, user_name, reg_time, last_login, last_ip, privs'
        ));


        /* 分派身份 */
        $this->visitor->assign(array(
            'user_id'       => $user_info['user_id'],
            'user_name'     => $user_info['user_name'],
            'reg_time'      => $user_info['reg_time'],
            'last_login'    => $user_info['last_login'],
            'last_ip'       => $user_info['last_ip'],
            'region_name'   => trim($_POST['region_name']),
        ));

        /* 更新登录信息 */
        $time = gmtime();
        $ip   = real_ip();
        $mod_user->edit($user_id, "last_login = '{$time}', last_ip='{$ip}', logins = logins + 1");

        return true;
    }


    /**
     *    获取JS语言项
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    static function jslang()
    {
        $lang = Lang::fetch(lang_file('admin/jslang'));
        parent::jslang($lang);
    }

    /**
     *    后台的需要权限验证机制
     *
     *    @author    Garbin
     *    @return    void
     */
    function _run_action()
    {
        /* 先判断是否登录 */
        if (!$this->visitor->has_login)
        {
            $this->login();

            return;
        }

        /* 运行 */
        parent::_run_action();
    }

    function _config_view()
    {
        parent::_config_view();
        $this->_view->template_dir  = APP_ROOT . '/templates';
        $this->_view->compile_dir   = ROOT_PATH . '/temp/compiled/proxy';
        $this->_view->res_base      = site_url() . '/templates';
        $this->_view->lib_base      = dirname(site_url()) . '/includes/libraries/javascript';
    }
    
    /**
     *   获取商城当前模板名称
     */
    function _get_template_name()
    {
        $template_name = Conf::get('template_name');
        if (!$template_name)
        {
            $template_name = 'default';
        }

        return $template_name;
    }


    function _init_visitor()
    {
        $this->visitor =& env('visitor', new ProxyVisitor());
    }

    /* 清除缓存 */
    function _clear_cache()
    {
        $cache_server =& cache_server();
        $cache_server->clear();
    }
    
    function display($tpl)
    {
        $this->assign('real_backend_url', site_url());
        parent::display($tpl);
    }
}

/**
 *    后台访问者
 *
 *    @author    Garbin
 *    @usage    none
 */
class ProxyVisitor extends BaseVisitor
{
    var $_info_key = 'proxy_info';
    /**
     *    获取用户详细信息
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function _get_detail()
    {
        $model_member =& m('member');
        $detail = $model_member->get(array(
            'conditions'    => "member.user_id = '{$this->info['user_id']}'"));
        unset($detail['user_id'], $detail['user_name'], $detail['reg_time'], $detail['last_login'], $detail['last_ip']);

        return $detail;
    }
}


/**
 *    后台访问者
 *
 *    @author    Garbin
 *    @usage    none
 */
class AdminVisitor extends BaseVisitor
{
    var $_info_key = 'admin_info';
    /**
     *    获取用户详细信息
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function _get_detail()
    {
        $model_member =& m('member');
        $detail = $model_member->get(array(
            'conditions'    => "member.user_id = '{$this->info['user_id']}'",
            'join'          => 'manage_mall',                 //关联查找看看是否有店铺
        ));
        unset($detail['user_id'], $detail['user_name'], $detail['reg_time'], $detail['last_login'], $detail['last_ip']);

        return $detail;
    }
}

/* 实现消息基础类接口 */
class MessageBase extends BackendApp {};

/* 实现模块基础类接口 */
class BaseModule  extends BackendApp {};

/* 消息处理器 */
require(ROOT_PATH . '/eccore/controller/message.base.php');

?>
