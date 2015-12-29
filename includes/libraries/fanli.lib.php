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
            $theTime_jindou = $goods_amount/$ratio;

            $jindou_data = array(
                'user_id'=>$order_info['buyer_id'],
                'user_name'=>$order_info['buyer_name'],
                'total'=>$theTime_jindou,
                'unused'=>$theTime_jindou,
            );

            $this->mod_fanli_jindou->add($jindou_data);
            return;
        }

        //本次订单计算产生的金豆数,并与沉淀金豆相加
        $theTime_jindou = $goods_amount/$ratio;

        $jindou_data['total']+=$theTime_jindou;
        $jindou_data['unused'] += $theTime_jindou;

        $this->mod_fanli_jindou->edit("user_id=".$order_info['buyer_id'],$jindou_data);
        return;
    }


    /**
     * @param $jinbi
     * 作用:返利提交完成后消耗金豆
     * Created by QQ:710932
     */
    function consumeJindouAndSaveJinbi($jinbi_info){

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

        $jindou_data['consume'] = $jindou_data['consume']+$theTimeConsumeJindou;
        $jindou_data['unused'] =  $jindou_data['unused'] - $theTimeConsumeJindou;
        $jindou_data['jinbi'] = $jindou_data['jinbi']+ $jinbi_info['jinbi'];

        //修改数据
        $this->mod_fanli_jindou->edit('user_id='.$jinbi_info['user_id'],$jindou_data);
    }

    /**
     * 作用:获取用户的已用金豆,未用金豆,全部金豆,
     * 转入金币,转出金币,剩余金币
     * Created by QQ:710932
     */
    function getJinbiAndJinbi($my_user_id){
        $jindou_mod = &m('fanli_jindou');
        $jindou_data = $jindou_mod->get(array(
            'conditions'=>'user_id='.$my_user_id,
        ));

        $jinbi_jindou = array(
            'total'=>$jindou_data['total']>0?floor($jindou_data['total']):0,
            'consume' => $jindou_data['consume']>0?floor($jindou_data['consume']):0,
            'unused'=> $jindou_data['unused']>0?floor($jindou_data['unused']):0,
            'jinbi'=>$jindou_data['jinbi']>0?$jindou_data['jinbi']:0,
        );

        return $jinbi_jindou;
    }
}