<?php

/* 会员控制器 */

class UserApp extends BackendApp {

    var $_admin_mod;
    var $_user_mod;

    function __construct() {
        $this->UserApp();
    }

    function UserApp() {
        parent::__construct();
        $this->_user_mod = & m('member');
        $this->_admin_mod = & m('userpriv');
    }

    function index() {
        $conditions = $this->_get_query_conditions(array(
            array(
                'field' => $_GET['field_name'],
                'name' => 'field_value',
                'equal' => 'like',
            ),
        ));
        //更新排序
        if (isset($_GET['sort']) && !empty($_GET['order'])) {
            $sort = strtolower(trim($_GET['sort']));
            $order = strtolower(trim($_GET['order']));
            if (!in_array($order, array('asc', 'desc'))) {
                $sort = 'user_id';
                $order = 'asc';
            }
        } else {
            if (isset($_GET['sort']) && empty($_GET['order'])) {
                $sort = strtolower(trim($_GET['sort']));
                $order = "";
            } else {
                $sort = 'user_id';
                $order = 'asc';
            }
        }
        $page = $this->_get_page();
        $users = $this->_user_mod->find(array(
            'join' => 'has_store,manage_mall',
            'fields' => 'this.*,store.store_id,userpriv.store_id as priv_store_id,userpriv.privs',
            'conditions' => '1=1' . $conditions,
            'limit' => $page['limit'],
            'order' => "$sort $order",
            'count' => true,
        ));
        foreach ($users as $key => $val) {
            if ($val['priv_store_id'] == 0 && $val['privs'] != '') {
                $users[$key]['if_admin'] = true;
            }
        }
        $this->assign('users', $users);
        $page['item_count'] = $this->_user_mod->getCount();
        $this->_format_page($page);
        $this->assign('filtered', $conditions ? 1 : 0); //是否有查询条件
        $this->assign('page_info', item_count);
        /* 导入jQuery的表单验证插件 */
        $this->import_resource(array(
            'script' => 'jqtreetable.js,inline_edit.js',
            'style' => 'res:style/jqtreetable.css'
        ));
        $this->assign('query_fields', array(
            'user_name' => LANG::get('user_name'),
            'email' => LANG::get('email'),
            'real_name' => LANG::get('real_name'),
//            'phone_tel' => LANG::get('phone_tel'),
//            'phone_mob' => LANG::get('phone_mob'),
        ));
        $this->assign('sort_options', array(
            'reg_time DESC' => LANG::get('reg_time'),
            'last_login DESC' => LANG::get('last_login'),
            'logins DESC' => LANG::get('logins'),
        ));
        $this->assign('if_system_manager', $this->_admin_mod->check_system_manager($this->visitor->get('user_id')) ? 1 : 0);
        $this->display('user.index.html');
    }

    function super_login() {
        
        $user_id = isset($_GET['user_id']) ? intval($_GET['user_id']) : 0;
        $_SESSION['super_user_id'] = $user_id;
        $url = 'Location:'.SITE_URL.'/index.php?app=member';
        header($url);
    }

