<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/27
 * Time: 5:29
 */

class FanliApp extends BackendApp{
    var $mod_order;
    var $mod_jinbi_log;
    var $mod_fanli_setting;
    var $mod_fanli_operate;
    var $mod_fanli_jinbi;
    function __construct() {
        $this->FanliApp();
    }

    function FanliApp() {
        parent::BackendApp();
        $this->mod_jinbi_log = &m('epay_jinbi_log');
        $this->mod_order = &m('order');$this->mod_fanli_setting = &m('fanli_setting');
        $this->mod_fanli_operate = &m('fanli_operate');
        $this->mod_fanli_jinbi = &m('fanli_jinbi');
    }


    function index(){
        //检查今日是否已经完成了分配
        $lastFanli = $this->todayFanliStatus();
        if(($lastFanli !=false ) && ($lastFanli['status']==1)){
            //todo 返利完成查看返利详情
            $operate = $this->mod_fanli_operate->get(array(
                'conditions'=>'status=1',
                'order' => 'fanli_time desc',
            ));

            $this->assign('turnover',$operate['turnover']);
            $this->assign('cut',$operate['cut']);
            $this->assign('theoryfanli',$operate['theoryfanli']);
            $this->assign('count',$operate['count']);


            $page = $this->_get_page(5);
            $memberJinbis = $this->mod_fanli_jinbi->find(array(
                'fields' => '*',
                'conditions' => "operate_id=".$operate['id'],
                'order'=>'add_time desc',
                'limit'=>$page['limit'],
                'count' => true,
            ));


            $this->_format_page($page);
            $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条
            $this->assign('members',$memberJinbis);

            $this->display('fanli/todaycancel.html');
            return;
        }




        $this->fanli();
        return;
        $UnusedJindous = $this->getUnusedJindous();
        echo $this->getUnusedTotalCounts($UnusedJindous);
        var_dump($this->getUnusedJindous());
    }


