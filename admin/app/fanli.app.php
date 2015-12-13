<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/27
 * Time: 5:29
 */

class FanliApp extends BackendApp{
    var $mod_order;
    var $mod_fanli_setting;
    var $mod_fanli_operate;
    var $mod_fanli_jinbi_log;
    var $mod_fanli_jindou;
    function __construct() {
        $this->FanliApp();
    }

    function FanliApp() {
        parent::BackendApp();
        $this->mod_order = &m('order');$this->mod_fanli_setting = &m('fanli_setting');
        $this->mod_fanli_operate = &m('fanli_operate');
        $this->mod_fanli_jinbi_log = &m('fanli_jinbi_log');
        $this->mod_fanli_jindou = &m('fanli_jindou');
    }


    function index(){
//        $lastFanli = $this->todayFanliStatus();
//        if(($lastFanli !=false ) && ($lastFanli['status']==1)){
//            $this->_cancel();
//            return;
//        }

        $method = $_GET['method'];
        if($method == 'submit'){
            $this->_submit();
            return;
        }else{
            $this->_preview();
            return;
        }
    }

    /**
     * 作用:已分配完成
     * Created by QQ:710932
     */
    function _cancel(){
        $todayZerotime = local_mktime(0, 0, 0, date('m'), date('d'), date('Y'))-date('Z');
        $operate_data = $this->mod_fanli_operate->get(array(
            'conditions'=>'zero_time='.$todayZerotime,
            'order' => 'add_time desc',
        ));


        //分页
        $page = $this->_get_page(20);
        $pageMember = $this->mod_fanli_jinbi_log->find(array(
            'order'=>'jinbi desc',
            'limit'=>$page['limit'],
            'conditions'=>'operate_id='.$operate_data['Id'],
            'count' => true,
        ));
        $page['item_count'] = $operate_data['count'];   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条


        $this->assign('members',$pageMember);
        $this->assign('turnover',$operate_data['turnover']);
        $this->assign('cut',$operate_data['cut']);
        $this->assign('theoryfanli',$operate_data['theoryfanli']);
        $this->assign('fanli',$operate_data['fanli']);
        $this->assign('count',$operate_data['count']);
        $this->assign('fanli_time',$operate_data['fanli_time']);
        $this->display('fanli/cancel.html');
    }
    /**
     * 作用:立即返利
     * Created by QQ:710932
     *
     */
    function _submit(){
        //todo 立即提交
        //所有成员的未用金豆之和
        $totalJindouCount = $this->getUnusedTotalCounts();
        if($totalJindouCount == 0){

            return;
        }

        //本次流水
        $thisTimeTurnOver = $this->thisTimeTurnOver();

        //本次抽成
        $model_setting = &af('settings');
        $configSetting = $model_setting->getAll(); //载入系统设置数据
        $thisTimeCut = $thisTimeTurnOver*$configSetting['epay_trade_charges_ratio'];

        //理论上应该返的额度
        $fanliSetting = $this->mod_fanli_setting->get(array(
            'order' => 'add_time desc',
        ));
        /*平台抽成*抽成用于返利的比例*/
        $theoryfanli = $thisTimeCut*$fanliSetting['chouchenguse_fanli_ratio'];

        //最终用于返利的额度
        $confirmfanli = $_GET['confirmfanli']>0?$_GET['confirmfanli']:$theoryfanli;


        $members = $this->mod_fanli_jindou->find(array(
            'fields' => 'user_name,user_id,floor(total) as total,ceil(consume) as consume,floor(unused) as unused,jinbi',
            'conditions' => "unused>=1",
            'order'=>'unused desc',
        ));

        //保存ecm_fanli_operate
        $add_time = gmtime();
        $operate_data = array(
            'turnover' => $thisTimeTurnOver,
            'cut'=> $thisTimeCut,
            'theoryfanli'=>$theoryfanli,
            'fanli'=>$confirmfanli,
            'count'=>count($members),
            'admin_name'=>$this->visitor->get('user_name'),
            'add_time'=>$add_time,
            'zero_time'=>local_mktime(0, 0, 0, date('m'), date('d'), date('Y'))-date('Z'),  //今日0点的时间戳
            'fanli_time'=>$add_time,
            'status'=>1,
        );

        $operate_id = $this->mod_fanli_operate->add($operate_data);


        import('fanli.lib');
        $fanli=new fanli();

        //保存ecm_fanli_jinbi
        foreach ($members  as $k => $v) {
            $jinbi_data = array(
                'operate_id' =>$operate_id,
                'user_id'=>$v['user_id'],
                'user_name'=>$v['user_name'],
                'jinbi'=>floor($confirmfanli*$members[$k]['unused']/$totalJindouCount*100)/100,
                'total'=>$v['jinbi']+floor($confirmfanli*$members[$k]['unused']/$totalJindouCount*100)/100,
                'flow'=>'in',
                'add_time'=>$add_time,
                'status'=>1,
            );
            $this->mod_fanli_jinbi_log->add($jinbi_data);

            //扣除金豆且保存金币
            /*金币奖励后扣除金豆*/
            $jinbi_info = array(
                'user_id'=>$v['user_id'],
                'user_name'=>$v['user_name'],
                'jinbi'=>$jinbi_data['jinbi'],
            );
            $fanli->consumeJindouAndSaveJinbi($jinbi_info);
        }


        //发送奖励通知
        import('mobile_msg.lib');
        $mobile_msg = new Mobile_msg();
        foreach ($members as $k => $v) {
            $zengsong = floor($confirmfanli*$members[$k]['unused']/$totalJindouCount*100)/100;
            $msgtext = '您在商城购买产品,今日赠送的金币为:'.$zengsong.'请注意查收';
            $to_mobile = trim($v['user_name']);
            if($mobile_msg->isMobile($to_mobile)){
                 $mobile_msg->send_msg(0,'admin',$to_mobile,$msgtext);
            }
        }

        $this->show_message('分配成功');
    }
    function _preview(){
        //所有成员的未用金豆之和
        $totalJindouCount = $this->getUnusedTotalCounts();
        if($totalJindouCount == 0){
            echo '所有会员的返利已完成';
            return;
        }

        //今日流水
        $todayTurnOver = $this->thisTimeTurnOver();
        //今日抽成
        $model_setting = &af('settings');
        $configSetting = $model_setting->getAll(); //载入系统设置数据
        $todayCut = $todayTurnOver*$configSetting['epay_trade_charges_ratio'];

        //理论上应该返的额度
        $fanliSetting = $this->mod_fanli_setting->get(array(
            'order' => 'add_time desc',
        ));
        $theoryfanli = $todayCut*$fanliSetting['chouchenguse_fanli_ratio'];

        //计算返利资金
        $confirmfanli = $_GET['confirmfanli']>0?$_GET['confirmfanli']:$theoryfanli;

        //分页
        $page = $this->_get_page(20);
        $pageMember = $this->mod_fanli_jindou->find(array(
            'fields' => 'user_name,user_id,floor(total) as total,ceil(consume) as consume,floor(unused) as unused,jinbi',
            'conditions' => "unused>=1",
            'order'=>'unused desc',
            'limit'=>$page['limit'],
            'count' => true,
        ));
        $page['item_count'] = $this->getValidMemberCount();   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条

        foreach ($pageMember  as $k => $v) {
            $pageMember[$k]['theoryjinbi'] = floor($theoryfanli*$pageMember[$k]['unused']/$totalJindouCount*100)/100;
            $pageMember[$k]['previewjinbi'] = floor($confirmfanli*$pageMember[$k]['unused']/$totalJindouCount*100)/100;
        }

        $this->assign('confirmfanli',$confirmfanli);
        $this->assign('members',$pageMember);
        $this->assign('turnover',$todayTurnOver);
        $this->assign('cut',$todayCut);
        $this->assign('theoryfanli',$theoryfanli);
        $this->assign('count',$page['item_count']);
        //todo 页面显示;
        $this->display('fanli/today.html');
    }


