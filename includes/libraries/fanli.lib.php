<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/28
 * Time: 2:33
 */

class fanli{

    var $mod_fanli_setting;
    var $mod_fanli_jindou;

    function __construct() {
        $this->mod_fanli_setting = &m('fanli_setting');
        $this->mod_fanli_jindou = &m('fanli_jindou');
    }

    /**
     * @param $order_info
     * 作用:订单完成后系统根据订单详情奖励金豆
     * Created by QQ:710932
     */
    function RewardJindou($order_info){
        $fanliSetting = $this->mod_fanli_setting->get(array(
            'order' => 'add_time desc',
        ));

        if($order_info['type'] == 'xianxia'){
            $ratio = $fanliSetting['online2jindou'];
        }else{
            $ratio = $fanliSetting['line2jindou'];
        }

        $goods_amount = $order_info['goods_amount'];

        //读取用户金豆详情
        $jindou_data = $this->mod_fanli_jindou->get(array(
                'conditions'=>'user_id='.$order_info['buyer_id'],
            ) );

        if($jindou_data == false){
            //本次订单计算产生的金豆数,并与沉淀金豆相加
            $theTime_result = $goods_amount/$ratio;
            //本次订单产生的整数个金豆
            $theTime_jindou = floor($theTime_result);
            //本次订单产生的沉淀金豆
            $theTime_deposition = floor(($theTime_result-$theTime_jindou)*10000)/10000;

            $jindou_data = array(
                'user_id'=>$order_info['buyer_id'],
                'user_name'=>$order_info['buyer_name'],
                'deposition'=>$theTime_deposition,
                'total'=>$theTime_jindou,
                'unused'=>$theTime_jindou,
            );

            $this->mod_fanli_jindou->add($jindou_data);
            return;
        }

        //本次订单计算产生的金豆数,并与沉淀金豆相加
        $theTime_result = $goods_amount/$ratio;
        $theTime_result += $jindou_data['deposition'];

        //本次订单产生的整数个金豆
        $theTime_jindou = floor($theTime_result);
        //本次订单产生的沉淀金豆
        $theTime_deposition = floor(($theTime_result-$theTime_jindou)*10000)/10000;

        $jindou_data['deposition'] = $theTime_deposition;
        $jindou_data['total']+=$theTime_jindou;
        $jindou_data['unused'] += $theTime_jindou;

        $this->mod_fanli_jindou->edit($order_info['user_id'],$jindou_data);
        return;
    }


    /**
     * @param $jinbi
     * 作用:返利提交完成后消耗金豆
     * Created by QQ:710932
     */
    function consumeJindou($jinbi_info){

        //读取用户金豆详情
        $jindou_data = $this->mod_fanli_jindou->get(array(
            'conditions'=>'user_id='.$jinbi_info['user_id'],
        ) );


        //读取配置
        $fanliSetting = $this->mod_fanli_setting->get(array(
            'order' => 'add_time desc',
        ));
        $jindou2maxjinbi = $fanliSetting['jindou2maxjinbi'];

        //本次操作完成消耗的金豆数
        $theTimeConsumeJindou = $jinbi_info['jinbi']/$jindou2maxjinbi;

        //本次消耗
        //1:历史消耗金豆数-历史消耗金豆整数部分
        //2:本次消耗金豆数+历史消耗金豆小数部分
        $changeJindou = floor(($jindou_data['consume'] - floor($jindou_data['consume']) + $theTimeConsumeJindou));

        $jindou_data['consume'] = $jindou_data['consume']+$theTimeConsumeJindou;
        $jindou_data['unused'] =  $jindou_data['unused'] - $changeJindou;

        //修改数据
        $this->mod_fanli_jindou->edit($jinbi_info['user_id'],$jindou_data);
    }
}