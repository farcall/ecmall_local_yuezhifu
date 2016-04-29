<?php

/**
 *    合作伙伴控制器
 *
 *    @author    Garbin
 *    @usage    none
 */
class OrderApp extends BackendApp
{
    /**
     *    管理
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function index()
    {
        $search_options = array(
            'seller_name'   => Lang::get('store_name'),
            'buyer_name'   => Lang::get('buyer_name'),
            'payment_name'   => Lang::get('payment_name'),
            'order_sn'   => Lang::get('order_sn'),
        );
        /* 默认搜索的字段是店铺名 */
        $field = 'seller_name';
        array_key_exists($_GET['field'], $search_options) && $field = $_GET['field'];
        $conditions = $this->_get_query_conditions(array(array(
                'field' => $field,       //按用户名,店铺名,支付方式名称进行搜索
                'equal' => 'LIKE',
                'name'  => 'search_name',
            ),array(
                'field' => 'status',
                'equal' => '=',
                'type'  => 'numeric',
            ),array(
                'field' => 'add_time',
                'name'  => 'add_time_from',
                'equal' => '>=',
                'handler'=> 'gmstr2time',
            ),array(
                'field' => 'add_time',
                'name'  => 'add_time_to',
                'equal' => '<=',
                'handler'   => 'gmstr2time_end',
            ),array(
                'field' => 'order_amount',
                'name'  => 'order_amount_from',
                'equal' => '>=',
                'type'  => 'numeric',
            ),array(
                'field' => 'order_amount',
                'name'  => 'order_amount_to',
                'equal' => '<=',
                'type'  => 'numeric',
            ),
        ));
        $model_order =& m('order');
        $page   =   $this->_get_page(10);    //获取分页信息
        //更新排序
        if (isset($_GET['sort']) && isset($_GET['order']))
        {
            $sort  = strtolower(trim($_GET['sort']));
            $order = strtolower(trim($_GET['order']));
            if (!in_array($order,array('asc','desc')))
            {
             $sort  = 'add_time';
             $order = 'desc';
            }
        }
        else
        {
            $sort  = 'add_time';
            $order = 'desc';
        }
        $orders = $model_order->find(array(
            'conditions'    => '1=1 ' . $conditions,
            'limit'         => $page['limit'],  //获取当前页的数据
            'order'         => "$sort $order",
            'count'         => true             //允许统计
        )); //找出所有商城的合作伙伴
        $page['item_count'] = $model_order->getCount();   //获取统计的数据
        $this->_format_page($page);
        $this->assign('filtered', $conditions? 1 : 0); //是否有查询条件
        $this->assign('order_status_list', array(
            ORDER_PENDING => Lang::get('order_pending'),
            ORDER_SUBMITTED => Lang::get('order_submitted'),
            ORDER_ACCEPTED => Lang::get('order_accepted'),
            ORDER_SHIPPED => Lang::get('order_shipped'),
            ORDER_FINISHED => Lang::get('order_finished'),
            ORDER_CANCELED => Lang::get('order_canceled'),
            ORDER_SHENHE_ING=>'线下做单等待审核',
        ));
        $this->assign('search_options', $search_options);
        $this->assign('page_info', $page);          //将分页信息传递给视图，用于形成分页条
        $this->assign('orders', $orders);

        $this->import_resource(array('script' => 'inline_edit.js,jquery.ui/jquery.ui.js,jquery.ui/i18n/' . i18n_code() . '.js,http://cdn.bootcss.com/jquery/1.8.0/jquery.min.js,layer/layer.js',
                                      'style'=> 'jquery.ui/themes/ui-lightness/jquery.ui.css'));

