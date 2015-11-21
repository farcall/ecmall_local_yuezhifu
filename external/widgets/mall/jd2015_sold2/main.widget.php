<?php

/**
 * 文章挂件
 *
 * @return  array
 */
class Jd2015_sold2Widget extends BaseWidget {

    var $_name = 'jd2015_sold2';
    var $_ttl = 1;

    function _get_data() {
        if (empty($this->options['num']) || intval($this->options['num']) <= 0) {
            $this->options['num'] = 50;
        }

        $cache_server = & cache_server();
        $key = $this->_get_cache_id();
        $data = $cache_server->get($key);
        if ($data === false) {
            $order_mod = &m('order');
            $order_list = $order_mod->find(
                array(
                    'conditions' => "status = '" . ORDER_FINISHED . "'",
                    'order' => 'finished_time desc',
                    'limit' => $this->options['num'],
                )
            );

            $data = array(
                'model_id' => mt_rand(),
                'order_list'=>$order_list,
            );
            
            $cache_server->set($key, $data, $this->_ttl);
        }
        return $data;
    }

}

?>