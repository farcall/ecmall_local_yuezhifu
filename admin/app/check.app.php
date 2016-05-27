<?php

/* 资金安全检查控制器 */

class CheckApp extends BackendApp {
    var $member_mod;
    var $epaylog_mod;
    var $epay_mod;
    var $fanli_jindou_mod;
    var $order_mod;

    function __construct() {
        $this->CheckApp();
    }

    function CheckApp() {
        parent::__construct();

        $this->member_mod = &m('member');
        $this->epay_mod = &m('epay');
        $this->epaylog_mod = &m('epaylog');
        $this->fanli_jindou_mod = &m('fanli_jindou');
        $this->order_mod = &m('order');
    }

    function money(){
        $user_name = $_GET['username'];
        $member = $this->member_mod->get("user_name='$user_name'");
        $member_jindou = $this->fanli_jindou_mod->get("user_name='$user_name'");

        //收入部分
        $member['onlinechongzhi'] = $this->_onlinechongzhi($member);
        $member['adminchongzhi'] = $this->_adminchongzhi($member);
        $member['zhuanru'] = $this->_zhuanru($member);
        $member['fanxian'] = $this->_fanxian($member);
        $member['shouru'] = $this->_shouru($member);
        //支出部分
        $member['xiaoshou'] = $this->_xiaoshou($member)/10;
        $member['tixian'] = $this->_tixian($member);
        $member['zhuanchu'] = $this->_zhuanchu($member);
        $member['zhichu'] = $this->_zhichu($member);
        //差额
        $member['zijincha'] =  $member['shouru'] - $member['zhichu'];

        $members[]=$member;
        $this->assign('members',$members);
        $this->display('fanli/check_money.html');

    }


    function demo(){
        $user_name = $_GET['username'];
      //  $member = $this->member_mod->get("user_name='18369268777'");
       // $member_jindou = $this->fanli_jindou_mod->get("user_name='18369268777'");
        $member = $this->member_mod->get("user_name='$user_name'");
        $member_jindou = $this->fanli_jindou_mod->get("user_name='$user_name'");

        $member['onlinechongzhi'] = $this->_onlinechongzhi($member);
        $member['adminchongzhi'] = $this->_adminchongzhi($member);

        //充值
        $member['shouru'] = $this->_shouru($member);
        //已提现
        $member['tixian'] = $this->_tixian($member);

        //商家销售
        $member['xiaoshou'] = $this->_xiaoshou($member);

        $member['zijincha'] = intval($member['shouru'])-intval($member['xiaoshou']/10);

        //买家消费
        $member['xiaofei'] = $this->_xiaofei($member);
        $member['lilunjindou'] = $member['xiaofei']/100;
        $member['shijijindou'] = $member_jindou['total'];

        //系统奖励
        $member['jiangli'] =
        $members[]=$member;
        $this->assign('members',$members);
        $this->display('fanli/check_money.html');

    }

    function index() {
        $page = $this->_get_page(200);


        $member_count = $this->epay_mod->getOne("select count(*) from ecm_epay");
        $members = $this->epay_mod->find(array(
            'limit'=>$page['limit'],
            'count' => true,
        ));

        foreach($members as $key=>$member){
            $members[$key]['onlinechongzhi'] = $this->_onlinechongzhi($member);
            $members[$key]['adminchongzhi'] = $this->_adminchongzhi($member);
            $members[$key]['shouru'] = $this->_shouru($member);

//            $members[$key]['xiaofei'] = $this->_xiaofei($member);
            $members[$key]['lilunjindou'] = $members[$key]['xiaofei']/100;
            $members[$key]['xiaoshou'] = $this->_xiaoshou($member)/10;

            $user_name = $member['user_name'];
//            $member_jindou = $this->fanli_jindou_mod->get("user_name='$user_name'");
//            $members[$key]['lilunjindou'] = floor($members[$key]['xiaofei']/100);
//            $members[$key]['shijijindou'] = floor($member_jindou['total']);

            if(intval($members[$key]['shouru']) == intval($members[$key]['xiaoshou'])){
                unset($members[$key]);
            }else{
                $members[$key]['zijincha'] = $members[$key]['shouru']  -  $members[$key]['xiaoshou'];
            }

            if($members[$key]['zijincha'] >= 0){
                unset($members[$key]);
            }



//            if($members[$key]['lilunjindou'] == $members[$key]['shijijindou']){
//                unset($members[$key]);
//            }
//            if($members[$key]['lilunjindou'] == 0 and  $members[$key]['shijijindou'] == 0){
//                unset($members[$key]);
//            }
        }
        $page['item_count'] = $member_count;   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条

        $this->assign('members',$members);
        $this->display('fanli/check_money.html');
    }

