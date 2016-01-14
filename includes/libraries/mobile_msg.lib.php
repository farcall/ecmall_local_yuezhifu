<?php

class Mobile_msg {

    var $_msg_mod;
    var $_msglog_mod;

    function __construct() {
        $this->_msg_mod = &m('msg');
        $this->_msglog_mod = & m('msglog');

        define('SMS_UID', Conf::get('msg_pid'));
        define('SMS_KEY', Conf::get('msg_key'));

        //判断是否开启短信
        if (!Conf::get('msg_enabled')) {
            return FALSE;
        }
    }

    /**
     * 关于订单的短信发送,此发送需要扣除卖家的短信条数
     */
    function send_msg_order($order_info, $type) {
        $mod_member = &m('member');
        $seller_info = $mod_member->get_info($order_info['seller_id']);

        $user_id = $order_info['seller_id'];
        $user_name = $order_info['seller_name'];

        if ($type == 'buy') {
            //买家下单向卖家发送短信提示
            $to_mobile = $seller_info['phone_mob'];
          //  $smsText = "买家:" . $order_info['buyer_name'] . "在您店铺拍下一单产品，请及时发货。订单号为：" . $order_info['order_sn'] . "，请及时处理！"; //内容
            $smsText = "您好，您有一单新交易！买家：【 .".$order_info['buyer_name']."】，请及时登录商城后台处理。";
        }
        else
        {
            return FALSE;
        }

        $result = $this->send_msg($user_id, $user_name, $to_mobile, $smsText);
        return $result;
    }


    /**
     * 卖家后台 发送短信
     */
    function send_msg_seller($user_id, $user_name, $to_mobile, $smsText) {
        $msg = $this->_msg_mod->get("user_id=" . $user_id);
        /**
         * 检测是否有权限
         */
        if (!$this->check_functions($msg, $type)) {
            return FALSE;
        }
        
        $result = $this->send_msg($user_id, $user_name, $to_mobile, $smsText);
        return $result;
    }

    /**
     * @param $type发送类型
     * @param $to_mobile接收方手机
     * @param $smsText发送内容
     *
     * @return bool 失败:0,成功:发送条数
     * 作用:系统给会员发送系统信息
     * Created by QQ:710932
     */
    function send_msg_self($type,$to_mobile,$smsText){

        //txsuccess kdsuccess refund
        if($type == 'kdsuccess'){
            $smsText = '恭喜您申请的店铺已经审核通过，请及时上传产品，并完善您的店铺信息。祝商祺！客服电话：400-1820-600 www.zhying.com';
        }

        if($this->isMobile($to_mobile)){
            $result = $this->send_msg(0, 'admin', $to_mobile, $smsText);
        }else{
            $result = 0;
        }

        return $result;
    }
    /**
     * 系统发送短信，包含 注册   修改手机号  等信息
     */
    function send_msg_system($type, $to_mobile) {
        $mcode = $this->make_code();
        if ($type == 'register') {
            //注册发送短信的内容
            $smsText = "您申请注册验证码为：【".$mcode."】，请在注册页面中输入并完成验证。如非本人操作，请忽略。";
        } else if ($type == 'change') {
            //修改发送的短信内容
            $smsText = "您现在正在修改支付密码，验证码为：【".$mcode."】 为了您的账户安全，请勿泄露于他人。";
        } else if ($type == 'find') {
            //找回密码发送的短信内容
            $smsText = "您现在正在申请找回密码，验证码为：【" . $mcode . "】 为了您的账户安全，请勿泄露于他人";
        }else if($type == 'tixian'){
            //提现申请验证短信
            $smsText = "您正在申请提现验证码为：【".$mcode."】，为了保障您的资产安全，切勿泄露于他人。";
        }
        //存入session 做认证
        unset($_SESSION['MobileConfirmCode']);
        $_SESSION['MobileConfirmCode'] = $mcode;
        $result = $this->send_msg(0, 'admin', $to_mobile, $smsText);
        return $result;
    }
    /**
     * 生成随机码 用于注册 以及修改
     */
    function make_code() {
        $chars = '0123456789';
        $code = '';
        for ($i = 0; $i < 6; $i++) {
            $code .= $chars[mt_rand(0, strlen($chars) - 1)];
        }
        return $code;
    }