    /**
     * 作用:页面初始化,预览今日分配情况
     * Created by QQ:710932
     */
    function fanli(){
        //获取所有成员的未用金豆
        $allMemberJindou = $this->getUnusedJindous();
        //所有成员的未用金豆之和
        $totalJindouCount = $this->getUnusedTotalCounts($allMemberJindou);
        if($totalJindouCount == 0){
            //todo 无需返利时显示
            echo '未用金豆数为0,请等待新消费';
            return;
        }


        if(IS_POST){
            if(!is_numeric($_POST['fanli']) or $_POST['fanli'] <=0){
                $this->show_warning('非法输入');
                return;
            }

            //更新今日运营情况表
            $operate = $this->mod_fanli_operate->get(array(
                'conditions'=>'status=0',
                'order' => 'fanli_time desc',
            ));
            $operate['status'] = 1;
            $operate['fanli_time'] = gmtime();
            $operate['fanli'] = $_POST['fanli'];
            $this->mod_fanli_operate->edit($operate['id'],$operate);



        }else{

            $todayOpreateData = $this->todayFanliStatus();

            if($todayOpreateData == false){
                //今日流水
                $todayTurnOver = $this->getTodayTurnOver();

                //今日抽成
                $model_setting = &af('settings');
                $configSetting = $model_setting->getAll(); //载入系统设置数据
                $todayCut = $todayTurnOver*$configSetting['epay_trade_charges_ratio'];

                //理论上应该返的额度
                $fanliSetting = $this->mod_fanli_setting->get(array(
                    'order' => 'add_time desc',
                ));
                $theoryfanli = $todayCut*$fanliSetting['chouchenguse_fanli_ratio'];

                //插入ecm_epay_oprate表
                $todayOpreateData = array(
                    'turnover'=>$todayTurnOver,     //流水
                    'cut'=>$todayCut,               //抽成
                    'theoryfanli'=>$theoryfanli,             //理论返利总金额
                    'count'=>count($allMemberJindou), //获得返利的人数
                    'admin_name'=> $this->visitor->get('user_name'),
                    'add_time'=>gmtime(),
                    'zero_time'=>local_mktime(0, 0, 0, date('m'), date('d'), date('Y'))-date('Z'),  //今日0点的时间戳
                    'status'=>0,
                );

                $operate_id = $this->mod_fanli_operate->add($todayOpreateData);


            }
            else{
                $operate_id = $todayOpreateData['id'];

            }

            //系统为每个人赠送的金币额度添加到数组中
            foreach ($allMemberJindou as $k => $v) {
                $allMemberJindou[$k]['jinbi'] = floor($todayOpreateData['theoryfanli']* $allMemberJindou[$k]['jindou']/$totalJindouCount*100)/100;  //小数点后两位 先乘后除
                $allMemberJindou[$k]['operate_id'] = $operate_id;
            }



            $page = $this->_get_page(5);
            $memberJinbis = $allMemberJindou;

            $this->_format_page($page);
            $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条


            $this->assign('members',$memberJinbis);
            $this->assign('turnover',$todayOpreateData['turnover']);
            $this->assign('cut',$todayOpreateData['cut']);
            $this->assign('theoryfanli',$todayOpreateData['theoryfanli']);
            $this->assign('count',$todayOpreateData['count']);
            //todo 页面显示;
            $this->display('fanli/today.html');
            return;

        }
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
     * 作用:计算今日流水
     * Created by QQ:710932
     */
    function getTodayTurnOver()
    {
        $end_time = gmtime();
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
     * 作用:所有成员的全部金豆(未用金豆+已用金豆)信息集合
     * Created by QQ:710932
     */
    function getAllJindous(){
        //线上消费产生金豆集合{user_id,user_name,jindou}的二维数组,下标是数字
        $jindou_line = $this->mod_order->getAll("select buyer_id as user_id,buyer_name as user_name,floor(sum(goods_amount)/100)as jindou from ".DB_PREFIX."order where status=40 and  type!='xianxia' group by user_name");
        //线下消费产生金豆集合{user_id,user_name,jindou}的二维数组,下标是数字
        $jindou_online = $this->mod_order->getAll("select buyer_id as user_id,buyer_name as user_name,floor(sum(goods_amount)/130)as jindou from ".DB_PREFIX."order where status=40 and  type='xianxia' group by user_name");

        //线上消费金豆集合的二维数组,下标是会员名
        foreach ($jindou_line as $k => $v) {
            $jindou_line[$v['user_name']] = array_shift($jindou_line);
        }

        //线下消费金豆集合的二维数组,下标是会员名
        foreach ($jindou_online as $k => $v) {
            $jindou_online[$v['user_name']] = array_shift($jindou_online);
        }


        //递归地合并一个或多个数组。
        $alljindou = array_merge_recursive($jindou_line,$jindou_online);

        foreach ($alljindou as $k => $v) {
            if(is_array($v['jindou'])){
                $jindou  = array_sum($v['jindou']);
                $alljindou[$k]['user_id'] = $v['user_id'][0];
                $alljindou[$k]['user_name'] = $v['user_name'][0];
                $alljindou[$k]['jindou'] = $jindou;
            }
        }

        return $alljindou;
    }

    /**
     * 作用:所有成员的已用金豆信息集合
     * Created by QQ:710932
     */
    function getUsedJindous(){
        $usedJindous = $this->mod_jinbi_log->getAll("select user_id,user_name,floor(sum(jinbi)/100) as jindou from ".DB_PREFIX."epay_jinbi_log where status=1 group by user_name");

        foreach ($usedJindous as $k => $v) {
            $usedJindous[$v['user_name']] = array_shift($usedJindous);
        }
        return $usedJindous;
    }

    /**
     * 作用:通过所有金豆集合和已用金豆集合计算未用金豆集合
     * Created by QQ:710932
     */
    function getUnusedJindous(){
        $allJindous = $this->getAllJindous();
        $usedJindous = $this->getUsedJindous();
        //递归地合并一个或多个数组。
        $unusedjindous = array_merge_recursive($allJindous,$usedJindous);

        foreach ($unusedjindous as $k => $v) {
            if(is_array($v['jindou'])){
                $jindou  = $v['jindou'][0]-$v['jindou'][1];
                $unusedjindous[$k]['user_id'] = $v['user_id'][0];
                $unusedjindous[$k]['user_name'] = $v['user_name'][0];
                $unusedjindous[$k]['jindou'] = $jindou;
                $unusedjindous[$k]['alljindou'] = $v['jindou'][0];
                $unusedjindous[$k]['usedjindou'] = $v['jindou'][1];
            }else{
                $unusedjindous[$k]['alljindou'] = $v['jindou'];
                $unusedjindous[$k]['usedjindou'] = 0;
            }

        }
        //todo 去掉未用金豆为0的项
        //未用金豆额为0的清空
        return $unusedjindous;
    }


    /**
     * @param $UnusedJindous getUnusedJindous()的返回结果
     * 作用:所有会员的未用金豆的总和
     * 返利分配时的总权重
     * Created by QQ:710932
     */
    function getUnusedTotalCounts($UnusedJindous){
        $total == 0;
        foreach ($UnusedJindous as $k => $v) {
            $total += $v['jindou'];
        }
        return $total;
    }
}