    /**
     * 作用:今日返利状态
     * 未返利:flase
     * 未提交:$lastFanli
     * 已提交:$lastFanli
     * Created by QQ:710932
     */
    function todayFanliStatus(){
        $todayZerotime = local_mktime(0, 0, 0, date('m'), date('d'), date('Y'))-date('Z');
        $lastFanli = $this->mod_fanli_operate->get(array(
            'conditions'=>'zero_time='.$todayZerotime,
            'order' => 'add_time desc',
        ));


        if($lastFanli == false){
            return false;
        }

        return $lastFanli;
    }
    /**
     * 作用:本次分配时流水
     * 从上一次分配时间到当前时间的流水
     * Created by QQ:710932
     */
    function thisTimeTurnOver()
    {
        $now_time = gmtime();
        $end_time = $now_time;
        $lastFanli = $this->mod_fanli_operate->get(array(
            'order' => 'fanli_time desc',
        ));

        if($lastFanli == false){
            $begin_time = 0;
        }
        else{
            $begin_time = $lastFanli['fanli_time'];
        }

        //begin_time到end_time这个时间段内的订单流水
        $order_mod = &m('order');
        $totalAmount = $order_mod->getOne("select sum(goods_amount) from ".DB_PREFIX."order where status=40 and finished_time>".$begin_time." and finished_time<=".$end_time);
        return $totalAmount==null?0:$totalAmount;

    }


    /**
     * @param $UnusedJindous
     * 作用:所有会员的未用金豆的总和
     * 返利分配时的总权重
     * Created by QQ:710932
     */
    function getUnusedTotalCounts(){
        $this->mod_fanli_jindou->find();
       return $this->mod_fanli_jindou->getOne("select sum(floor(unused)) from " . DB_PREFIX . "fanli_jindou");
    }

    /**
     * @return mixed
     * 作用:返回含有未用金豆的人数
     * Created by QQ:710932
     */
    function getValidMemberCount(){
        return $this->mod_fanli_jindou->getOne("select count(*) from  " . DB_PREFIX . "fanli_jindou where unused>=1");
    }
}
