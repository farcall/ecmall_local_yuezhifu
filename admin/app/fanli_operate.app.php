<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/27
 * Time: 5:29
 */

class Fanli_operateApp extends BackendApp{
    var $mod_fanli_operate;
    var $mod_fanli_jinbi_log;
    function __construct() {
        $this->FanliApp();
    }

    function FanliApp() {
        parent::BackendApp();
        $this->mod_fanli_operate = &m('fanli_operate');
        $this->mod_fanli_jinbi_log = &m('fanli_jinbi_log');
    }

    function index(){
        $page = $this->_get_page(7);   //获取分页信息
        $operates = $this->mod_fanli_operate->find(array(
            'conditions' => 'status=1',
            'limit' => $page['limit'],
            'order' => "id desc",
            'count' => true
        ));
        $page['item_count'] = $this->mod_fanli_operate->getCount();   //获取统计数据
        $this->_format_page($page);


        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条
        $this->assign('operates', $operates);   //分页数据
        $this->display('fanli/operate_index.html');
    }

    function user(){
        if(!isset($_GET['name'])){
            $this->display('fanli/operate_user.html');
            return;
        }

        $user_name = $_GET['name']?$_GET['name']:'';

        $page = $this->_get_page(15);   //获取分页信息
        $jinbis = $this->mod_fanli_jinbi_log->find(array(
            'conditions' => "status=1 and flow='in' and user_name='$user_name'",
            'limit' => $page['limit'],
            'order' => "id desc",
            'count' => true
        ));

        if(isset($jinbis)){
            $page['item_count'] = $this->mod_fanli_jinbi_log->getCount();   //获取统计数据
        }
        else{
            $page['item_count'] = 0;
        }

        $this->_format_page($page);


        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条
        $this->assign('user_name',$user_name);
        $this->assign('jinbis', $jinbis);   //分页数据
        $this->display('fanli/operate_user.html');
    }
    function detail(){
        $id = $_GET['id']?$_GET['id']:0;
        if(!is_numeric($id) or $id<=0 ){
            $this->show_warning('非法输入');
            return;
        }

        //分页
        $page = $this->_get_page(20);
        $pageMember = $this->mod_fanli_jinbi_log->find(array(
            'order'=>'jinbi desc',
            'limit'=>$page['limit'],
            'conditions'=>"operate_id=$id and flow='in'",
            'count' => true,
        ));

        if(isset($pageMember)){
            $page['item_count'] = $this->mod_fanli_jinbi_log->getCount();   //获取统计数据
        }
        else{
            $page['item_count'] = 0;
        }
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条


        $this->assign('members',$pageMember);
        $this->display('fanli/cancel.html');
    }
}