    /**
     * 验证手机号是否正确
     * @author 范鸿飞
     * @param INT $mobile
     */
    function isMobile($mobile) {
        if (!is_numeric($mobile)) {
            return false;
        }
        return preg_match('#^13[\d]{9}$|^14[5,7]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0,6,7,8]{1}\d{8}$|^18[\d]{9}$#', $mobile) ? true : false;
    }

    /**
     * 
     * @param type $user_id   记录ID   为0 表示为系统发送消息
     * @param type $user_name  用户名
     * @param type $to_mobile  地址
     * @param type $content  内容
     * @return boolean
     */
    function send_msg($user_id, $user_name, $to_mobile, $smsText) {
        //发送短信
//        $url = 'http://utf8.sms.webchinese.cn/?Uid=' . SMS_UID . '&Key=' . SMS_KEY . '&smsMob=' . $to_mobile . '&smsText=' . $smsText;
       // $url = 'http://120.26.69.248/msg/HttpSendSM?account='.SMS_UID.'&pswd='.SMS_KEY.'&mobile='.$to_mobile.'&msg='.$smsText;
       // $url = 'http://120.26.69.248/msg/HttpSendSM?account=001122&pswd=Sd123456&mobile=18705397012&msg=中文输入法，临沂盒子信息科技有限公司';
        $url = 'http://120.26.69.248/msg/HttpSendSM?account='.SMS_UID.'&pswd='.SMS_KEY.'&mobile='.$to_mobile.'&msg='.urlencode($smsText).'';
        $res = $this->Sms_Get($url);

        $add_msglog = array(
            'user_id' => $user_id,
            'user_name' => $user_name,
            'to_mobile' => $to_mobile,
            'content' => $smsText,
            'state' => $res,
            'time' => gmtime(),
        );
        
        $this->_msglog_mod->add($add_msglog);

        if ($res > 0) {
            // user_id = 0 user_name = admin  表示为系统发送,短信的条数不做操作
            if ($user_id != 0) {
          //      $this->_msg_mod->edit('user_id=' . $user_id, 'num=num-1');
            }
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**
     *    中国网建接口
     *
     *    @author    andcpp
     *    @return    array
     */
    function Sms_Get($url) {
        if (function_exists('file_get_contents')) {
            $file_contents = file_get_contents($url);
        } else {
            $ch = curl_init();
            $timeout = 5;
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
            $file_contents = curl_exec($ch);
            curl_close($ch);
        }
        return $file_contents;
    }

    /**
     * 检测是否具有发送短信条件
     * 
     */
    function check_functions($msg, $type = '') {
        $functions = $this->get_functions();
        $tmp = explode(',', $msg['functions']);
        if ($functions) {
            foreach ($functions as $func) {
                $checked_functions[$func] = in_array($func, $tmp);
            }
        }
        
        //卖家未开启支付
        if ($msg['state'] == 0) {
            return FALSE;
        }
        if($type) {
            //卖家未开启 确认收货发送短信
            if (!$checked_functions[$type]) {
                return FALSE;
            }
        }
        
        //卖家可用短信数 不够
        if ($msg['num'] <= 0) {
            return FALSE;
        }
        return TRUE;
    }

    /**
     *    获取可用功能列表
     *
     *    @author    andcpp
     *    @return    array
     */
    function get_functions() {
        $arr = array();
        $arr[] = 'buy'; //来自买家下单通知
        $arr[] = 'send'; //卖家发货通知买家
        $arr[] = 'check'; //来自买家确认通知
        return $arr;
    }

}
