<?php
/**
 * 地区代理
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2016/4/30
 * Time: 20:44
 */

class DefaultApp extends BackendApp{
    var $_region_mod;
    var $_store_mod;
    var $_order_mod;
    function __construct() {
        $this->ProxyApp();
        $this->_region_mod = &m('region');
        $this->_store_mod = &m('store');
        $this->_order_mod = &m('order');
    }

    function ProxyApp() {
        parent::BackendApp();
    }

    function index(){
            $visitor_info =  $this->visitor->info;
            $area = $visitor_info['region_name'];
            $region = $this->_region_mod->get(array(
                  'conditions' => "region_name = '$area'",
            ));
            if(empty($region)){
                $this->show_warning('对不起，您查询的地区不在代理库中！');
                return;
            }

            $parent_id =  $region['region_id'];
            $region_childs = $this->_region_mod->getAll("select * from ecm_region where parent_id=$parent_id");
            $regions[] = $region;
            $regions = array_merge($regions,$region_childs);

            $total_amount = 0;
            $allstorecount = 0;
            $all_stores = array();

            foreach($regions as $key => $region){
                $stores = $this->_store_mod->find(array(
                    'conditions' => 'region_id = '.$region['region_id'],
                ));
                $region_amount = 0;

                foreach( $stores as $k =>$store){
                    $storeAmounts = $this->_getStoreAmount($store['store_id']);
                    $region_amount += $storeAmounts;
                    $total_amount  += $storeAmounts;
                }

                $regions[$key]['amount'] = $region_amount;
                $regions[$key]['count'] = sizeof($stores);
                $allstorecount += $regions[$key]['count'];
            }



            $this->assign('regions',$regions);
            $this->assign('total_amount',$total_amount);
            $this->assign('yongjin',$total_amount/10);
            $this->assign('dailifei',$total_amount/100);
            $this->assign('count',$allstorecount);
            $this->assign('area',$area);
            $this->display('proxy.html');
            return;
    }

    /**
     * 作用:查看店铺下的所有订单
     * Created by QQ:710932
     */
    function store(){
        $store_id = $_GET['id'];
        if(!is_numeric($store_id)){
            $this->show_warning('请不要非法提交');
            return;
        }

        //todo 权限控制

        $page = $this->_get_page(20);


        $count = $this->_order_mod->getOne('select count(*)  from '.DB_PREFIX.'order where seller_id = '.$store_id.' and status='.ORDER_FINISHED);

        $orders = $this->_order_mod->find(array(
            'limit'=>$page['limit'],
            'conditions'=>'seller_id = '.$store_id .' and status='.ORDER_FINISHED,
            'count' => true,
        ));



        $page['item_count'] = $count;   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条



        $this->assign('orders',$orders);
        $this->display('proxy_store.html');
    }


    /**
     * 通过地区ID查看当地所有店铺的业绩
     * Created by QQ:710932
     */
    function region(){
        //地区ID
        $region_id = $_GET['id'];
        if(!is_numeric($region_id)){
            $this->show_warning('请不要非法提交');
            return;
        }

        //todo 权限控制


        $region = $this->_region_mod->get($region_id);
        if(empty($region)){
            $this->show_warning('对不起，您查询的地区不在代理库中！');
            return;
        }

        $stores = $this->_store_mod->find(array(
            'conditions' => 'region_id = '.$region['region_id'],
        ));

        foreach( $stores as $k =>$store){
            $storeAmounts = $this->_getStoreAmount($store['store_id']);
            $stores[$k]['amount'] = $storeAmounts;
            $stores[$k]['region_name'] = $region['region_name'];
        }


        $this->assign('stores',$stores);
        $this->display('proxy_region.html');
    }



    /**
     * @param $store_id
     * 作用:获得指定店铺的销售额
     * Created by QQ:710932
     */
    function _getStoreAmount($store_id){
        //order_amount
       // select sum(order_amount) from ecm_order where seller_id = 2 and status=40
        return $this->_order_mod->getOne('select sum(order_amount) from '.DB_PREFIX.'order where seller_id = '.$store_id.' and status='.ORDER_FINISHED);
    }
}