        $this->display('order.index.html');
    }

    /**
     * 作用:线下做单 管理员审核通过
     * Created by QQ:710932
     */
    function tongguo(){
        $order_id = $_GET['id'];
        $log = $_GET['log'];
        //todo log安全性

        if(empty($order_id) or !is_numeric($order_id)){
            $this->show_warning('非法提交');
            return;
        }

        /*订单finished_time和status修改修改*/
        $order_mod = &m('order');
        $order_result = $order_mod->edit($order_id,array(
            'finished_time'=>gmtime(),
            'postscript'=>$log,
            'status'=>ORDER_FINISHED,
        ));
        if($order_result == false){
            $this->show_warning('操作失败');
            return;
        }


        /*线下订单order_xianxia修改*/
        $order_xianxia_mod = &m('order_xianxia');


        $order_xianxia = $order_xianxia_mod->get(array(
            'order_id='.$order_id,
        ));

        //如果订单已审核 请不要重复审核
        if(($order_xianxia['status'] == ORDER_SHENHE_CANCELED) or ($order_xianxia['status'] == ORDER_SHENHE_CANCELED)){
            $this->show_warning("订单已审核，请不要重复审核");
            return;
        }

        $order_xianxia_result = $order_xianxia_mod->edit('order_id='.$order_id,array(
            'admin'=>$this->visitor->_get_detail('user_name'),
            'shenhe_time'=>gmtime(),
            'status'=>ORDER_SHENHE_FINISHED,
        ));

        $order_xianxia_data = $order_xianxia_mod->get(array(
            'conditions' => 'order_id='.$order_id,
        ));

        /*卖家佣金从冻结资金中扣除*/
        $epay_mod = &m('epay');
        $epay_data = $epay_mod->get(array(
            'conditions'=>'user_id='.$order_xianxia_data['seller_userid'],
        ));

        $money_dj = $epay_data['money_dj']-$order_xianxia_data['yongjin'];
        $epay_mod->edit('user_id='.$order_xianxia_data['seller_userid'],array(
            'money_dj'=>$money_dj,
        ));


        /*用户确认收货后 奖励金豆*/
        $order_info = $order_mod->get($order_id);
        import('fanli.lib');
        $fanli=new fanli();
        $fanli->RewardJindou($order_info);


        /*资金变动日志*/
        $epaylog_mod = &m('epaylog');
        $epaylog_mod->add(array(
            'user_id'=>$order_xianxia_data['seller_userid'],
            'user_name'=>$order_xianxia_data['seller_username'],
            'order_id'=>$order_xianxia_data['order_id'],
            'order_sn'=>$order_xianxia_data['order_sn'],
            'type'=>EPAY_TRADE_CHARGES,
            'states'=>EPAY_TRADE_CHARGES,
            'money'=>$order_xianxia_data['yongjin'],
            'money_flow'=>'outlay',
            'complete'=>1,
            'log_text'=>'扣除线下交易佣金:买家('.$order_xianxia_data['buyer_name'].'),价格('.$order_xianxia_data['money'].')',
            'add_time'=>gmtime(),
        ));

        $this->show_message('操作成功!','返回列表','index.php?app=order&act=index&field=seller_name&search_name=&status=31');
    }

    /**
     * 作用:线下做单 管理员拒绝
     * Created by QQ:710932
     */
    function jujue(){
        $log = $_GET['log'];
        $order_id = $_GET['id'];
        //todo log安全性

        if(empty($order_id) or !is_numeric($order_id)){
            $this->show_warning('非法提交');
            return;
        }

        /*订单finished_time和status修改修改*/
        $order_mod = &m('order');
        $order_result = $order_mod->edit($order_id,array(
            'finished_time'=>gmtime(),
            'postscript'=>$log,
            'status'=>ORDER_SHENHE_CANCELED,
        ));
        if($order_result == false){
            $this->show_warning('操作失败');
            return;
        }


        /*线下订单order_xianxia修改*/
        $order_xianxia_mod = &m('order_xianxia');

        $order_xianxia = $order_xianxia_mod->get(array(
            'order_id='.$order_id,
        ));


        //如果订单已审核 请不要重复审核
        if(($order_xianxia['status'] == ORDER_SHENHE_CANCELED) or ($order_xianxia['status'] == ORDER_SHENHE_CANCELED)){
            $this->show_warning("订单已审核，请不要重复审核");
            return;
        }


        $order_xianxia_result = $order_xianxia_mod->edit('order_id='.$order_id,array(
            'admin'=>$this->visitor->_get_detail('user_name'),
            'shenhe_time'=>gmtime(),
            'status'=>ORDER_SHENHE_CANCELED,
        ));

        $order_xianxia_data = $order_xianxia_mod->get(array(
            'conditions' => 'order_id='.$order_id,
        ));

        /*卖家佣金从冻结资金中转到可用资金用*/
        $epay_mod = &m('epay');
        $epay_data = $epay_mod->get(array(
            'conditions'=>'user_id='.$order_xianxia_data['seller_userid'],
        ));

        $money_dj = $epay_data['money_dj']-$order_xianxia_data['yongjin'];
        $money = $epay_data['money']+$order_xianxia_data['yongjin'];
        $epay_mod->edit('user_id='.$order_xianxia_data['seller_userid'],array(
            'money_dj'=>$money_dj,
            'money'=>$money,
        ));

        //todo epay_log


        $this->show_message('操作成功!','返回列表','index.php?app=order');    }
