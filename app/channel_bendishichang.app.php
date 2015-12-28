<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/12/16
 * Time: 3:27
 */

class Channel_bendishichangAPP extends MallbaseApp{
    var $mod_bendishichang_store;
    var $mod_bendishichang;
    function __construct() {
        $this->Channel_bendishichangAPP();
    }

    function Channel_bendishichangAPP(){
        parent::__construct();
        $this->mod_bendishichang_store = &m('bendishichang_store');
        $this->mod_bendishichang= &m('bendishichang');
    }

    function index(){

        $conditions = ' and state=1';


        $page = $this->_get_page(7);   //获取分页信息
        $shichangs=$this->mod_bendishichang->find(array(
            'conditions' => '1=1' . $conditions,
            'limit'         => $page['limit'],
            'order' => "recommended desc, sort asc,edit_time desc",
            'count'         => true
        ));

        $page['item_count']=$this->mod_bendishichang->getCount();   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条


        foreach ($shichangs as $k => $shichang) {
            $shichang_id = $shichang['id'];

            //首页显示14个商铺信息
            $stores = $this->mod_bendishichang_store->find(array(
                'conditions' => '1=1 and state=1 and shichang_id='.$shichang['id'],
                'limit'         => "0,14",
                'order' => "recommended desc, sort asc,edit_time desc",
                'count'         => true
            ));

            $shichangs[$k][stores] = $stores;
        }

        $this->assign('shichang_list',$shichangs);

        $this->import_resource(array('style' =>array(array('path'=>'res:css/bendishichang.css'))));



        $this->_config_seo(array(
            'title' =>Conf::get('site_title'),
        ));
        $this->assign('page_description', Conf::get('site_description'));
        $this->assign('page_keywords', Conf::get('site_keywords'));
        $this->display('channel_bendishichang.index.html');
    }
}