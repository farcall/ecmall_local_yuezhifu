<?php

/**
 * Created by PhpStorm.
 * 线下做单页面
 * User: Dong
 * Date: 16/6/10
 * Time: 上午7:38
 */
class LineorderApp extends StoreadminbaseApp
{
    var $mod_epay;
    var $mod_epaylog;
    var $mod_member;
    function __construct()
    {
        $this->LineorderApp();
    }

    function LineorderApp(){
        parent::__construct();
        $this->mod_epay = &m('epay');
        $this->mod_epaylog = &m('epaylog');
        $this->mod_member = &m('member');
//        $this->mod_msg = &m('msg');
//        $this->mod_msglog = &m('msglog');
//        $this->_uploadedfile_mod = &m('uploadedfile');
//        $this->_order_xianxia_image_mod = &m('order_xianxia_image');
    }

    function index()
    {
        $store_id = intval($this->visitor->get('manage_store'));
        $store_mod = &m('store');
        $store = $store_mod->get_info($store_id);

        $user_id = $this->visitor->get('user_id');
        $model_user = &m('member');
        $member = $model_user->get_info(intval($user_id));
        
        if (!IS_POST){

            $this->assign('store',$store);
            $this->assign('member',$member);
            $this->display('paycenter/lineorder.html');
            return;
            
        }
        else{
            //必须上传交易凭证
            if (empty($_POST['line_image'])){
                $this->show_warning("不要非法提交:请先上传交易凭证");
                return;
            }

            //表单不能为空
            if (empty($_POST['goods_name']) or empty($_POST['seller_username']) or empty($_POST['seller_phone'])
            or empty($_POST['buyer_name']) or empty($_POST['money'])){
                $this->show_warning("请不要非法提交:表单不能含空值");
                return;
            }
            if (!is_numeric($_POST['money'])){
                $this->show_warning("请不要非法提交:订单金额非法");
                return;
            }

            //检查买家是否存在
            $buyer_name = $_POST['buyer_name'];
            $buyer_member = $this->mod_member->get('user_name='.$buyer_name);
            if (!$buyer_member){
                $this->show_warning("请不要非法提交:用户{$buyer_name}不存在,请让买家先注册账户");
                return;
            }

            //资金不能为负数
            $money = $_POST['money'];
            if (!is_numeric($money) || $money<=0 ){
                $this->show_warning('请不要非法提交:金额异常,您当前提交的订单总金额为'.$money);
                return;
            }


            //卖家的佣金是否充足
            $model_setting = &af('settings');
            $setting = $model_setting->getAll(); //载入系统设置数据
            $yongjin = $money * $setting['epay_trade_charges_ratio'];
            $seller_eapy = $this->mod_epay->get("user_name={$member['user_name']}");
            if ($yongjin>$seller_eapy['money'])
            {
                $this->show_warning("您的账户余额不足,当前的账户余额:{$seller_eapy['money']},需要佣金:{$yongjin},请先充值再做单",'立即充值','index.php?app=epay&act=czlist');
                return;
            }


            //买家不能与卖家相同
            if ($member['user_name'] == $_POST['seller_username']){
                $this->show_warning('请不要非法提交:亲!您会卖东西给自己吗?(*^__^*)');
                return;
            }


            $lineorder = array(
                'buyer_name'=>$buyer_member['user_name'],
                'buyer_mobile'=>$_POST['phone_mob'],
                'goods_name'=>$_POST['goods_name'],
                'money'=>$money,
                'seller_storename'=>$_POST['sller_username'],
                'seller_mobile'=>$_POST['seller_phone'],
            );
            var_dump($_POST);
            return;
            //获取订单信息
            //POST校验

            echo "提交做单";
        }
    }

    //线下做单记录表
    function log(){

    }
    //图片上传
    function uploader(){
        $file = $_FILES['file'];
        if ($file['error'] == UPLOAD_ERR_NO_FILE) { // 没有文件被上传
            die('{"jsonrpc" : "2.0", "error" : {"code": 100, "message": "文件没有上传"}, "id" : "id"}');
        }
        import('uploader.lib');             //导入上传类
        $uploader = new Uploader();
        $uploader->allowed_type(IMAGE_FILE_TYPE); //限制文件类型
        $uploader->addFile($file); //上传logo
        if (!$uploader->file_info()) {
            $this->show_warning($uploader->get_error());
            return false;
        }
        /* 指定保存位置的根目录 */
        $uploader->root_dir(ROOT_PATH);

        /* 上传 */
        if ($file_path = $uploader->save('data/files/offline', $uploader->random_filename())) {   //保存到指定目录，并以指定文件名$ad_id存储
            header('Content-type:text/json');
            $jsondata = '{"jsonrpc" : "2.0", "result" : "'.$file_path.'", "id" : "id"}';
            echo $jsondata;
        } else {
            die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "图片上传失败"}, "id" : "id"}');
        }
    }
}