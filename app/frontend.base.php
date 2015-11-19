<?php

/**
 *    前台控制器基础类
 *
 *    @author    Garbin
 *    @usage    none
 */
class FrontendApp extends ECBaseApp {

    function __construct() {
        $this->FrontendApp();
    }

    function FrontendApp() {
        Lang::load(lang_file('common'));
        Lang::load(lang_file(APP));
        parent::__construct();

        // 判断商城是否关闭
        if (!Conf::get('site_status')) {
            $this->show_warning(Conf::get('closed_reason'));
            exit;
        }
        # 在运行action之前，无法访问到visitor对象
        if (isset($_SESSION['super_user_id']) && intval($_SESSION['super_user_id']) > 0) {
            $this->_do_login($_SESSION['super_user_id']);
        }
        # 在运行action之前，无法访问到visitor对象
    }

    function _config_view() {
        parent::_config_view();
        $this->_view->template_dir = ROOT_PATH . '/themes';
        $this->_view->compile_dir = ROOT_PATH . '/temp/compiled/mall';
        $this->_view->res_base = SITE_URL . '/themes';
        $this->_config_seo(array(
            'title' => Conf::get('site_title'),
            'description' => Conf::get('site_description'),
            'keywords' => Conf::get('site_keywords')
        ));
	if ($_GET['referid']) {
            $_SESSION['referid'] = $_GET['referid'];
        }
        /*聚划算 状态更新*/
        $this->_template_state();
    }
    
    /*聚划算状态更新*/
    function _template_state() {
        $template_mod = &m('jutemplate');
        $time = gmtime();

        /* 进行中的活动 */
        $template_mod->edit('start_time <=' . $time . ' AND end_time >' . $time, array('state' => 1));

        /* 已结束 */
        $template_mod->edit('end_time <=' . $time, array('state' => 2));

        /* 未发布 */
        $template_mod->edit('start_time >' . $time, array('state' => 3));
    }

    function display($tpl) {
        $cart = & m('cart');
        $this->assign('cart_goods_kinds', $cart->get_kinds(SESS_ID, $this->visitor->get('user_id')));
        /* 新消息 */
        $this->assign('new_message', isset($this->visitor) ? $this->_get_new_message() : '');

        import('init.lib');
        $init = new Init_FrontendApp();
        $this->assign('carts_top', $init->_get_carts_top(SESS_ID, $this->visitor->get('user_id')));

        /* 所有商品类目，头部通用  position: 给弹出层设置高度，使得页面效果美观 */
        $position = array('0px', '-39px', '-50px', '-80px', '-100px', '-170px', '-200px', '-100px');
        $this->assign('header_gcategories', $init->_get_header_gcategories(0, $position, 1)); // 参数说明（二级分类显示数量,弹出层位置,品牌是否为推荐）

        //载入手机数据
        $this->_get_wap_info();
        //微信登录
        $this->weixin_login();
        
        
        /* 热门搜素  */
        $this->assign('hot_keywords', $this->_get_hot_keywords());

        $this->assign('navs', $this->_get_navs());  // 自定义导航
        $this->assign('acc_help', ACC_HELP);        // 帮助中心分类code
        $this->assign('site_title', Conf::get('site_title'));
        $this->assign('site_logo', Conf::get('site_logo'));
        
        $this->assign('default_qrcode', Conf::get('default_qrcode'));
        $this->assign('icp_number', Conf::get('icp_number'));#ICP备案号后台设置
        $this->assign('site_phone_tel', Conf::get('site_phone_tel'));#电话
        $this->assign('site_email', Conf::get('site_email'));#邮箱
        $this->assign('statistics_code', Conf::get('statistics_code')); // 统计代码
        $current_url = explode('/', $_SERVER['REQUEST_URI']);
        $count = count($current_url);
        $this->assign('current_url', $count > 1 ? $current_url[$count - 1] : $_SERVER['REQUEST_URI']); // 用于设置导航状态(以后可能会有问题)
        parent::display($tpl);
    }
    
