<?php

/**
 *    线下做单的订单类型
 *
 *    @author    Garbin
 *    @usage    none
 */
class XianxiaOrder extends BaseOrder {

    var $_name = 'xianxia';
    var $_payment_name = '线下支付';
    var $_payment_code = 'xxzf';


    /**
     *    查看订单
     *
     *    @author    Garbin
     *    @param     int $order_id
     *    @param     array $order_info
     *    @return    array
     */
    function get_order_detail($order_id, $order_info) {
        if (!$order_id) {
            return array();
        }

        /* 获取商品列表 */
        $data['goods_list'] = $this->_get_goods_list($order_id);

        /* 配关信息 */
        $data['order_extm'] = $this->_get_order_extm($order_id);

        /* 支付方式信息 */
        if ($order_info['payment_id']) {
            $payment_model = & m('payment');
            $payment_info = $payment_model->get("payment_id={$order_info['payment_id']}");
            $data['payment_info'] = $payment_info;
        }

        /* 订单操作日志 */
        $data['order_logs'] = $this->_get_order_logs($order_id);

        return array('data' => $data);
    }


    function _handle_order_info($data){
        /* 默认是交易完成 */
        $order_status = ORDER_SHENHE_ING;
        extract($data);

        /*留言*/
        $postscript = '购买者电话:'.$buyer_mobile.'商品名称:'.$goods_name.'经手人电话:'.$seller_mobile;

        /* 返回基本信息 */
        $now = gmtime();
        return array(
            'order_sn' => $this->_gen_order_sn(),
            'type' => 'xianxia',
            'extension' => 'xianxia',
            'seller_id' => $seller_userid,
            'seller_name' => $seller_username,
            'buyer_id' => $buyer_id,
            'buyer_name' => $buyer_name,
            'status' => $order_status,
            'add_time' => $now,
            'postscript'=>$postscript,
            'payment_name'=>$this->_payment_name,
            'payment_code'=>$this->_payment_code,
            'pay_time'=>$now,
            'evaluation_status'=>1,
            'finished_time'=>$now,
            'goods_amount'=>$money,
            'order_amount'=>$money,
            'evaluation_time'=>$now,
        );
    }
    /**
     *    提交生成订单，外部告诉我要下的单的商品类型及用户填写的表单数据以及商品数据，我生成好订单后返回订单ID
     *
     *    @author    Garbin
     *    @param     array $data
     *    @return    int
     */
    function submit_order($data) {
        /* 释放goods_info和post两个变量 */
        extract($data);
        /* 处理订单基本信息 */
        $base_info = $this->_handle_order_info($data);

        if (!$base_info) {
            /* 基本信息验证不通过 */

            return 0;
        }

        /*插入订单信息*/
        $order_model = & m('order');
        $order_id = $order_model->add($base_info);

        if (!$order_id) {
            /* 插入基本信息失败 */
            $this->_error('create_order_failed');

            return 0;
        }


        /* 插入商品信息 */
        $goods_item =  array(
                'order_id' => $order_id,
                'goods_name' => $goods_name,
                'price' => $money,
                'specification'=>'',
                'goods_image' =>$pingzheng,
            );


        $order_goods_model = & m('ordergoods');
        $goods_id = $order_goods_model->add($goods_item);

        /*插入线下订单表*/
        $order_xianxia_mod = &m('order_xianxia');
        $data['order_sn'] = $order_id;
        $data['goods_id'] = $goods_id;
        $xxid = $order_xianxia_mod->add($data);
        if(empty($xxid)){
            $this->_error('create_order_failed');
            $order_model->del($order_id);
            return 0;
        }

        /* 插入收货人信息 */
        $consignee_info = array(
            'order_id'=>$order_id,
            'consignee'=>$buyer_name,
            'region_id'=>0,
            'region_name'=>'同城',
            'address'=>'到本店消费',
            'phone_tel'=>$buyer_mobile,
            'phone_mob' =>$buyer_mobile,
            'shipping_id'=>3,
            'shipping_name'=>'本店消费',
        );
        $consignee_info['order_id'] = $order_id;
        $order_extm_model = & m('orderextm');
        $order_extm_model->add($consignee_info);


        /*修改卖家金额 冻结佣金*/
        $epay_mod = &m('epay');
        $epay_data = $epay_mod->get(array(
            'conditions'=>'user_id='.$seller_userid,
        ));
        $epay_data['money_dj'] = $epay_data['money_dj']+$yongjin;
        $epay_data['money'] = $epay_data['money']-$yongjin;
        $epay_mod->edit('user_id='.$seller_userid,$epay_data);

        return $xxid;
    }

}

?>