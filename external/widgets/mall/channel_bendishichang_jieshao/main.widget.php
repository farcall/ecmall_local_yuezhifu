<?php

class channel_bendishichang_jieshaoWidget extends BaseWidget {

    var $_name = 'channel_bendishichang_jieshao';
    var $_ttl = 86400;
    var $_num = 6;

    function _get_data() {
        $data = array(
            'model_id' => mt_rand(),
            'options.bendiintroduce' => $this->options['options.bendiintroduce'],
        );
        return $data;
    }

}

?>