/**
     * 订单导出
     */
    function export()
    {
        $search_options = array(
            'seller_name'   => Lang::get('store_name'),
            'buyer_name'   => Lang::get('buyer_name'),
            'payment_name'   => Lang::get('payment_name'),
            'order_sn'   => Lang::get('order_sn'),
        );
        /* 默认搜索的字段是店铺名 */
        $field = 'seller_name';
        array_key_exists($_GET['field'], $search_options) && $field = $_GET['field'];
        $conditions = $this->_get_query_conditions(array(array(
                'field' => $field,       //按用户名,店铺名,支付方式名称进行搜索
                'equal' => 'LIKE',
                'name'  => 'search_name',
            ),array(
                'field' => 'status',
                'equal' => '=',
                'type'  => 'numeric',
            ),array(
                'field' => 'add_time',
                'name'  => 'add_time_from',
                'equal' => '>=',
                'handler'=> 'gmstr2time',
            ),array(
                'field' => 'add_time',
                'name'  => 'add_time_to',
                'equal' => '<=',
                'handler'   => 'gmstr2time_end',
            ),array(
                'field' => 'order_amount',
                'name'  => 'order_amount_from',
                'equal' => '>=',
                'type'  => 'numeric',
            ),array(
                'field' => 'order_amount',
                'name'  => 'order_amount_to',
                'equal' => '<=',
                'type'  => 'numeric',
            ),
        ));
        
        $model_order =& m('order');
        $page   =   $this->_get_page(10);    //获取分页信息
        //更新排序
        if (isset($_GET['sort']) && isset($_GET['order']))
        {
            $sort  = strtolower(trim($_GET['sort']));
            $order = strtolower(trim($_GET['order']));
            if (!in_array($order,array('asc','desc')))
            {
             $sort  = 'add_time';
             $order = 'desc';
            }
        }
        else
        {
            $sort  = 'add_time';
            $order = 'desc';
        }
        $orders = $model_order->find(array(
            'conditions'    => '1=1 ' . $conditions,
            'order'         => "$sort $order",
            'join'=>'has_orderextm',
        )); //找出所有商城的合作伙伴
        
        
        
        import('excelwriter.lib');
        $excel = new ExcelWriter('utf8', 'toexcel');
        if (!$orders) {
            $this->show_warning('无数据');
            return;
        }

        $cols = array();
        $cols_item = array();
        $cols_item[] = '订单编号';
        $cols_item[] = '店铺名称';
        $cols_item[] = '消费者名称';
        $cols_item[] = '消费者邮箱';
        $cols_item[] = '订单状态';
        $cols_item[] = '下单时间';
        $cols_item[] = '支付方式';
        $cols_item[] = '付款时间';
        $cols_item[] = '发货时间';
        $cols_item[] = '快递单号';
        $cols_item[] = '完成时间';
        $cols_item[] = '商品总价';
        $cols_item[] = '折扣';
        $cols_item[] = '订单总价';
        $cols_item[] = '付款留言';
        $cols_item[] = '收货地区';
        $cols_item[] = '收货地址';
        $cols_item[] = '邮编';
        $cols_item[] = '电话';
        $cols_item[] = '手机';
        $cols_item[] = '快递方式';
        $cols_item[] = '快递费用';

        $cols[] = $cols_item;

        if (is_array($orders) && count($orders) > 0) {
            foreach ($orders as $k => $v) {

                $tmp_col = array();
                $tmp_col[] = $v['order_sn'];
                $tmp_col[] = $v['seller_name'];
                $tmp_col[] = $v['buyer_name'];
                $tmp_col[] = $v['buyer_email'];
                $tmp_col[] = $this->get_status($v['status']);
                $tmp_col[] = local_date('Y-m-d H:i:s', $v['add_time']);
                $tmp_col[] = $v['payment_name'];
                $tmp_col[] = local_date('Y-m-d H:i:s', $v['pay_time']);
                $tmp_col[] = local_date('Y-m-d H:i:s', $v['ship_time']);
                $tmp_col[] = $v['invoice_no'];
                $tmp_col[] = local_date('Y-m-d H:i:s', $v['finished_time']);
                $tmp_col[] = $v['goods_amount'];
                $tmp_col[] = $v['discount'];
                $tmp_col[] = $v['order_amount'];
                $tmp_col[] = $v['postscript'];
                $tmp_col[] = $v['region_name'];
                $tmp_col[] = $v['address'];
                $tmp_col[] = $v['zipcode'];
                $tmp_col[] = $v['phone_tel'];
                $tmp_col[] = $v['phone_mob'];
                $tmp_col[] = $v['shipping_name'];
                $tmp_col[] = $v['shipping_fee'];
                $cols[] = $tmp_col;
            }
        }
        $excel->add_array($cols);
        $excel->output();
        
    }
    
    function get_status($status) {
        switch ($status) {
            case 0:
                $msg = '已取消';
                break;
            case 10:
                $msg = '发货中';
                break;
            case 11:
                $msg = '待付款';
                break;
            case 20:
                $msg = '待发货';
                break;
            case 30:
                $msg = '已发货';
                break;
            case 40:
                $msg = '交易成功';
                break;
            default:
                break;
        }
        return $msg;
    }

    /**
     *    查看
     *
     *    @author    Garbin
     *    @param    none
     *    @return    void
     */
    function view()
    {
        $order_id = isset($_GET['id']) ? intval($_GET['id']) : 0;
        if (!$order_id)
        {
            $this->show_warning('no_such_order');

            return;
        }

        /* 获取订单信息 */
        $model_order =& m('order');
        $order_info = $model_order->get(array(
            'conditions'    => $order_id,
            'join'          => 'has_orderextm',
            'include'       => array(
                'has_ordergoods',   //取出订单商品
            ),
        ));

        if (!$order_info)
        {
            $this->show_warning('no_such_order');
            return;
        }
        $order_type =& ot($order_info['extension']);
        $order_detail = $order_type->get_order_detail($order_id, $order_info);
        $order_info['group_id'] = 0;
        if ($order_info['extension'] == 'groupbuy')
        {
            $groupbuy_mod =& m('groupbuy');
            $groupbuy = $groupbuy_mod->get(array(
                'fields' => 'groupbuy.group_id',
                'join' => 'be_join',
                'conditions' => "order_id = {$order_info['order_id']} ",
                )
            );
            $order_info['group_id'] = $groupbuy['group_id'];
        }
        foreach ($order_detail['data']['goods_list'] as $key => $goods)
        {
            if (substr($goods['goods_image'], 0, 7) != 'http://')
            {
                $order_detail['data']['goods_list'][$key]['goods_image'] = SITE_URL . '/' . $goods['goods_image'];
            }
        }
        $this->assign('order', $order_info);
        $this->assign($order_detail['data']);

        if($_GET['xx'] == 1){
            $mod_order_image = &m('order_xianxia_image');
            $order_image_data = $mod_order_image->find(array(
                'conditions' => 'order_id='.$order_id,
                'fields'     => 'image_url,thumbnail',
            ));

            $this->assign('order_image',$order_image_data);
            $this->display('orderxx.view.html');
        }
        else{
            $this->display('order.view.html');
        }

    }
}
?>
