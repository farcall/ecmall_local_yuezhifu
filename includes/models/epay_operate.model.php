<?php
//每日运营情况表(ecm_epay_operate)
class Epay_operateModel extends BaseModel
{
    var $table  = 'epay_operate';
    var $prikey = 'id';
    var $_name  = 'epay_operate';

    /**
     * 作用:获取某个时间段内的第一个结果
     * 主要是获取今日运营情况表的信息
     * 如果没有返回 array()
     * Created by QQ:710932
     */
    function getTodayOperateInfo($begin_time,$end_time){
        return  $this->get(array(
            'conditions'=>'add_time>='.$begin_time.' and add_time<='.$end_time,
        ));
    }
}
?>