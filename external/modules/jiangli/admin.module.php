<?php

class JiangliModule extends AdminbaseModule
{

    function __construct()
    {
        $this->FenpeiModule();
    }

    function FenpeiModule()
    {
        parent::__construct();


    }

    /**
     * 作用:今日分配情况
     * Created by QQ:710932
     */
    function index()
    {
        //平台历史流水
        $histoyliushui = $this->get_histoyliushui();
        echo '平台历史流水'.$histoyliushui.'元<br>';

        //平台注册人数
        $memberCount = MemberModel::memberCount();
        echo '平台注册共有注册会员'.$memberCount.'人<br>';

        //平台有过购买历史的人数
        $orderMemberCount = OrderModel::orderMemberCount();
        echo '平台共有'.$orderMemberCount.'人消费过<br>';

        //获取上一次奖励分配的时间 并检查是否在今天
        $last_time = $this->get_lasttime();
        $lastDay= date('Y-m-d H:i:s',$last_time);
        echo '最后一次分配时间'.$lastDay.'<br>';
        //上一次分配人数

        //上一次
    }

    /**
     * 作用:当天分配奖励
     * Created by QQ:710932
     */
    function today(){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        $begin_time = $setting['jiangli_last_time'];

        $end_time  = time();
        $end_day  =  date ( "Y-m-d",$end_time );
        $begin_day= date('Y-m-d',$begin_time);

        /*比较今天是否已分配完毕*/
        if($begin_day == $end_day){
            echo '今日奖励已分配完毕';
            return;
        }

        /*计算本次分配时间内的平台流水*/
        $order_mod = &m('order');
        $today_amount = $order_mod->getOne('select sum(order_amount) from fangou.ecm_order where status=40 and finished_time>'.$begin_time.' and finished_time <= '.$end_time);
        echo '本次流水'.$today_amount.'元<br>';

        /*计算本次分配时间内的平台盈利*/
        $pingtaiyingli = $today_amount*$setting['epay_trade_charges_ratio'];
        echo '平台盈利'.$pingtaiyingli.'元<br>';

        /*计算应当拿出提供分配的资金额度*/
        $fenpeizijin = $pingtaiyingli*$setting['jiangli_pingtai_profit_ratio']/100;
        //精确到0.01
        $fenpeizijin=  is_float($fenpeizijin) ? substr_replace($fenpeizijin, '', strpos($fenpeizijin, '.') + 3) : $fenpeizijin.'.00';
        echo '可分配资金'.$fenpeizijin.'元<br>';

        /*提取所有会员历史返现数据*/
  //      $epay_jiangli_log_mod = &m('epay_jiangli_log');
   //     $member_jiangli = $epay_jiangli_log_mod->getAll('select * from ecm_epay_jiangli_log');

        /*提取所有会员历史消费*/
        $member_info = $order_mod->getAll('select buyer_id as user_id,buyer_name as user_name,sum(order_amount) as lishixiaofei from fangou.ecm_order where status=40 group by buyer_name');
        foreach($member_info as $member){
            $member['jiangli'] = $member['lishixiaofei']/$today_amount*$fenpeizijin;
            $member['jiangli']=  is_float($member['jiangli']) ? substr_replace($member['jiangli'], '', strpos($member['jiangli'], '.') + 3) : $member['jiangli'].'.00';
            echo $member['jiangli'].'<br>';
        }
        /*遍历会员,读取会员历史流水,计算本次分配额度*/
    }


    /**
     * 作用:查看用户历史分配
     * Created by QQ:710932
     */
    function history(){
        echo '历史';
    }

    function setting(){
        date_default_timezone_set ( 'UTC' );

        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        if (!IS_POST) {
            $this->assign('setting', $setting);
            $this->display('setting.html');
        } else {
            //交易佣金比例
            $data['jiangli_consumption_ratio'] = $_POST['jiangli_consumption_ratio']; #是否开启
            $data['jiangli_pingtai_profit_ratio'] = $_POST['jiangli_pingtai_profit_ratio']; #是否开启
            if(!is_numeric($data['jiangli_consumption_ratio']) || !is_numeric($data['jiangli_pingtai_profit_ratio'])){
                $this->show_warning('请勿非法提交');
                return;
            }

            if(($data['jiangli_consumption_ratio']>100) or ($data['jiangli_consumption_ratio']<0)){
                $this->show_warning("会员消费流水最大奖励比例不能大于100也不能小于0");
                return;
            }

            if(($data['jiangli_pingtai_profit_ratio']>100) or ($data['jiangli_pingtai_profit_ratio']<0)){
                $this->show_warning("平台利润分配比例不能大于100也不能小于0");
                return;
            }

            $model_setting->setAll($data);

            $this->show_message('设置更新成功');
        }
    }





    /**
     * @return mixed
     * 作用:返回最后一次奖励分配的时间戳
     * Created by QQ:710932
     */
    private function get_lasttime(){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        return $setting['jiangli_last_time'];
    }
}

?>