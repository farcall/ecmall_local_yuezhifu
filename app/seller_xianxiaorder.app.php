<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/12/15
 * Time: 4:45
 */

/**
 *    买家的线下订单管理控制器
 *
 *    @author    Garbin
 *    @usage    none
 */
class Seller_xianxiaorderApp extends StoreadminbaseApp {
    var $_order_xianxia_image_mod;
    var $_uploadedfile_mod;
    var $_store_id;
    function __construct() {
        $this->Seller_xianxiaorderApp();
    }

    function Seller_xianxiaorderApp() {
        parent::__construct();
        $this->_store_id = intval($this->visitor->get('manage_store'));
        $this->mod_epay = & m('epay');
        $this->mod_epaylog = & m('epaylog');
        $this->mod_msg = & m('msg');
        $this->mod_msglog = & m('msglog');
        $this->_uploadedfile_mod = & m('uploadedfile');
        $this->_order_xianxia_image_mod = &m('order_xianxia_image');

    }




    function index() {
        //todo 顾客线下消费
        $store_id = intval($this->visitor->get('manage_store'));
        $store_mod = & m('store');
        $store = $store_mod->get_info($store_id);

        $user_id = $this->visitor->get('user_id');
        $model_user = & m('member');
        $member = $model_user->get_info(intval($user_id));

        if($_POST){
            $buyer_name = $_POST['buyer_name'];
            $buyer_mobile = $_POST['buyer_telephone'];
            $goods_name = $_POST['goods_name'];
            $money = $_POST['money'];
            $seller_storename = $_POST['seller_storename'];
            $seller_username = $_POST['seller_username'];
            $seller_mobile = $_POST['seller_phone'];

            //获取交易凭证图片
            $order_file_id = array();
            if (isset($_POST['order_file_id'])) {
                $order_file_id = $_POST['order_file_id'];
            }else{
                $this->show_warning('必须上传交易凭证');
                return;
            }

            if(empty($buyer_mobile) or empty($buyer_mobile) or empty($goods_name) or
                empty($money) or empty($seller_storename) or  empty($seller_username) or empty($seller_mobile) ){

                $this->show_warning('请完整输入订单信息');
                return;
            }

            /*检查买家是否存在*/
            $member_mod = &m('member');
            $member_data = $member_mod->get(array(
                'conditions' => 'user_name='."'$buyer_name'",
            ));

            if(empty($member_data)){
                $this->show_warning('请正确输入买家信息');
                return;
            }

            //应当支付的佣金
            $model_setting = &af('settings');
            $setting = $model_setting->getAll(); //载入系统设置数据
            $yongjin = $money*$setting['epay_trade_charges_ratio'];

            /*检查用户*/
            $order_xianxia_data = array(
                'buyer_id'=>$member_data['user_id'],
                'buyer_name'=>$buyer_name,
                'buyer_mobile'=>$buyer_mobile,
                'goods_name'=>$goods_name,
                'money'=>$money,
                'yongjin'=>$yongjin,
                'seller_userid'=> $user_id,
                'seller_username'=>$seller_username,
                'seller_storeid'=>$store_id,
                'seller_storename'=>$seller_storename,
                'seller_mobile'=>$seller_mobile,
            );


            /*检查资金是否够佣金*/
            $epay_mod = &m('epay');
            $zijin = $epay_mod->getOne("select money from " . DB_PREFIX . "epay where user_id=$user_id");
            if($zijin< $yongjin){
                $this->show_warning('您的资金不足需支付的佣金,请先充值');
                return;
            }

            $goods_type = & gt('xianxia');
            $order_type = & ot('xianxia');
            $xxid = $order_type->submit_order($order_xianxia_data);
            if(empty($xxid)){
                $this->show_warning('订单创建失败');
            }

            //更新订单凭证
            $uploadfiles = array_merge($order_file_id);
            $this->_uploadedfile_mod->edit(db_create_in($uploadfiles, 'file_id'), array('item_id' => $xxid));
            if (!empty($order_file_id)) {
                $this->_order_xianxia_image_mod->edit(db_create_in($order_file_id, 'file_id'), array('order_id' => $xxid));
            }

            $this->show_message('已成功提交,您的信息会在48小时内审核完成,请耐心等待.');
            return;
        }
        $this->assign('member',$member);
        $this->assign('store',$store);

        /* 导入jQuery的表单验证插件   */
        $this->import_resource(array(
            'script' => array(
                array(
                    'path' => 'dialog/dialog.js',
                    'attr' => 'id="dialog_js"',
                ),
                array(
                    'path' => 'jquery.ui/jquery.ui.js',
                    'attr' => '',
                ),
                array(
                    'path' => 'jquery.ui/i18n/' . i18n_code() . '.js',
                    'attr' => '',
                ),
                array(
                    'path' => 'xianxia_pingzheng.js',
                    'attr' => 'charset="utf-8"',
                ),
                array(
                    'path' => 'jquery.plugins/jquery.validate.js',
                    'attr' => '',
                ),
            ),
            'style' => 'jquery.ui/themes/ui-lightness/jquery.ui.css',
        ));


        /* 当前位置 */
        $this->_curlocal(LANG::get('member_center'), 'index.php?app=member', LANG::get('order_manage'), 'index.php?app=seller_xianxiaorder', '线下做单');
        /* 当前用户中心菜单 */
        $this->_curmenu('线下做单');
        $this->_config_seo('title', Lang::get('member_center') . ' - 线下做单');


        /* 取得游离状的图片 */
        $order_images = array();
        $uploadfiles = $this->_uploadedfile_mod->find(array(
            'join' => 'belongs_to_order_xianxia_image',
            'conditions' => "belong=" . BELONG_XIANXIAPINGZHENG . " AND item_id=0 AND store_id=" . store_id,
            'order' => 'add_time ASC'
        ));
        foreach ($uploadfiles as $key => $uploadfile) {
            $order_images[$key] = $uploadfile;
        }

        $this->assign('order_images', $order_images);


        /* 商品图片批量上传器 */
        $this->assign('order_upload', $this->_build_upload(array(
            'obj' => 'ORDER_SWFU',
            'belong' => BELONG_XIANXIAPINGZHENG,
            'item_id' => 0,
            'button_text' => Lang::get('bat_upload'),
            'progress_id' => 'order_upload_progress',
            'upload_url' => 'index.php?app=swfupload&instance=order_images',
            'if_multirow' => 1,
        )));


        $this->assign("id", 0);
        $this->assign("belong", BELONG_XIANXIAPINGZHENG);

        $this->assign('epay_trade_charges_ratio',Conf::get('epay_trade_charges_ratio'));
        $this->display('seller_order.xianxia.html');
    }


