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
        $this->display('fanli/setting.html');
    }
}