    function add() {
        if (!IS_POST) {
            $this->assign('user', array(
                'gender' => 0,
            ));
            /* 导入jQuery的表单验证插件 */
            $this->import_resource(array(
                'script' => 'jquery.plugins/jquery.validate.js'
            ));
            
            //获取会员等级信息 by qufood
            $ugrade_mod = &m('ugrade'); 
            $member_mod = &m('member');
            $user = $user + $member_mod->get_grade_info($id);
            $ugrades = $ugrade_mod->get_option('grade_name');
            $this->assign('ugrades', $ugrades);
            //
            
            $ms = & ms();
            $this->assign('set_avatar', $ms->user->set_avatar());
            $this->display('user.form.html');
        } else {
            $user_name = trim($_POST['user_name']);
            $password = trim($_POST['password']);
            $email = trim($_POST['email']);
            $real_name = trim($_POST['real_name']);
            $gender = trim($_POST['gender']);
            $im_qq = trim($_POST['im_qq']);
            $im_msn = trim($_POST['im_msn']);

            if (strlen($user_name) < 3 || strlen($user_name) > 25) {
                $this->show_warning('user_name_length_error');

                return;
            }

            if (strlen($password) < 6 || strlen($password) > 20) {
                $this->show_warning('password_length_error');

                return;
            }

            if (!is_email($email)) {
                $this->show_warning('email_error');

                return;
            }
            


            /* 连接用户系统 */
            $ms = & ms();

            /* 检查名称是否已存在 */
            if (!$ms->user->check_username($user_name)) {
                $this->show_warning($ms->user->get_error());

                return;
            }

            /* 保存本地资料 */
            $data = array(
                'real_name' => $_POST['real_name'],
                'gender' => $_POST['gender'],
//                'phone_tel' => join('-', $_POST['phone_tel']),
//                'phone_mob' => $_POST['phone_mob'],
                'im_qq' => $_POST['im_qq'],
                'im_msn' => $_POST['im_msn'],
//                'im_skype'  => $_POST['im_skype'],
//                'im_yahoo'  => $_POST['im_yahoo'],
//                'im_aliww'  => $_POST['im_aliww'],
                'reg_time' => gmtime(),
            );

            /* 到用户系统中注册 */
            $user_id = $ms->user->register($user_name, $password, $email, $data);
            if (!$user_id) {
                $this->show_warning($ms->user->get_error());

                return;
            }

            if (!empty($_FILES['portrait'])) {
                $portrait = $this->_upload_portrait($user_id);
                if ($portrait === false) {
                    return;
                }

                $portrait && $this->_user_mod->edit($user_id, array('portrait' => $portrait));
            }


            $this->show_message('add_ok', 'back_list', 'index.php?app=user', 'continue_add', 'index.php?app=user&amp;act=add'
            );
        }
    }

    /* 检查会员名称的唯一性 */

    function check_user() {
        $user_name = empty($_GET['user_name']) ? null : trim($_GET['user_name']);
        if (!$user_name) {
            echo ecm_json_encode(false);
            return;
        }

        /* 连接到用户系统 */
        $ms = & ms();
        echo ecm_json_encode($ms->user->check_username($user_name));
    }

    function edit() {
	$ugrade_mod=&m('ugrade');//by qufood
        
        $id = empty($_GET['id']) ? 0 : intval($_GET['id']);
        //判断是否是系统初始管理员，如果是系统管理员，必须是自己才能编辑，其他管理员不能编辑系统管理员
        if ($this->_admin_mod->check_system_manager($id) && !$this->_admin_mod->check_system_manager($this->visitor->get('user_id'))) {
            $this->show_warning('system_admin_edit');
            return;
        }
        if (!IS_POST) {
            /* 是否存在 */
            $user = $this->_user_mod->get_info($id);
            if (!$user) {
                $this->show_warning('user_empty');
                return;
            }

            //获取会员等级信息 by qufood
            $member_mod = &m('member');
            $user = $user + $member_mod->get_grade_info($id);
            $ugrades = $ugrade_mod->get_option('grade_name');
            $this->assign('ugrades', $ugrades);
            //
            
            $ms = & ms();
            $this->assign('set_avatar', $ms->user->set_avatar($id));
            $this->assign('user', $user);
            $this->assign('phone_tel', explode('-', $user['phone_tel']));
            /* 导入jQuery的表单验证插件 */
            $this->import_resource(array(
                'script' => 'jquery.plugins/jquery.validate.js'
            ));
            $this->display('user.form.html');
        } else {
            $data = array(
                'real_name' => $_POST['real_name'],
                'gender' => $_POST['gender'],
//                'phone_tel' => join('-', $_POST['phone_tel']),
//                'phone_mob' => $_POST['phone_mob'],
                'im_qq' => $_POST['im_qq'],
                'im_msn' => $_POST['im_msn'],
//                'im_skype'  => $_POST['im_skype'],
//                'im_yahoo'  => $_POST['im_yahoo'],
//                'im_aliww'  => $_POST['im_aliww'],
            );
            
            //当输入积分大于 0 
            $point = intval($_POST['point']);
            if ($point > 0) {
                $user = $this->_user_mod->get_info($id);
                //选项为 增加积分
                if ($_POST['point_change'] == 'inc_by') {
                    $data['integral'] = $user['integral'] + $point;
                    $data['total_integral'] = $user['total_integral'] + $point;

                    //操作记录入积分记录
                    $integral_log_mod = &m('integral_log');
                    $integral_log = array(
                        'user_id' => $user['user_id'],
                        'user_name' => $user['user_name'],
                        'point' => $point,
                        'add_time' => gmtime(),
                        'remark' => '管理员新增积分' . $point,
                        'integral_type' => INTEGRAL_ADD,
                    );
                    $integral_log_mod->add($integral_log);
                }
                
                //选项为 减少积分
                if ($_POST['point_change'] == 'dec_by') {
                    //如果当前的可用积分小于扣除的积分  则不做操作
                    if ($user['integral'] >= $point) {
                        
                        $data['integral'] = $user['integral'] - $point;
                        //$data['total_integral'] = $user['total_integral'] - $point;

                        //操作记录入积分记录
                        $integral_log_mod = &m('integral_log');
                        $integral_log = array(
                            'user_id' => $user['user_id'],
                            'user_name' => $user['user_name'],
                            'point' => $point,
                            'add_time' => gmtime(),
                            'remark' => '管理员扣除积分' . $point,
                            'integral_type' => INTEGRAL_SUB,
                        );
                        $integral_log_mod->add($integral_log);
                    }
                }
            }
            
            //管理员编辑会员等级后，也把该会员的会员积分修改为该会员等级所需要的最低积分 by qufood
            $ugrade_info = $ugrade_mod->get($_POST['grade_id']);
            $data['ugrade'] = $ugrade_info['grade'];
            $data['growth'] = $ugrade_info['floor_growth'];
            //end
            
            if (!empty($_POST['password'])) {
                $password = trim($_POST['password']);
                if (strlen($password) < 6 || strlen($password) > 20) {
                    $this->show_warning('password_length_error');

                    return;
                }
            }
            if (!is_email(trim($_POST['email']))) {
                $this->show_warning('email_error');

                return;
            }

            if (!empty($_FILES['portrait'])) {
                $portrait = $this->_upload_portrait($id);
                if ($portrait === false) {
                    return;
                }
                $data['portrait'] = $portrait;
            }

            /* 修改本地数据 */
            $this->_user_mod->edit($id, $data);

            /* 修改用户系统数据 */
            $user_data = array();
            !empty($_POST['password']) && $user_data['password'] = trim($_POST['password']);
            !empty($_POST['email']) && $user_data['email'] = trim($_POST['email']);
            if (!empty($user_data)) {
                $ms = & ms();
                $ms->user->edit($id, '', $user_data, true);
            }

            $this->show_message('edit_ok', 'back_list', 'index.php?app=user', 'edit_again', 'index.php?app=user&amp;act=edit&amp;id=' . $id
            );
        }
    }