    /**
     * 此处是基于 QQ sina 一起配合使用  参考 app/third_login.app.php
     */
    function weixin_login() {
        if (ECMALL_WAP != 1) {
            return;
        }
        if ($this->visitor->has_login) {
            return;
        }


        //此处为微信同意授权访问 获取当前微信用户访问的用户数据
        if ($_GET['code']) {
            $code = $_GET['code'];
            //获取系统设置的appid 与  SECRET
            $my_wxconfig_mod = & m('wxconfig');
            $wxconfig = $my_wxconfig_mod->get_info_user(0);
            
            $url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$wxconfig['appid']."&secret=".$wxconfig['appsecret']."&code=".$code."&grant_type=authorization_code";
            $data=  file_get_contents($url);
            $data = json_decode($data);
            $openid = $data->openid;
        } else {
            //在 app/weixin.app.php  生成链接中带了以下参数
            $openid = $_GET['user_openid'];  #FromUserName  此处是根据发送方帐号 生成的唯一值 用于指定唯一用户
            $store_openid = $_GET['store_openid']; #ToUserName    开发者微信号
            $wx_store_id = $_GET['wx_store_id']; # 店铺ID 
        }
        if (empty($openid)) {
            return;
        }
        $third_name = 'weixin';
        $_SESSION['portrait'] = ''; #获得头像
        $_SESSION['nickname'] = ''; #获取的名称
        $_SESSION['openid'] = $openid; #获取的唯一值
        $_SESSION['third_name'] = $third_name; #类别
        $_SESSION['retrun_url'] = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

        $third_login_mod = & m('third_login');
        $conditions = " openid='$openid' and third_name='$third_name'";
        $third_login = $third_login_mod->get($conditions);

        if ($third_login) {
            $data = array(
                'update_time' => gmtime(),
            );
            $third_login_mod->edit("id=" . $third_login["id"], $data);
            //检测绑定信息 关联的 用户 是否存在。
            if ($third_login["user_id"]) {
                $member_mod = &m('member');
                $member = $member_mod->get($third_login["user_id"]);
                if (empty($member)) {
                    $third_login_mod->edit("id=" . $third_login["id"], array('user_id' => 0));
                    $third_login['user_id'] = 0;
                }
            }
            if ($third_login["user_id"]) {
                //如果存在 user_id 表示已经绑定
                $this->_do_login($third_login["user_id"]);
                //跳转
                //此处跳转需要做判断，避免死循环
//                $retrun_url = !empty($_SESSION['retrun_url']) ? $_SESSION['retrun_url'] : '/index.php';
//                header('Location:'.$retrun_url);exit;
            } else {
                // 用户未绑定
                header('Location: index.php?app=third_login&act=binding&from=third_login');
                exit;
            }
        } else {
            //添加到third_login表
            $data = array(
                'third_name' => $third_name,
                'openid' => $openid,
                'user_id' => '0',
                'add_time' => gmtime(),
                'update_time' => gmtime(),
            );
            $third_login_mod->add($data);
            // 新增后绑定相关用户
            header('Location: index.php?app=third_login&act=binding&from=third_login');
            exit;
        }
    }
    
    
    /**
     * 判断是否为手机端,是手机端，载入以下数据
     */
    function _get_wap_info()
    {
        if (ECMALL_WAP == 1) {
            /* 推荐产品 */
            $goods_mod = & m('goods');
            $conditions = 'mall_recommended = 1';
            $conditions .= $city_wheresql;
            $wap_recommended_goods = $goods_mod->get_list(
                    array(
                        'conditions' => $conditions,
                        'order' => 'mall_sort_order',
                        'limit' => 20,
                    )
            );
            $this->assign('wap_recommended_goods', $wap_recommended_goods);

            /* 推荐店铺 */
            $store_mod = & m('store');
            $conditions = "state = 1 AND recommended = 1";
            $wap_recommended_stores = $store_mod->find(array(
                'conditions' => $conditions,
                'order' => 'sort_order',
                'fields' => 'store_id, store_name, store_logo, praise_rate, user_name',
                'join' => 'belongs_to_user',
                'limit' => 6,
            ));
            foreach ($wap_recommended_stores as $key => $store) {
                empty($store['store_logo']) && $wap_recommended_stores[$key]['store_logo'] = Conf::get('default_store_logo');
                //等级图片
                $step = intval(Conf::get('upgrade_required'));
                $step < 1 && $step = 5;
                $wap_recommended_stores[$key]['credit_image'] = 'themes/wapmall/default/styles/default/images/' . $store_mod->compute_credit($store['credit_value'], $step);
            }
            $this->assign('wap_recommended_stores', $wap_recommended_stores);
            
            
            //获取广告图片
            $ad_mod = &m('ad');
            $ads = $ad_mod->find(array(
                'conditions' => 'user_id=0',
                'order' => "sort_order desc",
            ));
            foreach ($ads as $key => $ad) {
                $wap_ads[$ad['ad_type']][] = $ad;
            }
            $this->assign('wap_ads', $wap_ads);
            
            //获取优惠卷
            $coupon_mod =& m('coupon');
            $wap_coupons = $coupon_mod->find(array(
                'fields' => 'coupon.*,s.store_name,s.address,s.region_name',
                'conditions' => 'coupon.end_time > ' . gmtime(),
                'order' => 'add_time desc',
                'join' => 'belong_to_store',
                'limit' => 3,
            ));
            foreach ($wap_coupons as $key => $coupon) {
                if (empty($coupon['coupon_bg'])) {
                    $wap_coupons[$key]['coupon_bg'] = Conf::get('default_coupon_image');
                }
            }
            $this->assign('wap_coupons', $wap_coupons);
            
            
            $this->assign('wap_site_logo', Conf::get('wap_site_logo'));
        }
    }
    
    //此处用来统一处理 价格 当用户同时购买产品的时候  用来选择 哪一个价格
    function get_spec_price($spec_info)
    {
        //选择最小的价格
        $min_price = $spec_info['price'];
        
        /* 读取促销价格 */
        $promotion_mod = &m('promotion');
        $promotion_price = $promotion_mod->get_promotion_price($spec_info['goods_id'], $spec_info['spec_id']);
        if($promotion_price<$min_price){
            $min_price = $promotion_price;
        }
        
        //把原价改为会员所获得的优惠价
        if ($spec_info['if_open'] == 1) {
            $gradegoods_mod = &m('gradegoods');
            $discount = $gradegoods_mod->get_user_discount($this->visitor->get('user_id'), $spec_info['goods_id']);
            if ($discount > 0) {
                $discount_price = round($spec_info['price'] * $discount, 2);
                //判断取最低价
                if($discount_price < $min_price){
                    $min_price = $discount_price;
                }
            }
        }
        return $min_price;
    }
    
    function get_ip_location() {
        $baidu_ak = Conf::get('baidu_ak');
        if(empty($baidu_ak)){
            $this->show_warning('error');
            exit;
        }
        
        $ip = real_ip();
        $url = "http://api.map.baidu.com/location/ip?ak=" . $baidu_ak . "&ip=" . $ip . "&coor=bd09ll";

        $content = file_get_contents($url);
        $result = ecm_json_decode($content);

        if ($result->status == '0') {
            $data['zoom'] = 15; //地图显示的层级
            $data['lng'] = $result->content->point->x;
            $data['lat'] = $result->content->point->y;
        } else {
            $this->show_warning($content);
            exit;
        }
        return $data;
    }

    /* 热门搜素  */

    function _get_hot_keywords() {
        $keywords = explode(',', conf::get('hot_search'));
        return $keywords;
    }

    function login() {
        if ($this->visitor->has_login) {
            $this->show_warning('has_login');

            return;
        }
        if (!IS_POST) {
            if (!empty($_GET['ret_url'])) {
                $ret_url = trim($_GET['ret_url']);
            } else {
                if (isset($_SERVER['HTTP_REFERER'])) {
                    $ret_url = $_SERVER['HTTP_REFERER'];
                } else {
                    $ret_url = SITE_URL . '/index.php';
                }
            }
            /* 防止登陆成功后跳转到登陆、退出的页面 */
            $ret_url = strtolower($ret_url);
            if (str_replace(array('act=login', 'act=logout',), '', $ret_url) != $ret_url) {
                $ret_url = SITE_URL . '/index.php';
            }

            if (Conf::get('captcha_status.login')) {
                $this->assign('captcha', 1);
            }
            $this->import_resource(array('script' => 'jquery.plugins/jquery.validate.js'));
            $this->assign('ret_url', rawurlencode($ret_url));
            $this->_curlocal(LANG::get('user_login'));
            $this->_config_seo('title', Lang::get('user_login') . ' - ' . Conf::get('site_title'));
            $this->display('login.html');
            /* 同步退出外部系统 */
            if (!empty($_GET['synlogout'])) {
                $ms = & ms();
                echo $synlogout = $ms->user->synlogout();
            }
        } else {
            if (Conf::get('captcha_status.login') && base64_decode($_SESSION['captcha']) != strtolower($_POST['captcha'])) {
                $this->show_warning('captcha_failed');

                return;
            }

            $user_name = trim($_POST['user_name']);
            $password = $_POST['password'];

            $ms = & ms();
            $user_id = $ms->user->auth($user_name, $password);
            if (!$user_id) {
                /* 未通过验证，提示错误信息 */
                $this->show_warning($ms->user->get_error());

                return;
            } else {
                /* 通过验证，执行登陆操作 */
                $this->_do_login($user_id);

                /* 同步登陆外部系统 */
                $synlogin = $ms->user->synlogin($user_id);
            }

            /*用户登录后 获得积分*/
            import('integral.lib');
            $integral=new Integral();
            $integral->change_integral_login($user_id);
            
            $this->show_message(Lang::get('login_successed') . $synlogin, 'back_before_login', rawurldecode($_POST['ret_url']), 'enter_member_center', 'index.php?app=member');
        }
    }

