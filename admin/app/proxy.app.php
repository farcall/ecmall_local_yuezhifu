<?php
/**
 * 地区代理
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2016/4/30
 * Time: 20:44
 */

class ProxyApp extends BackendApp{
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
        if(IS_POST){
            $area = $_POST['area'];

            $region = $this->_region_mod->get(array(
                  'conditions' => "region_name = '$area'",
            ));
            if(empty($region)){
                $this->show_warning('对不起，您查询的地区不在代理库中！');
                return;
            }

            $stores = $this->_store_mod->find(array(
                  'conditions' => 'region_id = '.$region['region_id'],
            ));

            $total_amount = 0;
            foreach( $stores as $store){

              $total_amount +=  $this->getStoreAmount($store['store_id']);
            }

            $this->assign('total_amount',$total_amount);
            $this->assign('yongjin',$total_amount/10);
            $this->assign('dailifei',$total_amount/100);
            $this->assign('count',count($stores));
            $this->assign('area',$area);
            $this->display('fanli/proxy.html');
            return;
        }

        $this->display('fanli/proxy.html');
    }


    /**
     * @param $store_id
     * 作用:获得指定店铺的销售额
     * Created by QQ:710932
     */
    function getStoreAmount($store_id){
        //order_amount
       // select sum(order_amount) from ecm_order where seller_id = 2 and status=40
        return $this->_order_mod->getOne('select sum(order_amount) from '.DB_PREFIX.'order where seller_id = '.$store_id.' and status='.ORDER_FINISHED);
    }
}