    /**
     * 作用:检查用户佣金是否足够
     * Created by QQ:710932
     */
    function ajax_checkyongjin(){
        $money = $_GET['money'];
        if(empty($money)){
            echo ecm_json_encode(false);
            return;
        }

        /*检查资金是否够佣金*/
        //余额支付
        $user_id = $this->visitor->get('user_id');
        $epay_mod = &m('epay');
        $zijin = $epay_mod->getOne("select money from " . DB_PREFIX . "epay where user_id=$user_id");
        //应当支付的佣金
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        $yongjin = $money*$setting['epay_trade_charges_ratio'];
        if($zijin< $yongjin){
            echo ecm_json_encode(false);
            return;
        }

        echo ecm_json_encode(true);
        return;
    }


    function drop_image() {
        $id = empty($_GET['id']) ? 0 : intval($_GET['id']);
        $uploadedfile = $this->_uploadedfile_mod->get(array(
            'conditions' => "f.file_id = '$id' AND f.store_id = '{$this->_store_id}'",
            'join' => 'belongs_to_order_xianxia_image',
            'fields' => 'order_xianxia_image.image_url, order_xianxia_image.thumbnail, order_xianxia_image.image_id, f.file_id',
        ));
        if ($uploadedfile) {
            $this->_uploadedfile_mod->drop($id);
            if ($this->_order_xianxia_image_mod->drop($uploadedfile['image_id'])) {
                // 删除文件
                if (file_exists(ROOT_PATH . '/' . $uploadedfile['image_url'])) {
                    @unlink(ROOT_PATH . '/' . $uploadedfile['image_url']);
                }
                if (file_exists(ROOT_PATH . '/' . $uploadedfile['thumbnail'])) {
                    @unlink(ROOT_PATH . '/' . $uploadedfile['thumbnail']);
                }

                $this->json_result($id);
                return;
            }
            $this->json_result($id);
            return;
        }
        $this->json_error(Lang::get('no_image_droped'));
    }






}

?>