    function pop_warning($msg, $dialog_id = '', $url = '') {
        if ($msg == 'ok') {
            if (empty($dialog_id)) {
                $dialog_id = APP . '_' . ACT;
            }
            if (!empty($url)) {
                echo "<script type='text/javascript'>window.parent.location.href='" . $url . "';</script>";
            }
            echo "<script type='text/javascript'>window.parent.js_success('" . $dialog_id . "');</script>";
        } else {
            header("Content-Type:text/html;charset=" . CHARSET);
            $msg = is_array($msg) ? $msg : array(array('msg' => $msg));
            $errors = '';
            foreach ($msg as $k => $v) {
                $error = $v[obj] ? Lang::get($v[msg]) . " [" . Lang::get($v[obj]) . "]" : Lang::get($v[msg]);
                $errors .= $errors ? "<br />" . $error : $error;
            }
            echo "<script type='text/javascript'>window.parent.js_fail('" . $errors . "');</script>";
        }
    }

    function logout() {
        $this->visitor->logout();
        $_SESSION['super_user_id'] = 0;
        /* 跳转到登录页，执行同步退出操作 */
        header("Location: index.php?app=member&act=login&synlogout=1");
        return;
    }

    /* 执行登录动作 */

    function _do_login($user_id) {
        $mod_user = & m('member');

        $user_info = $mod_user->get(array(
            'conditions' => "user_id = '{$user_id}'",
            'join' => 'has_store', //关联查找看看是否有店铺
            'fields' => 'user_id, user_name, reg_time, last_login, last_ip, store_id',
        ));

        /* 店铺ID */
        $my_store = empty($user_info['store_id']) ? 0 : $user_info['store_id'];

        /* 保证基础数据整洁 */
        //unset($user_info['store_id']);

        /* 分派身份 */
        $this->visitor->assign($user_info);

        /* 更新用户登录信息 */
        $mod_user->edit("user_id = '{$user_id}'", "last_login = '" . gmtime() . "', last_ip = '" . real_ip() . "', logins = logins + 1");

        /* 自动注册开通资金账户 开始***************************** */
        $db = &db();
        $row_epay = $db->getAll("select * from " . DB_PREFIX . "epay where user_id='$user_id'");
        if (empty($row_epay)) {
            $row_member = $db->getrow("select * from " . DB_PREFIX . "member where user_id='$user_id'");
            // 添加自动开通  
            $this->mod_epay = & m('epay');
            $epay_data = array(
                'user_id' => $row_member['user_id'],
                'user_name' => $row_member['user_name'],
                'zf_pass'=>md5($row_member['pass_word']),
                'add_time' => time(),
            );
            $this->mod_epay->add($epay_data);
        }
        /* 自动注册开通 结束***************************** */


        /* 更新购物车中的数据 */
        $mod_cart = & m('cart');
        $mod_cart->edit("(user_id = '{$user_id}' OR session_id = '" . SESS_ID . "') AND store_id <> '{$my_store}'", array(
            'user_id' => $user_id,
            'session_id' => SESS_ID,
        ));

        /* 去掉重复的项 */
        $cart_items = $mod_cart->find(array(
            'conditions' => "user_id='{$user_id}' GROUP BY spec_id",
            'fields' => 'COUNT(spec_id) as spec_count, spec_id, rec_id',
        ));
        if (!empty($cart_items)) {
            foreach ($cart_items as $rec_id => $cart_item) {
                if ($cart_item['spec_count'] > 1) {
                    $mod_cart->drop("user_id='{$user_id}' AND spec_id='{$cart_item['spec_id']}' AND rec_id <> {$cart_item['rec_id']}");
                }
            }
        }
    }

    /* 取得导航 */

    function _get_navs() {
        $cache_server = & cache_server();
        $key = 'common.navigation';
        $data = $cache_server->get($key);
        if ($data === false) {
            $data = array(
                'header' => array(),
                'middle' => array(),
                'footer' => array(),
            );
            $nav_mod = & m('navigation');
            $rows = $nav_mod->find(array(
                'order' => 'type, sort_order',
            ));
            foreach ($rows as $row) {
                $data[$row['type']][] = $row;
            }
            $cache_server->set($key, $data, 86400);
        }

        return $data;
    }

    /**
     *    获取JS语言项
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    static function jslang($lang='') {
        $lang = Lang::fetch(lang_file('jslang'));
        parent::jslang($lang);
    }

    /**
     *    视图回调函数[显示小挂件]
     *
     *    @author    Garbin
     *    @param     array $options
     *    @return    void
     */
    function display_widgets($options) {
        $area = isset($options['area']) ? $options['area'] : '';
        $page = isset($options['page']) ? $options['page'] : '';
        if (!$area || !$page) {
            return;
        }
        include_once(ROOT_PATH . '/includes/widget.base.php');

        /* 获取该页面的挂件配置信息 */
        $widgets = get_widget_config($this->_get_template_name(), $page);

        /* 如果没有该区域 */
        if (!isset($widgets['config'][$area])) {
            return;
        }

        /* 将该区域内的挂件依次显示出来 */
        foreach ($widgets['config'][$area] as $widget_id) {
            $widget_info = $widgets['widgets'][$widget_id];
            $wn = $widget_info['name'];
            $options = $widget_info['options'];

            $widget = & widget($widget_id, $wn, $options);
            $widget->display('');
        }
    }

    /**
     *    获取当前使用的模板名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_template_name() {
        return 'default';
    }

    /**
     *    获取当前使用的风格名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_style_name() {
        return 'default';
    }

    /**
     *    当前位置
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function _curlocal($arr) {
        $curlocal = array(array(
                'text' => Lang::get('index'),
                'url' => SITE_URL . '/index.php',
        ));
        if (is_array($arr)) {
            $curlocal = array_merge($curlocal, $arr);
        } else {
            $args = func_get_args();
            if (!empty($args)) {
                $len = count($args);
                for ($i = 0; $i < $len; $i += 2) {
                    $curlocal[] = array(
                        'text' => $args[$i],
                        'url' => $args[$i + 1],
                    );
                }
            }
        }

        $this->assign('_curlocal', $curlocal);
    }

    function _init_visitor() {
        $this->visitor = & env('visitor', new UserVisitor());
    }

}

/**
 *    前台访问者
 *
 *    @author    Garbin
 *    @usage    none
 */
class UserVisitor extends BaseVisitor {

