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

    function __construct() {
        $this->FanliApp();
    }

    function FanliApp() {
        parent::BackendApp();
        $this->mod_order = &m('order');
        $this->mod_jinbi_log = &m('epay_jinbi_log');
        $this->mod_fanli_setting = &m('fanli_setting');
    }


    function index(){
        $UnusedJindous = $this->getUnusedJindous();
        echo $this->getUnusedTotalCounts($UnusedJindous);
        var_dump($this->getUnusedJindous());
    }


    /**
     * 作用:页面初始化,预览今日分配情况
     * Created by QQ:710932
     */
    function previewToday(){
        $unusedJindous = $this->getUnusedJindous();
        $totalJindouCount = $this->getUnusedTotalCounts($unusedJindous);

        //插入ecm_epay_oprate表
        $todayOpreateData = array(
          'liushui'
        );

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
        foreach ($UnusedJindous as $k => $v) {
            $total += $v['jindou'];
        }
        return $total;
    }
}