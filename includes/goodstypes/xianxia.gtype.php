<?php

/**
 *    线下做单的商品
 *
 *    @author    Garbin
 *    @usage    none
 */
class XianxiaGoods extends BaseGoods
{
    function __construct($param)
    {
        $this->XianxiaGoods($param);
    }
    function XianxiaGoods($param)
    {
        /* 初始化 */
        $param['_is_material']  = flase;
        $param['_name']         = 'xianxiagoods';
        $param['_order_type']   = 'xianxiaorder';

        parent::__construct($param);
    }
}

?>