    var $_info_key = 'user_info';

    /**
     *    退出登录
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function logout() {
        /* 将购物车中的相关项的session_id置为空 */
        $mod_cart = & m('cart');
        $mod_cart->edit("user_id = '" . $this->get('user_id') . "'", array(
            'session_id' => '',
        ));

        /* 退出登录 */
        parent::logout();
    }

}

/**
 *    商城控制器基类
 *
 *    @author    Garbin
 *    @usage    none
 */
class MallbaseApp extends FrontendApp {

    function _run_action() {
        /* 只有登录的用户才可访问 */
        if (!$this->visitor->has_login && in_array(APP, array('apply'))) {
            header('Location: index.php?app=member&act=login&ret_url=' . rawurlencode($_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING']));

            return;
        }

        parent::_run_action();
    }

    function _get_waptemplate_name() {
        $template_name = Conf::get('waptemplate_name');
        if (!$template_name) {
            $template_name = 'default';
        }
        return $template_name;
    }

    function _get_wapstyle_name() {
        $style_name = Conf::get('wapstyle_name');
        if (!$style_name) {
            $style_name = 'default';
        }
        return $style_name;
    }

    function _config_view() {
        parent::_config_view();
        if (ECMALL_WAP == 1) {
            $template_name = $this->_get_waptemplate_name();
            $style_name = $this->_get_wapstyle_name();
            $this->_view->template_dir = ROOT_PATH . "/themes/wapmall/{$template_name}";
            $this->_view->compile_dir = ROOT_PATH . "/temp/compiled/wapmall/{$template_name}";
            $this->_view->res_base = SITE_URL . "/themes/wapmall/{$template_name}/styles/{$style_name}";
        } else {
            $template_name = $this->_get_template_name();
            $style_name = $this->_get_style_name();
            $this->_view->template_dir = ROOT_PATH . "/themes/mall/{$template_name}";
            $this->_view->compile_dir = ROOT_PATH . "/temp/compiled/mall/{$template_name}";
            $this->_view->res_base = SITE_URL . "/themes/mall/{$template_name}/styles/{$style_name}";
        }
    }

    /* 取得支付方式实例 */

    function _get_payment($code, $payment_info) {
        include_once(ROOT_PATH . '/includes/payment.base.php');
        include(ROOT_PATH . '/includes/payments/' . $code . '/' . $code . '.payment.php');
        $class_name = ucfirst($code) . 'Payment';

        return new $class_name($payment_info);
    }

    /**
     *   获取当前所使用的模板名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_template_name() {
        $template_name = Conf::get('template_name');
        if (!$template_name) {
            $template_name = 'default';
        }

        return $template_name;
    }

    /**
     *    获取当前模板中所使用的风格名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_style_name() {
        $style_name = Conf::get('style_name');
        if (!$style_name) {
            $style_name = 'default';
        }

        return $style_name;
    }

}

/**
 *    购物流程子系统基础类
 *
 *    @author    Garbin
 *    @usage    none
 */
class ShoppingbaseApp extends MallbaseApp {

    function _run_action() {
        /* 只有登录的用户才可访问 */
        if (!$this->visitor->has_login && !in_array(ACT, array('login', 'register', 'check_user'))) {
            if (!IS_AJAX) {
                header('Location:index.php?app=member&act=login&ret_url=' . rawurlencode($_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING']));

                return;
            } else {
                $this->json_error('login_please');
                return;
            }
        }

        parent::_run_action();
    }

}

/**
 *    用户中心子系统基础类
 *
 *    @author    Garbin
 *    @usage    none
 */
class MemberbaseApp extends MallbaseApp {

    function _run_action() {
        /* 只有登录的用户才可访问 */
        if (!$this->visitor->has_login && !in_array(ACT, array('login', 'register', 'check_user', 'check_mobile', 'cmc', 'send_code'))) {
            if (!IS_AJAX) {
                header('Location:index.php?app=member&act=login&ret_url=' . rawurlencode($_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING']));

                return;
            } else {
                $this->json_error('login_please');
                return;
            }
        }

        parent::_run_action();
    }

    /**
     *    当前选中的菜单项
     *
     *    @author    Garbin
     *    @param     string $item
     *    @return    void
     */
    function _curitem($item) {
        $this->assign('has_store', $this->visitor->get('has_store'));
        // psmb
        $member_menu = $this->_get_member_menu();
        if (!$this->visitor->get('has_store')) {
            unset($member_menu['im_seller']);
            unset($member_menu['im_weixin']);
            unset($member_menu['im_wap']);
            unset($member_menu['im_market']);
            $this->assign('member_role', 'buyer_admin');
        } else {
            if ($_SESSION['member_role'] == 'buyer_admin') {
                unset($member_menu['im_seller']);
                unset($member_menu['im_weixin']);
                unset($member_menu['im_wap']);
                unset($member_menu['im_market']);
                $this->assign('member_role', 'buyer_admin');
            } else {
                unset($member_menu['im_buyer']);
                $this->assign('member_role', 'seller_admin');
            }
        }
        $this->assign('_member_menu', $member_menu);
        $this->assign('_curitem', $item);
    }

    /**
     *    当前选中的子菜单
     *
     *    @author    Garbin
     *    @param     string $item
     *    @return    void
     */
    function _curmenu($item) {
        $_member_submenu = $this->_get_member_submenu();
        foreach ($_member_submenu as $key => $value) {
            $_member_submenu[$key]['text'] = $value['text'] ? $value['text'] : Lang::get($value['name']);
        }
        $this->assign('_member_submenu', $_member_submenu);
        $this->assign('_curmenu', $item);
    }

    /**
     *    获取子菜单列表
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function _get_member_submenu() {
        return array();
    }

    /**
     *    获取用户中心全局菜单列表
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function _get_member_menu() {
        $menu = array();

        /* 我的ECMall */
        $menu['my_ecmall'] = array(
            'name' => 'my_ecmall',
            'text' => Lang::get('my_ecmall'),
            'submenu' => array(
                'overview' => array(
                    'text' => Lang::get('overview'),
                    'url' => 'index.php?app=member',
                    'name' => 'overview',
                    'icon' => 'ico1',
                ),
//                'refer'  => array(
//                    'text'  => Lang::get('refer'),
//                    'url'   => 'index.php?app=refer',
//                    'name'  => 'refer',
//                    'icon'  => 'ico1',
//                ),
//                'my_integral_log'  => array(
//                    'text'  => Lang::get('my_integral_log'),
//                    'url'   => 'index.php?app=my_integral_log',
//                    'name'  => 'my_integral_log',
//                    'icon'  => 'ico5',
//                ),
//                'my_integral_goods'  => array(
//                    'text'  => Lang::get('my_integral_goods'),
//                    'url'   => 'index.php?app=my_integral_goods',
//                    'name'  => 'my_integral_goods',
//                    'icon'  => 'ico5',
//                ),
                'my_profile' => array(
                    'text' => Lang::get('my_profile'),
                    'url' => 'index.php?app=member&act=profile',
                    'name' => 'my_profile',
                    'icon' => 'ico2',
                ),
                'my_third_login' => array(
                    'text' => Lang::get('my_third_login'),
                    'url' => 'index.php?app=my_third_login',
                    'name' => 'my_third_login',
                    'icon' => 'ico12',
                ),
                'message' => array(
                    'text' => Lang::get('message'),
                    'url' => 'index.php?app=message&act=newpm',
                    'name' => 'message',
                    'icon' => 'ico3',
                ),
                'friend' => array(
                    'text' => Lang::get('friend'),
                    'url' => 'index.php?app=friend',
                    'name' => 'friend',
                    'icon' => 'ico4',
                ),
                'epay' => array(
                    'text' => Lang::get('epay'),
                    'url' => 'index.php?app=epay&act=logall',
                    'name' => 'epay',
                    'icon' => 'ico13',
                ),

            ),
        );


        /* 我是买家 */
        $menu['im_buyer'] = array(
            'name' => 'im_buyer',
            'text' => Lang::get('im_buyer'),
            'submenu' => array(
                'my_order' => array(
                    'text' => Lang::get('my_order'),
                    'url' => 'index.php?app=buyer_order',
                    'name' => 'my_order',
                    'icon' => 'ico5',
                ),
//                'my_groupbuy' => array(
//                    'text' => Lang::get('my_groupbuy'),
//                    'url' => 'index.php?app=buyer_groupbuy',
//                    'name' => 'my_groupbuy',
//                    'icon' => 'ico21',
//                ),
//                'supply_demand' => array(
//                    'text' => Lang::get('supply_demand'),
//                    'url' => 'index.php?app=supply_demand',
//                    'name' => 'supply_demand',
//                    'icon' => 'ico10',
//                ),
                'my_question' => array(
                    'text' => Lang::get('my_question'),
                    'url' => 'index.php?app=my_question',
                    'name' => 'my_question',
                    'icon' => 'ico17',
                ),
                'my_favorite' => array(
                    'text' => Lang::get('my_favorite'),
                    'url' => 'index.php?app=my_favorite',
                    'name' => 'my_favorite',
                    'icon' => 'ico6',
                ),
                'my_address' => array(
                    'text' => Lang::get('my_address'),
                    'url' => 'index.php?app=my_address',
                    'name' => 'my_address',
                    'icon' => 'ico7',
                ),
//                'my_coupon' => array(
//                    'text' => Lang::get('my_coupon'),
//                    'url' => 'index.php?app=my_coupon',
//                    'name' => 'my_coupon',
//                    'icon' => 'ico20',
//                ),
                'my_evaluation'  => array(
                    'text'  => Lang::get('my_evaluation'),
                    'url'   => 'index.php?app=my_evaluation&type=from_buyer',
                    'name'  => 'my_evaluation',
                    'icon'  => 'ico13',
                ),
                'refund' => array(
                    'text' => Lang::get('refund_apply'),
                    'url' => 'index.php?app=refund',
                    'name' => 'refund_apply',
                    'icon' => 'ico9',
                ),
            ),
        );

        if (!$this->visitor->get('has_store') && Conf::get('store_allow')) {
            /* 没有拥有店铺，且开放申请，则显示申请开店链接 */
            /* $menu['im_seller'] = array(
              'name'  => 'im_seller',
              'text'  => Lang::get('im_seller'),
              'submenu'   => array(),
              );

              $menu['im_seller']['submenu']['overview'] = array(
              'text'  => Lang::get('apply_store'),
              'url'   => 'index.php?app=apply',
              'name'  => 'apply_store',
              ); */
            $menu['overview'] = array(
                'text' => Lang::get('apply_store'),
                'url' => 'index.php?app=apply',
            );
        }
        if ($this->visitor->get('manage_store')) {
            /* 指定了要管理的店铺 */
            $menu['im_seller'] = array(
                'name' => 'im_seller',
                'text' => Lang::get('im_seller'),
                'submenu' => array(),
            );

            $menu['im_seller']['submenu']['my_goods'] = array(
                'text' => Lang::get('my_goods'),
                'url' => 'index.php?app=my_goods',
                'name' => 'my_goods',
                'icon' => 'ico8',
            );
            $menu['im_seller']['submenu']['order_manage'] = array(
                'text' => Lang::get('order_manage'),
                'url' => 'index.php?app=seller_order',
                'name' => 'order_manage',
                'icon' => 'ico10',
            );
            $menu['im_seller']['submenu']['order_xianxia'] = array(
                'text' => '线下做单',
                'url' => 'index.php?app=seller_order&act=xianxia',
                'name' => '线下做单',
                'icon' => 'ico10',
            );
            $menu['im_seller']['submenu']['my_category'] = array(
                'text' => Lang::get('my_category'),
                'url' => 'index.php?app=my_category',
                'name' => 'my_category',
                'icon' => 'ico9',
            );

            $menu['im_seller']['submenu']['my_store'] = array(
                'text' => Lang::get('my_store'),
                'url' => 'index.php?app=my_store',
                'name' => 'my_store',
                'icon' => 'ico11',
            );
//            $menu['im_seller']['submenu']['my_theme'] = array(
//                'text' => Lang::get('my_theme'),
//                'url' => 'index.php?app=my_theme',
//                'name' => 'my_theme',
//                'icon' => 'ico12',
//            );

//            $menu['im_seller']['submenu']['my_payment'] = array(
//                'text' => Lang::get('my_payment'),
//                'url' => 'index.php?app=my_payment',
//                'name' => 'my_payment',
//                'icon' => 'ico13',
//            );
            $menu['im_seller']['submenu']['my_shipping'] = array(
                    'text'  => Lang::get('my_shipping'),
                    'url'   => 'index.php?app=my_shipping',
                    'name'  => 'my_shipping',
                    'icon'  => 'ico14',
            );
            $menu['im_seller']['submenu']['my_navigation'] = array(
                'text' => Lang::get('my_navigation'),
                'url' => 'index.php?app=my_navigation',
                'name' => 'my_navigation',
                'icon' => 'ico15',
            );
            $menu['im_seller']['submenu']['refund_receive'] = array(
                'text' => Lang::get('refund_receive'),
                'url' => 'index.php?app=refund&act=receive',
                'name' => 'refund_receive',
                'icon' => 'ico9',
            );

            /* 卖家营销管理 */
            $menu['im_market'] = array(
                'name' => 'im_market',
                'text' => Lang::get('im_market'),
                'submenu' => array(),
            );
            $menu['im_market']['submenu']['promotion_manage'] = array(
                'text' => Lang::get('promotion_manage'),
                'url' => 'index.php?app=seller_promotion',
                'name' => 'promotion_manage',
                'icon' => 'ico9',
            );
            $menu['im_market']['submenu']['msg'] = array(
                'text' => Lang::get('msg'),
                'url' => 'index.php?app=msg',
                'name' => 'msg',
                'icon' => 'ico3',
            );
            $menu['im_market']['submenu']['template'] = array(
                'text' => Lang::get('template'),
                'url' => 'index.php?app=template',
                'name' => 'template',
                'icon' => 'ico22',
            );
//            $menu['im_market']['submenu']['my_statistics'] = array(
//                'text' => Lang::get('my_statistics'),
//                'url' => 'index.php?app=my_statistics',
//                'name' => 'my_statistics',
//                'icon' => 'ico20',
//            );
//            $menu['im_market']['submenu']['seller_coupon'] = array(
//                'text' => Lang::get('seller_coupon'),
//                'url' => 'index.php?app=seller_coupon',
//                'name' => 'seller_coupon',
//                'icon' => 'ico19',
//            );
//            $menu['im_market']['submenu']['export_excel'] = array(
//                'text' => Lang::get('export_excel'),
//                'url' => 'index.php?app=export_excel',
//                'name' => 'export_excel',
//                'icon' => 'ico19',
//            );
/*            $menu['im_market']['submenu']['groupbuy_manage'] = array(
                'text' => Lang::get('groupbuy_manage'),
                'url' => 'index.php?app=seller_groupbuy',
                'name' => 'groupbuy_manage',
                'icon' => 'ico22',
            );*/
/*            $menu['im_seller']['submenu']['ju'] = array(
                'text' => Lang::get('ju_manage'),
                'url' => 'index.php?app=seller_ju',
                'name' => 'ju',
                'icon' => 'ico5',
            );*/
            $menu['im_market']['submenu']['my_qa'] = array(
                'text' => Lang::get('my_qa'),
                'url' => 'index.php?app=my_qa',
                'name' => 'my_qa',
                'icon' => 'ico18',
            );
            $menu['im_market']['submenu']['my_partner'] = array(
                'text' => Lang::get('my_partner'),
                'url' => 'index.php?app=my_partner',
                'name' => 'my_partner',
                'icon' => 'ico16',
            );
//            $menu['im_market']['submenu']['mix_manage'] = array(
//                'text' => Lang::get('mix_manage'),
//                'url' => 'index.php?app=seller_mix',
//                'name' => 'mix_manage',
//                'icon' => 'ico5',
//            );


//            /* 卖家WAP相关管理 */
//            $menu['im_wap'] = array(
//                'name' => 'im_wap',
//                'text' => Lang::get('im_wap'),
//                'submenu' => array(),
//            );
//            $menu['im_wap']['submenu']['my_waptheme'] = array(
//                'text' => Lang::get('my_waptheme'),
//                'url' => 'index.php?app=my_waptheme',
//                'name' => 'my_waptheme',
//                'icon' => 'ico12',
//            );
//            $menu['im_wap']['submenu']['kmenus'] = array(
//                'text' => Lang::get('kmenus'),
//                'url' => 'index.php?app=kmenus',
//                'name' => 'kmenus',
//                'icon' => 'ico13',
//            );
//            $menu['im_wap']['submenu']['lunbo'] = array(
//                'text' => Lang::get('lunbo'),
//                'url' => 'index.php?app=lunbo',
//                'name' => 'lunbo',
//                'icon' => 'ico14',
//            );



//
//            /* 卖家微信相关管理 */
//            $menu['im_weixin'] = array(
//                'name' => 'im_weixin',
//                'text' => Lang::get('im_weixin'),
//                'submenu' => array(),
//            );
//            $menu['im_weixin']['submenu']['my_wxconfig'] = array(
//                'text' => Lang::get('my_wxconfig'),
//                'url' => 'index.php?app=my_wxconfig',
//                'name' => 'my_wxconfig',
//                'icon' => 'ico5',
//            );
//            $menu['im_weixin']['submenu']['my_wxfollow'] = array(
//                'text' => Lang::get('my_wxfollow'),
//                'url' => 'index.php?app=my_wxfollow',
//                'name' => 'my_wxfollow',
//                'icon' => 'ico21',
//            );
//            $menu['im_weixin']['submenu']['my_wxkeyword'] = array(
//                'text' => Lang::get('my_wxkeyword'),
//                'url' => 'index.php?app=my_wxkeyword',
//                'name' => 'my_wxkeyword',
//                'icon' => 'ico17',
//            );
//            $menu['im_weixin']['submenu']['my_wxmess'] = array(
//                'text' => Lang::get('my_wxmess'),
//                'url' => 'index.php?app=my_wxmess',
//                'name' => 'my_wxmess',
//                'icon' => 'ico6',
//            );
//            $menu['im_weixin']['submenu']['my_wxmenu'] = array(
//                'text' => Lang::get('my_wxmenu'),
//                'url' => 'index.php?app=my_wxmenu',
//                'name' => 'my_wxmenu',
//                'icon' => 'ico7',
//            );
        }

        return $menu;
    }

}

/**
 *    店铺管理子系统基础类
 *
 *    @author    Garbin
 *    @usage    none
 */
class StoreadminbaseApp extends MemberbaseApp {

    function _run_action() {
        /* 只有登录的用户才可访问 */
        if (!$this->visitor->has_login && !in_array(ACT, array('login', 'register', 'check_user'))) {
            if (!IS_AJAX) {
                header('Location:index.php?app=member&act=login&ret_url=' . rawurlencode($_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING']));

                return;
            } else {
                $this->json_error('login_please');
                return;
            }
        }
        $referer = $_SERVER['HTTP_REFERER'];
        if (strpos($referer, 'act=login') === false) {
            $ret_url = $_SERVER['HTTP_REFERER'];
            $ret_text = 'go_back';
        } else {
            $ret_url = SITE_URL . '/index.php';
            $ret_text = 'back_index';
        }

        /* 检查是否是店铺管理员 */
        if (!$this->visitor->get('manage_store')) {
            /* 您不是店铺管理员 */
            $this->show_warning(
                    'not_storeadmin', 'apply_now', 'index.php?app=apply', $ret_text, $ret_url
            );

            return;
        }

        /* 检查是否被授权 */
        $privileges = $this->_get_privileges();
        if (!$this->visitor->i_can('do_action', $privileges)) {
            $this->show_warning('no_permission', $ret_text, $ret_url);

            return;
        }

        /* 检查店铺开启状态 */
        $state = $this->visitor->get('state');
        if ($state == 0) {
            $this->show_warning('apply_not_agree', $ret_text, $ret_url);

            return;
        } elseif ($state == 2) {
            $this->show_warning('store_is_closed', $ret_text, $ret_url);

            return;
        }

        /* 检查附加功能 */
        if (!$this->_check_add_functions()) {
            $this->show_warning('not_support_function', $ret_text, $ret_url);
            return;
        }

        parent::_run_action();
    }

    function _get_privileges() {
        $store_id = $this->visitor->get('manage_store');
        $privs = $this->visitor->get('s');

        if (empty($privs)) {
            return '';
        }

        foreach ($privs as $key => $admin_store) {
            if ($admin_store['store_id'] == $store_id) {
                return $admin_store['privs'];
            }
        }
    }

    /* 获取当前店铺所使用的主题 */

    function _get_theme() {
        $model_store = & m('store');
        $store_info = $model_store->get($this->visitor->get('manage_store'));
        $theme = !empty($store_info['theme']) ? $store_info['theme'] : 'default|default';
        list($curr_template_name, $curr_style_name) = explode('|', $theme);
        return array(
            'template_name' => $curr_template_name,
            'style_name' => $curr_style_name,
        );
    }

    function _check_add_functions() {
        $apps_functions = array(// app与function对应关系
            'seller_groupbuy' => 'groupbuy',
            'coupon' => 'coupon',
            'template' => 'template',
        );
        if (isset($apps_functions[APP])) {
            $store_mod = & m('store');
            $settings = $store_mod->get_settings($this->_store_id);
            $add_functions = isset($settings['functions']) ? $settings['functions'] : ''; // 附加功能
            if (!in_array($apps_functions[APP], explode(',', $add_functions))) {
                return false;
            }
        }
        return true;
    }

}

/**
 *    店铺控制器基础类
 *
 *    @author    Garbin
 *    @usage    none
 */
class StorebaseApp extends FrontendApp {

    var $_store_id;

    /**
     * 设置店铺id
     *
     * @param int $store_id
     */
    function set_store($store_id) {
        $this->_store_id = intval($store_id);

        /* 有了store id后对视图进行二次配置 */
        $this->_init_view();
        $this->_config_view();
    }

    function _get_waptemplate_name() {
        $store_info = $this->_get_store_info();
        $theme = !empty($store_info['waptheme']) ? $store_info['waptheme'] : 'default|default';
        list($template_name, $style_name) = explode('|', $theme);
        return $template_name;
    }

    function _get_wapstyle_name() {
        $store_info = $this->_get_store_info();
        $theme = !empty($store_info['waptheme']) ? $store_info['waptheme'] : 'default|default';
        list($template_name, $style_name) = explode('|', $theme);
        return $style_name;
    }

    function _config_view() {
        parent::_config_view();

        if (ECMALL_WAP == 1) {
            $template_name = $this->_get_waptemplate_name();
            $style_name = $this->_get_wapstyle_name();

            $this->_view->template_dir = ROOT_PATH . "/themes/wapstore/{$template_name}";
            $this->_view->compile_dir = ROOT_PATH . "/temp/compiled/wapstore/{$template_name}";
            $this->_view->res_base = SITE_URL . "/themes/wapstore/{$template_name}/styles/{$style_name}";
        } else {
            $template_name = $this->_get_template_name();
            $style_name = $this->_get_style_name();

            $this->_view->template_dir = ROOT_PATH . "/themes/store/{$template_name}";
            $this->_view->compile_dir = ROOT_PATH . "/temp/compiled/store/{$template_name}";
            $this->_view->res_base = SITE_URL . "/themes/store/{$template_name}/styles/{$style_name}";
        }
    }

    /**
     * 取得店铺信息
     */
    function get_store_data() {
        $cache_server = & cache_server();
        $key = 'function_get_store_data_' . $this->_store_id;
        $store = $cache_server->get($key);
        if ($store === false) {
            $store = $this->_get_store_info();
            if (empty($store)) {
                $this->show_warning('the_store_not_exist');
                exit;
            }
            if ($store['state'] == 2) {
                $this->show_warning('the_store_is_closed');
                exit;
            }
            $step = intval(Conf::get('upgrade_required'));
            $step < 1 && $step = 5;
            $store_mod = & m('store');
            $store['credit_image'] = $this->_view->res_base . '/images/' . $store_mod->compute_credit($store['credit_value'], $step);

            empty($store['store_logo']) && $store['store_logo'] = Conf::get('default_store_logo');
            
            import('evaluation.lib');
            $evaluation = new Evaluation();
            $store['store_evaluation'] = $evaluation->get_store_evaluation($this->_store_id);
            
            $store['store_owner'] = $this->_get_store_owner();
            $store['store_navs'] = $this->_get_store_nav();

            $store['kmenus'] = $this->_get_store_kmenus($this->_store_id);
            $store['kmenusinfo'] = $this->_get_store_kmenusinfo($this->_store_id);
            $store['radio_new'] = 1;
            $store['radio_recommend'] = 1;
            $store['radio_hot'] = 1;

            $goods_mod = & m('goods');
            $store['goods_count'] = $goods_mod->get_count_of_store($this->_store_id);
            $store['store_gcates'] = $this->_get_store_gcategory();
            $store['sgrade'] = $this->_get_store_grade('grade_name');
            $functions = $this->_get_store_grade('functions');
            $store['functions'] = array();
            if ($functions) {
                $functions = explode(',', $functions);
                foreach ($functions as $k => $v) {
                    $store['functions'][$v] = $v;
                }
            }

            $store['hot_saleslist'] = $this->_get_hot_saleslist();
            $store['collect_goodslist'] = $this->_get_collect_goods();
            $store['left_rec_goods'] = $this->_get_left_rec_goods($this->_store_id);

            if (!empty($store['hot_search'])) {
                $store['hot_search'] = explode(' ', $store['hot_search']);
            }

            $online_service = array();
            if (isset($store['im_qq']) && !empty($store['im_qq'])) {
                $online_service['qq'][] = $store['im_qq'];
            }
            if (isset($store['im_ww']) && !empty($store['im_ww'])) {
                $online_service['ww'][] = $store['im_ww'];
            }
            if (!empty($store['online_service'])) {
                $qqww = explode('|', $store['online_service']);
                foreach ($qqww as $key => $val) {
                    if (!empty($val)) {
                        foreach (explode(';', $val) as $v) {
                            if (!empty($v)) {
                                $online_service[$key == 0 ? 'qq' : 'ww'][] = $v;
                            }
                        }
                    }
                }
                unset($store['online_service']);
            }
            $store['online_service'] = $online_service;


            if (!empty($store['pic_slides'])) {
                $pic_slides = array();
                $store['pic_slides'] = json_decode($store['pic_slides'], true);
            }

            $statistics_url = SITE_URL . '/index.php?app=statistics&store_id=' . $store['store_id'];
            $store['statistics_url'] = '<script type="text/javascript" src="' . $statistics_url . '"></script>';

            
            $store['pre_connects'] = json_decode($store['pre_connects'],true);
            if(!empty($store['pre_connects'])){
                foreach ($store['pre_connects'] as $key => $value) {
                    $store['pre_connects'][$key]['name'] = urldecode($value['name']);
                    $store['pre_connects'][$key]['num'] = urldecode($value['num']);
                }
            }
            $store['after_connects'] = json_decode($store['after_connects'],true);
            if(!empty($store['after_connects'])){
                foreach ($store['after_connects'] as $key => $value) {
                    $store['after_connects'][$key]['name'] = urldecode($value['name']);
                    $store['after_connects'][$key]['num'] = urldecode($value['num']);
                }
            }
            
            $cache_server->set($key, $store, 1800);
        }
        $this->assign('kmenus', $store['kmenus']);
        $this->assign('kmenusinfo', $store['kmenusinfo']);
        return $store;
    }

    function _get_store_kmenus($store_id) {
        $kmenus_mod = & m('kmenus');
        $kmenus = $kmenus_mod->get($store_id);
        return $kmenus;
    }

    function _get_store_kmenusinfo($store_id) {
        $kmenusinfo_mod = & m('kmenusinfo');
        $kmenusinfo = $kmenusinfo_mod->find(
                array(
                    'conditions' => 'kmenus_id=' . $store_id
                )
        );
        return $kmenusinfo;
    }

    function _get_hot_saleslist() {
        if (!$this->_store_id) {
            return array();
        }
        $goods_mod = & m('goods');
        $data = $goods_mod->find(array(
            'conditions' => "if_show = 1 AND store_id = '{$this->_store_id}' AND closed = 0 ",
            'order' => 'sales DESC',
            'fields' => 'g.goods_id, g.goods_name,goods.default_image,g.price,goods_statistics.sales',
            'join' => 'has_goodsstatistics',
            'limit' => 10,
        ));
        return $data;
    }

    function _get_collect_goods() {
        $goods_mod = & m('goods');
        $data = $goods_mod->find(array(
            'conditions' => "if_show = 1 AND store_id = '{$this->_store_id}' AND closed = 0 ",
            'order' => 'collects DESC',
            'fields' => 'g.goods_id, g.goods_name,g.default_image,g.price,goods_statistics.collects',
            'join' => 'has_goodsstatistics',
            'limit' => 10,
        ));
        return $data;
    }

    function _get_left_rec_goods($id, $num = 5) {
        $goods_mod = & bm('goods', array('_store_id' => $id));
        $goods_list = $goods_mod->find(array(
            'conditions' => "closed = 0 AND if_show = 1",
            'join' => 'has_goodsstatistics',
            'fields' => 'goods_name, default_image, price,sales',
            'order' => 'collects desc, views desc,comments desc,sales desc,add_time desc',
            'limit' => $num,
        ));
        foreach ($goods_list as $key => $goods) {
            empty($goods['default_image']) && $goods_list[$key]['default_image'] = Conf::get('default_goods_image');
        }
        return $goods_list;
    }

    /* 取得店铺信息 */

    function _get_store_info() {
        if (!$this->_store_id) {
            /* 未设置前返回空 */
            return array();
        }
        static $store_info = null;
        if ($store_info === null) {
            $store_mod = & m('store');
            $store_info = $store_mod->get_info($this->_store_id);
        }

        return $store_info;
    }

    /* 取得店主信息 */

    function _get_store_owner() {
        $user_mod = & m('member');
        $user = $user_mod->get($this->_store_id);

        return $user;
    }

    /* 取得店铺导航 */

    function _get_store_nav() {
        $article_mod = & m('article');
        return $article_mod->find(array(
                    'conditions' => "store_id = '{$this->_store_id}' AND cate_id = '" . STORE_NAV . "' AND if_show = 1",
                    'order' => 'sort_order',
                    'fields' => 'title',
        ));
    }

    /*  取的店铺等级   */

    function _get_store_grade($field) {
        $store_info = $store_info = $this->_get_store_info();
        $sgrade_mod = & m('sgrade');
        $result = $sgrade_mod->get_info($store_info['sgrade']);
        return $result[$field];
    }

    /* 取得店铺分类 */

    function _get_store_gcategory() {
        $gcategory_mod = & bm('gcategory', array('_store_id' => $this->_store_id));
        $gcategories = $gcategory_mod->get_list(-1, true);
        import('tree.lib');
        $tree = new Tree();
        $tree->setTree($gcategories, 'cate_id', 'parent_id', 'cate_name');
        return $tree->getArrayList(0);
    }

    /**
     *    获取当前店铺所设定的模板名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_template_name() {
        $store_info = $this->_get_store_info();
        $theme = !empty($store_info['theme']) ? $store_info['theme'] : 'default|default';
        list($template_name, $style_name) = explode('|', $theme);

        return $template_name;
    }

    /**
     *    获取当前店铺所设定的风格名称
     *
     *    @author    Garbin
     *    @return    string
     */
    function _get_style_name() {
        $store_info = $this->_get_store_info();
        $theme = !empty($store_info['theme']) ? $store_info['theme'] : 'default|default';
        list($template_name, $style_name) = explode('|', $theme);

        return $style_name;
    }

    function display_widgets($options) {
        $area = isset($options['area']) ? $options['area'] : '';
        $page = isset($options['page']) ? $options['page'] : '';
        if (!$area || !$page) {
            return;
        }
        include_once(ROOT_PATH . '/includes/widget.base.php');

        /* 获取该页面的挂件配置信息 */
        $page = "store_{$this->_store_id}_" . $page;
        $widgets = get_widget_config($this->_get_template_name(), $page, 'store', $this->_get_style_name());

        /* 如果没有该区域 */
        if (!isset($widgets['config'][$area])) {
            return;
        }

        /* 将该区域内的挂件依次显示出来 */
        foreach ($widgets['config'][$area] as $widget_id) {
            $widget_info = $widgets['widgets'][$widget_id];
            $wn = $widget_info['name'];
            $options = $widget_info['options'];

            $widget = & widget($widget_id, $wn, $options, 'store');
            $widget->display('');
        }
    }

}

/* 实现消息基础类接口 */

class MessageBase extends MallbaseApp {
    
}

;

/* 实现模块基础类接口 */

class BaseModule extends FrontendApp {
    
}

;

/* 消息处理器 */
require(ROOT_PATH . '/eccore/controller/message.base.php');
?>
