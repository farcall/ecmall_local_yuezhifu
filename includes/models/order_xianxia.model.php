<?php

/* 线下订单日志 order_xianxia */
class Order_xianxiaModel extends BaseModel
{
    var $table  = 'order_xianxia';
    var $prikey = 'id';
    var $_name  = 'order_xianxia';
    var $_relation  = array(
        // 一个订单日志只能属于一个订单
        'belongs_to_order' => array(
            'model'         => 'order',
            'type'          => BELONGS_TO,
            'foreign_key'   => 'order_id',
            'reverse'       => 'has_orderlog',
        ),
    );
}

?>