    function jindou() {
        $page = $this->_get_page(200);


        $member_count = $this->epay_mod->getOne("select count(*) from ecm_epay");
        $members = $this->epay_mod->find(array(
                'limit'=>$page['limit'],
                'count' => true,
            ));

        foreach($members as $key=>$member){
            $members[$key]['onlinechongzhi'] = $this->_onlinechongzhi($member);
            $members[$key]['adminchongzhi'] = $this->_adminchongzhi($member);
            $members[$key]['shouru'] = $this->_shouru($member);

            $members[$key]['xiaofei'] = $this->_xiaofei($member);
            $members[$key]['lilunjindou'] = $members[$key]['xiaofei']/100;
            $members[$key]['xiaoshou'] = $this->_xiaoshou($member)/10;

            $user_name = $member['user_name'];
            $member_jindou = $this->fanli_jindou_mod->get("user_name='$user_name'");
            $members[$key]['lilunjindou'] = floor($members[$key]['xiaofei']/100);
            $members[$key]['shijijindou'] = floor($member_jindou['total']);


            if($members[$key]['lilunjindou'] == $members[$key]['shijijindou']){
                unset($members[$key]);
            }
            if($members[$key]['lilunjindou'] == 0 and  $members[$key]['shijijindou'] == 0){
                unset($members[$key]);
            }
        }
        $page['item_count'] = $member_count;   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条

        $this->assign('members',$members);
        $this->display('fanli/check_jindou.html');
    }

    function _xiaofei($member){
        $buyerid = $member['user_id'];
        return $this->order_mod->getOne("select sum(order_amount) from ecm_order where buyer_id = '$buyerid' and status=40");
    }
    /**
     * @param $member
     * 作用:商家销售额度
     * Created by QQ:710932
     */
    function _xiaoshou($member){
        $seller_id = $member['user_id'];
        return $this->order_mod->getOne("select sum(order_amount) from ecm_order where seller_id='$seller_id' and status=40");
    }


    function _zhichu($member){
        return $this->_xiaoshou($member)/10 + $this->_tixian($member) + $this->_zhuanchu($member);
    }

    /**
     * @param $member
     * 作用:已体现
     * Created by QQ:710932
     */
    function _tixian($member){
        $member_id = $member['user_id'];

        //包含已完成和未完成
        return $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=70");
    }


    /**
     * @param $member
     * 作用:管理员充值
     * Created by QQ:710932
     */
    function _adminchongzhi($member){
        $member_id = $member['user_id'];
        return $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=10 and complete=1");
    }

    /**
     * @param $member
     * 作用:在线充值额度
     * Created by QQ:710932
     */
    function _onlinechongzhi($member){
        $member_id = $member['user_id'];
        return $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=60 and complete=1");
    }

    /**
     * @param $member
     * 作用:其他账户转入
     * Created by QQ:710932
     */
    function _zhuanru($member){
        $member_id = $member['user_id'];
        return $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=40 and complete=1");
    }

    /**
     * @param $member
     * 作用:转出给其他账户
     * Created by QQ:710932
     */
    function _zhuanchu($member){
        $member_id = $member['user_id'];
        return $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=50 and complete=1");
    }

    function _fanxian($member){
        $member_id = $member['user_id'];

        //金币已兑换为余额
        $duihuan_used = $this->epaylog_mod->getOne("select sum(money) from ecm_epaylog where user_id=$member_id and type=130 and complete=1");

        //金币未兑换
        $duihuan_unused = $this->fanli_jindou_mod->getOne("select jinbi from ecm_fanli_jindou where user_id = $member_id");

        return $duihuan_unused+$duihuan_used;
    }


    function _shouru($member){
        return $this->_onlinechongzhi($member)+$this->_zhuanru($member) + $this->_adminchongzhi($member) + $this->_fanxian($member);
    }
}

?>
