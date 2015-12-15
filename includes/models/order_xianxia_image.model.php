<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/12/15
 * Time: 3:00
 */

class Order_xianxia_imageModel extends BaseModel
{
    var $table  = 'order_xianxia_image';
    var $prikey = 'image_id';
    var $_name  = 'order_xianxia_image';
    var $_relation = array(
        // 一个商品图片只能属于一个商品
        'belongs_to_goods' => array(
            'model'         => 'order_xianxia',
            'type'          => BELONGS_TO,
            'foreign_key'   => 'order_id',
            'reverse'       => 'has_pingzhengimage',
        ),
        // 一个商品图片对应一个图片文件
        'has_uploadedfile' => array(
            'model'         => 'uploadedfile',
            'type'          => HAS_ONE,
            'foreign_key'   => 'file_id',
            'refer_key'     => 'file_id',
            'dependent'     => true
        ),
    );
}
?>