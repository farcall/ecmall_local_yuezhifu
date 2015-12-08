<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/27
 * Time: 5:29
 */

class Fanli_cmdApp extends BackendApp{

    function __construct() {
        $this->Fanli_cmdApp();
    }

    function Fanli_cmdApp() {
        parent::BackendApp();

    }

    function index(){

        // 一周动态
        $this->assign('news_in_a_day', $this->_get_news_in_a_day());

        $this->display('fanli/cmd.html');
    }


    function _get_news_in_a_day()
    {
        $a_day_ago = gmtime() - 1 * 24 * 3600;
        $user_mod =& m('member');
        return array(
            //新增用户数
            'new_user_qty'  => $user_mod->getOne("SELECT COUNT(*) FROM " . DB_PREFIX . "member WHERE reg_time > '$a_day_ago'"),
            //新增店铺数
            'new_store_qty' => $user_mod->getOne("SELECT COUNT(*) FROM " . DB_PREFIX . "store WHERE add_time > '$a_day_ago' AND state = 1"),
            //新增店铺申请数
            'new_apply_qty' => $user_mod->getOne("SELECT COUNT(*) FROM " . DB_PREFIX . "store WHERE add_time > '$a_day_ago' AND state = 0"),
            //新增商品
            'new_goods_qty' => $user_mod->getOne("SELECT COUNT(*) FROM " . DB_PREFIX . "goods WHERE add_time > '$a_day_ago' AND if_show = 1 AND closed = 0"),
            //新增订单
            'new_order_qty' => $user_mod->getOne("SELECT COUNT(*) FROM " . DB_PREFIX . "order WHERE finished_time > '$a_day_ago' AND status = '" . ORDER_FINISHED . "'"),
        );
    }

}
