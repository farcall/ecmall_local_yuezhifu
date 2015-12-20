<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/12/16
 * Time: 3:27
 */

class Channel_bendichanpinAPP extends MallbaseApp{
    var $mod_bendichanpin_store;
    function __construct() {
        $this->Channel_bendichanpinAPP();
    }

    function Channel_bendichanpinAPP(){
        parent::__construct();
        $this->mod_bendichanpin_store = &m('bendichanpin_store');
    }

    function index(){

        $conditions = ' and state=1';


        $this->assign('index', 1); // 标识当前页面是首页，用于设置导航状态
        $page = $this->_get_page(10);   //获取分页信息
        $stores=$this->mod_bendichanpin_store->find(array(
            'conditions' => '1=1' . $conditions,
            'limit'         => $page['limit'],
            'order' => "recommended desc, sort asc,edit_time desc",
            'count'         => true
        ));

        $page['item_count']=$this->mod_bendichanpin_store->getCount();   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条
        $this->assign('store_list',$stores);

        $this->import_resource(array('style' =>array(array('path'=>'res:css/bendichanpin.css'))));



        $this->_config_seo(array(
            'title' =>Conf::get('site_title'),
        ));
        $this->assign('page_description', Conf::get('site_description'));
        $this->assign('page_keywords', Conf::get('site_keywords'));
        $this->display('channel_bendichanpin.index.html');
    }
}