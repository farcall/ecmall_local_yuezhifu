<?php

class integralApp extends MallbaseApp {
    
    var $_user_id;
    var $_goods_mod;
    var $_integral_goods_mod;
    
    
    function __construct() {
        $this->integralApp();
    }

    function integralApp() {
        parent::__construct();
        //判断积分操作是否开启 未开启直接返回
        if (!Conf::get('integral_enabled')) {
            $this->show_warning('未开启积分');exit;
            return;
        }
        $this->_user_id = $this->visitor->get('user_id');
        $this->_goods_mod = & m('goods');
        $this->_integral_goods_mod = & m('integral_goods');
    }
    
    
    function index()
    {
        //判断用户是否登录 登录则获得用户相关信息
        if ($this->_user_id) {
            $user_mod = & m('member');
            $user = $user_mod->get_info($this->_user_id);
            $user['ugrade'] = $user_mod->get_grade_info($user['user_id']);
            $user['portrait'] = portrait($user['user_id'], $info['portrait'], 'middle');
            $this->assign('user', $user);
        }


        $page = $this->_get_page(16);   //获取分页信息

        //获取积分产品 按照抵扣数额排列
        $conditions = 'integral_max_exchange > 0';
        $goods_list = $this->_goods_mod->find(array(
            'conditions' => $conditions,
            'order' => 'integral_max_exchange desc', 
            'limit' => $page['limit'],
            'count' => true   //允许统计
        ));
        foreach ($goods_list as $key => $goods) {
            empty($goods['default_image']) && $goods_list[$key]['default_image'] = Conf::get('default_goods_image');
        }
        $this->assign('goods_list', $goods_list);
        
        $page['item_count'] = $this->_goods_mod->getCount();   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);
        
        
        $this->display('integral.index.html');
    }
    
    
}
