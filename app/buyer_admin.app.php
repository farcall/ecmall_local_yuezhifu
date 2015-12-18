<?php

require(ROOT_PATH . '/app/member.app.php');

class Buyer_adminApp extends MemberApp {

    function __construct() {
        $this->Buyer_adminApp();
    }

    function Buyer_adminApp() {
        parent::__construct();
        $this->_get_member_role();
        //余额支付 
        $this->epay_mod = & m('epay');
    }

    function index() {
        /* 清除新短消息缓存 */
        $cache_server = & cache_server();
        $cache_server->delete('new_pm_of_user_' . $this->visitor->get('user_id'));

        $user = $this->visitor->get();
        $user_mod = & m('member');
        $info = $user_mod->get_info($user['user_id']);
        $user['portrait'] = portrait($user['user_id'], $info['portrait'], 'middle');
        $user['ugrade']=$user_mod->get_grade_info($user['user_id']);
        $user['integral'] = $info['integral'];
        $user['total_integral'] = $info['total_integral'];
        $this->assign('user', $user);

        //余额支付 
        $my_user_id = $this->visitor->get('user_id');
        $epay = $this->epay_mod->getAll("select * from " . DB_PREFIX . "epay where user_id=$my_user_id");
        $this->assign('epay', $epay);

        /* 店铺信用和好评率 */
        if ($user['has_store']) {
            $store_mod = & m('store');
            $store = $store_mod->get_info($user['has_store']);
            $step = intval(Conf::get('upgrade_required'));
            $step < 1 && $step = 5;
            $store['credit_image'] = $this->_view->res_base . '/images/' . $store_mod->compute_credit($store['credit_value'], $step);
            $this->assign('store', $store);
            $this->assign('store_closed', STORE_CLOSED);
        }
        $goodsqa_mod = & m('goodsqa');
        $groupbuy_mod = & m('groupbuy');
        /* 买家提醒：待付款、待确认、待评价订单数 */
        $order_mod = & m('order');
        $sql1 = "SELECT COUNT(*) FROM {$order_mod->table} WHERE buyer_id = '{$user['user_id']}' AND status = '" . ORDER_PENDING . "'";
        $sql2 = "SELECT COUNT(*) FROM {$order_mod->table} WHERE buyer_id = '{$user['user_id']}' AND status = '" . ORDER_SHIPPED . "'";
        $sql3 = "SELECT COUNT(*) FROM {$order_mod->table} WHERE buyer_id = '{$user['user_id']}' AND status = '" . ORDER_FINISHED . "' AND evaluation_status = 0";
        $sql4 = "SELECT COUNT(*) FROM {$goodsqa_mod->table} WHERE user_id = '{$user['user_id']}' AND reply_content !='' AND if_new = '1' ";
        $sql5 = "SELECT COUNT(*) FROM " . DB_PREFIX . "groupbuy_log AS log LEFT JOIN {$groupbuy_mod->table} AS gb ON gb.group_id = log.group_id WHERE log.user_id='{$user['user_id']}' AND gb.state = " . GROUP_CANCELED;
        $sql6 = "SELECT COUNT(*) FROM " . DB_PREFIX . "groupbuy_log AS log LEFT JOIN {$groupbuy_mod->table} AS gb ON gb.group_id = log.group_id WHERE log.user_id='{$user['user_id']}' AND gb.state = " . GROUP_FINISHED;
        $buyer_stat = array(
            'pending' => $order_mod->getOne($sql1),
            'shipped' => $order_mod->getOne($sql2),
            'finished' => $order_mod->getOne($sql3),
            'my_question' => $goodsqa_mod->getOne($sql4),
            'groupbuy_canceled' => $groupbuy_mod->getOne($sql5),
            'groupbuy_finished' => $groupbuy_mod->getOne($sql6),
        );
        $sum = array_sum($buyer_stat);
        $buyer_stat['sum'] = $sum;
        $this->assign('buyer_stat', $buyer_stat);

        /* 待审核提醒 */
        if ($user['state'] != '' && $user['state'] == STORE_APPLYING) {
            $this->assign('applying', 1);
        }


        $this->assign('system_notice', $this->_get_system_notice('buyer_admin'));

        /*dong-未用金豆-获奖励金币开始*/
        import('fanli.lib');
        $fanli = new fanli();
        $this->assign('jinbi_jindou',$fanli->getJinbiAndJinbi($my_user_id));
        /*dong-未用金豆-获奖励金币结束*/

        /*消费总金额*/
        $this->assign('xiaofeizongjine',$this->_xiaofeizongjine($user['user_id']));

        /* 当前位置 */
        $this->_curlocal(LANG::get('member_center'), url('app=member'), LANG::get('overview'));

        /*申请提现金额*/
        $tixian = $this->mod_epaylog->getOne("select sum(money) from ecm_epaylog where user_id=$my_user_id and states=70 and complete=0");
        $this->assign('tixian',$tixian);

        /* 当前用户中心菜单 */
        $this->_curitem('overview');
        $this->_config_seo('title', Lang::get('member_center'));
        $this->display('member.index.html');
    }

    /**
     * 作用:消费总金额
     * Created by QQ:710932
     */
    function _xiaofeizongjine($user_id){
        $order_mod = &m('order');
        $zongjine = $order_mod->getOne("select sum(goods_amount) from ecm_order where buyer_id=$user_id and status=40");
        return isset($zongjine)?$zongjine:0;
    }

    function _get_member_role() {
        $_SESSION['member_role'] = 'buyer_admin';
    }

}

?>
