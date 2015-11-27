<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/11/25
 * Time: 20:59
 * 配置项:
 *
 */

/**
 * Class Fanli_setting
 * 返利配置模块
 */
class Fanli_settingApp extends BackendApp{
    var $mod_fanli_setting;
    function __construct() {
        $this->Fanli_setting();
    }

    function Fanli_setting() {
        parent::BackendApp();
        $this->mod_fanli_setting = &m('fanli_setting');
    }


    function index(){
        if(IS_POST){
            if(empty($_POST['chouchenguse_fanli_ratio']) or empty($_POST['line2jindou']) or empty($_POST['online2jindou']) or empty($_POST['jindou2maxjinbi'])){
                $this->show_warning('参数错误');
                return;
            }

            $fanli_setting = array(
                'chouchenguse_fanli_ratio'=>$_POST['chouchenguse_fanli_ratio'],
                'line2jindou'=>$_POST['line2jindou'],
                'online2jindou'=>$_POST['online2jindou'],
                'jindou2maxjinbi'=>$_POST['jindou2maxjinbi'],
                'jinbi2rmb'=>'1',
                'add_time'=>gmtime(),
            );

            $this->mod_fanli_setting->add($fanli_setting);
            $this->show_message('新配置已设置成功');
            return;
        }else{

            $data = $this->mod_fanli_setting->get(array(
                'order' => 'add_time desc',
            ));

            $this->assign('setting',$data);
            $this->display('fanli/setting.html');
        }
    }
}