    function drop() {
        $id = isset($_GET['id']) ? trim($_GET['id']) : '';
        if (!$id) {
            $this->show_warning('no_user_to_drop');
            return;
        }
        $admin_mod = & m('userpriv');
        if (!$admin_mod->check_admin($id)) {
            $this->show_message('cannot_drop_admin', 'drop_admin', 'index.php?app=admin');
            return;
        }

        if (!$this->check_store($id)) {
            $this->show_message('cannot_drop_store', 'drop_store', 'index.php?app=store');
            return;
        }

        $ids = explode(',', $id);

        /* 连接用户系统，从用户系统中删除会员 */
        $ms = & ms();
        if (!$ms->user->drop($ids)) {
            $this->show_warning($ms->user->get_error());

            return;
        }

        $this->show_message('drop_ok');
    }

    //检测删除的用户是否存在店铺  如果存在 需要先删除店铺 以便删除相关多余本地图片
    function check_store($user_id) {
        $conditions = "store_id in (" . $user_id . ")";
        $store_mod = & m('store');
        return count($store_mod->find(array('conditions' => $conditions))) == 0;
    }

    /**
     * 上传头像
     *
     * @param int $user_id
     * @return mix false表示上传失败,空串表示没有上传,string表示上传文件地址
     */
    function _upload_portrait($user_id) {
        $file = $_FILES['portrait'];
        if ($file['error'] != UPLOAD_ERR_OK) {
            return '';
        }

        import('uploader.lib');
        $uploader = new Uploader();
        $uploader->allowed_type(IMAGE_FILE_TYPE);
        $uploader->addFile($file);
        if ($uploader->file_info() === false) {
            $this->show_warning($uploader->get_error(), 'go_back', 'index.php?app=user&amp;act=edit&amp;id=' . $user_id);
            return false;
        }

        $uploader->root_dir(ROOT_PATH);
        return $uploader->save('data/files/mall/portrait/' . ceil($user_id / 500), $user_id);
    }

}

?>
