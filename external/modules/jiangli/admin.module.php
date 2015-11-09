<?php

class JiangliModule extends AdminbaseModule
{

    function __construct()
    {
        $this->FenpeiModule();
    }

    function FenpeiModule()
    {
        parent::__construct();
    }

    /**
     * 作用:今日分配情况
     * Created by QQ:710932
     */
    function index()
    {
        date_default_timezone_set ('Asia/Shanghai');
        //$gtime = gmtime();
       // $gtime = time()-8*60*60;
        $gtime = mktime(0,0,0,date("m"),date("d"),date("Y"))-8*3600;
   //     $gtime = strtotime(date('Y-m-d', time()));
        $this->assign('gtime',$gtime);
        $this->display('index.html');
    }


    /**
     * 作用:当天分配奖励
     * 页面初始化:预览模式
     * get请求,写入数据库,得到最终结果
     * Created by QQ:710932
     */
    function today(){
        $shijizhipei = $_GET['shijizhipei'];

        $run = $_GET['run'];

        if($run == 'tijiao'){
            $this->_fenpei();
        }elseif($run == 'save'){
            //重置分配额度
            $this->_savejine();

        }else{
            //显示
            $this->_showTodayPage();
        }

        return;
    }


    /**
     * 作用:查看用户历史分配
     * Created by QQ:710932
     */
    function history(){

        $operate_id=$_GET['id'];
        if($operate_id != null){
            if(!is_numeric($operate_id)){
                $this->show_warning('请勿非法提交');
                return;
            }


            $epay_operate_mod = &m('epay_operate');
            $epay_operate_data = $epay_operate_mod->get($operate_id);
            if($epay_operate_data == null){
                $this->show_warning('查找结果不存在');
                return;
            }

            $this->_showCancelPage($epay_operate_data);
            return;
        }


        $page = $this->_get_page(14);
        $epay_operate_mod = &m('epay_operate');
        $epay_operate_data = $epay_operate_mod->find( array(
            'conditions' => 'status=1',
            'order'      => 'id desc',
            'limit'      => $page['limit'],
            'count'      => true,
        ));

//        $this->import_resource(array(
//            'script' => 'AdminLTE/plugins/jQuery/jQuery-2.1.4.min.js',
//        ));
        $this->assign('historys',$epay_operate_data);
        $this->display("history.html");
        return;
    }


    /**
     * 作用:查看会员的返利详情
     * Created by QQ:710932
     */
    function view(){
        //todo 查看会员的返利详情
        var_dump($_GET);
    }


    function setting(){
        date_default_timezone_set ( 'UTC' );

        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        if (!IS_POST) {
            $this->assign('setting', $setting);
            $this->display('setting.html');
        } else {

            //平台分配金币占平台利润比例
            $data['epay_lirun_fenpei_ratio'] = $_POST['epay_lirun_fenpei_ratio'];
            //昨日分配时间
            $data['epay_fenpei_last_time'] = $_POST['epay_fenpei_last_time'];
            //一个金豆转换金币最大值
            $data['epay_max_jindou2jinbi'] = $_POST['epay_max_jindou2jinbi'];
            //获得一个金豆需要在平台消费
            $data['epay_min_money2jindou'] = $_POST['epay_min_money2jindou'];

            if(!is_numeric($data['epay_lirun_fenpei_ratio']) || !is_numeric($data['epay_max_jindou2jinbi'])){
                $this->show_warning('请勿非法提交');
                return;
            }


            if(($data['epay_lirun_fenpei_ratio']>1)){
                $this->show_warning("亲,这样设置是要平台垮台的节奏吗...");
                return;
            }


            $model_setting->setAll($data);

            $this->show_message('设置更新成功');
        }
    }


    /**
     * 作用:奖励分配
     * Created by QQ:710932
     */
    private function _fenpei(){
        //读取数据库配置 更新到界面中
        $now_time = gmtime();

        //今日0点0分时间戳
        $begin_time = mktime(0,0,0,date("m"),date("d"),date("Y"))-8*3600;

        $end_time = $now_time;


        /*数据库中计算结果*/
        $setting = $this->_setting();
        extract($setting);

        /*今天平台流水*/
        $jinriliushui = $this->_todayOrderAmount($this->_getLastFenPeiTime(),$now_time);

        /*今日抽成*/
        $jinrichoucheng = $jinriliushui*$setting['epay_trade_charges_ratio'];

        /*今日可支配资金*/
        $kezhipei = $jinrichoucheng*$epay_lirun_fenpei_ratio;

        /*今日持有未用金币人员数量*/
        $memberCount = $this->_memberJinbis(array(
            'fields' => 'count(*) as memberCount',
            'conditions' => "weiyongjindou!=0",
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);


        //参与金币分红的人员个数
        $memberCount = $memberCount[0]['memberCount'];

        /*平台所有人员的未用金币之和*/
        $pingtai_weiyongjindou = $this->_memberJinbis(array(
            'fields' => 'sum(weiyongjindou) as weiyongjindou',
            'conditions' => "weiyongjindou!=0",
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);
        $pingtai_weiyongjindou = $pingtai_weiyongjindou[0]['weiyongjindou'];


        $memberJinbis = $this->_memberJinbis(array(
            'fields' => '*',
            'conditions' => "weiyongjindou!=0",
            'count' => true,
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);


        $epay_operate_mod = &m('epay_operate');
        $epay_operate_data = $epay_operate_mod->get(array(
            'conditions'=>'add_time>='.$begin_time.' and add_time<='.$end_time,
        ));


        $shijizhipei = $epay_operate_data==null?$kezhipei:$epay_operate_data['shijizhipei'];
        $shijihuilv =  number_format($shijizhipei/$pingtai_weiyongjindou,2);

        $epay_jinbi_log_mod = &m('epay_jinbi_log');

        $operate_id = '';
        $add_time = $end_time;
        if(!$epay_operate_data){
            //保存到运营情况表
            $epay_operate_data = array(
                'liushui'=>$jinriliushui,
                'choucheng'=>$jinrichoucheng,
                'kezhipei'=>$kezhipei,
                'shijizhipei'=>$shijizhipei,
                'count'=>$memberCount,
                'admin_name'=>$this->visitor->get('user_name'),
                'add_time'=>$now_time,
                'fenpei_time'=>$now_time,
                'status'=>1,
             );
            $operate_id = $epay_operate_mod->add($epay_operate_data);
        }else{
            //更新运营情况表
            $operate_id = $epay_operate_data['Id'];
            $epay_operate_data = array(
                // liushui	choucheng	kezhipei	shijizhipei	count	admin_name	add_time	fenpei_time	status
                'liushui'=>$jinriliushui,
                'choucheng'=>$jinrichoucheng,
                'kezhipei'=>$kezhipei,
                'count'=>$memberCount,
                'admin_name'=>$this->visitor->get('user_name'),
                'fenpei_time'=>$now_time,
                'status'=>1,
            );
            $epay_operate_mod->edit($epay_operate_data['Id'],$epay_operate_data);
        }


        //保存到金币发放日志表
        foreach ($memberJinbis as $k => $v) {
            $memberJinbis[$k]['shijijinbi'] =  $memberJinbis[$k]['weiyongjindou']*$shijihuilv;

            $data = array(
                'operate_id'=> $operate_id,
                'user_id'=>$memberJinbis[$k]['user_id'],
                'user_name'=>$memberJinbis[$k]['user_name'],
                'jinbi'=>$memberJinbis[$k]['shijijinbi'],
                'add_time'=>$add_time,
                'status'=>'1',
            );

            $epay_jinbi_log_mod->add($data);
        }

        $this->show_message('今日奖励分配完成');
        //更新最后一次分配时间
        return "ok";
    }
    /**
     * 作用:更新今日页面内容
     * Created by QQ:710932
     */
    private function _showTodayPage(){
        //读取数据库配置 更新到界面中
        $now_time = gmtime();
        //今日0点0分时间戳
        $end_time = $now_time;
        $begin_time = mktime(0,0,0,date("m"),date("d"),date("Y"))-8*3600;

        $epay_operate_mod = &m('epay_operate');
        $epay_operate_data = $epay_operate_mod->get(array(
            'conditions'=>'add_time>='.$begin_time.' and add_time<='.$end_time.' and status=0',
        ));

        if($epay_operate_data['status'] == 1){

            //今日已经完成
            $this->_showCancelPage($epay_operate_data);
            return;
        }

        /*数据库中计算结果*/
        $setting = $this->_setting();
        extract($setting);

        /*今天平台流水*/
        $jinriliushui = $this->_todayOrderAmount($this->_getLastFenPeiTime(),$now_time);

        /*今日抽成*/
        $jinrichoucheng = $jinriliushui*$setting['epay_trade_charges_ratio'];

        /*今日可支配资金*/
        $kezhipei = $jinrichoucheng*$epay_lirun_fenpei_ratio;

        /*今日持有未用金币人员数量*/
        $memberCount = $this->_memberJinbis(array(
            'fields' => 'count(*) as memberCount',
            'conditions' => "weiyongjindou!=0",
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);

        //参与金币分红的人员个数
        $memberCount = $memberCount[0]['memberCount'];

        /*平台所有人员的未用金币之和*/
        $pingtai_weiyongjindou = $this->_memberJinbis(array(
            'fields' => 'sum(weiyongjindou) as weiyongjindou',
            'conditions' => "weiyongjindou!=0",
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);
        $pingtai_weiyongjindou = $pingtai_weiyongjindou[0]['weiyongjindou'];

        $page = $this->_get_page(100);
        $memberJinbis = $this->_memberJinbis(array(
            'fields' => '*',
            'conditions' => "weiyongjindou!=0",
            'order'=>'weiyongjindou desc',
            'limit'=>$page['limit'],
            'count' => true,
        ),$epay_min_money2jindou,$epay_max_jindou2jinbi);

        $page['item_count'] = $memberCount;   //获取统计数据

        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条




        $shijizhipei = $epay_operate_data==null?$kezhipei:$epay_operate_data['shijizhipei'];
        $shijihuilv =  number_format($shijizhipei/$pingtai_weiyongjindou,2);
        $lilunhuilv = number_format($kezhipei/$pingtai_weiyongjindou,2);

        foreach ($memberJinbis as $k => $v) {
            $memberJinbis[$k]['shijijinbi'] =  $memberJinbis[$k]['weiyongjindou']*$shijihuilv;
            $memberJinbis[$k]['lilunjinbi'] =  $memberJinbis[$k]['weiyongjindou']*$lilunhuilv;
        }

        $this->assign('jinriliushui',$jinriliushui);
        $this->assign('jinrichoucheng',$jinrichoucheng);
        $this->assign('members',$memberJinbis);
        $this->assign('kezhipei',$kezhipei);
        $this->assign('membercount',$memberCount);
        $this->assign('shijizhipei',$shijizhipei);
        $this->assign('shijihuilv',$shijihuilv);
        $this->assign('lilunhuilv',$lilunhuilv);
        $this->display('today.html');
        return;
    }

    /**
     * 作用:显示已更新完成的页面
     * 参数:当前运营情况
     * Created by QQ:710932
     */
    private function _showCancelPage($epay_operate_data){
        $page = $this->_get_page(2);
        $epay_jinbi_log_mod = &m('epay_jinbi_log');
        $epay_jinbi_log_data = $epay_jinbi_log_mod->find(array(
            'fields' => '*',
            'conditions'=>'operate_id='.$epay_operate_data['id'],
            'limit'=>$page['limit'],
            'count' => true,
        ));
        $page['item_count'] = $epay_jinbi_log_mod->getCount();   //获取统计数据

        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条



        $this->assign('liushui',$epay_operate_data['liushui']);
        $this->assign('choucheng',$epay_operate_data['choucheng']);
        $this->assign('kezhipei',$epay_operate_data['kezhipei']);
        $this->assign('shijizhipei',$epay_operate_data['shijizhipei']);
        $this->assign('count',$epay_operate_data['count']);
        $this->assign('admin_name',$epay_operate_data['admin_name']);
        $this->assign('add_time',$epay_operate_data['add_time']);
        $this->assign('fenpei_time',$epay_operate_data['fenpei_time']);
        $this->assign('status',$epay_operate_data['status']);
        $this->assign('members',$epay_jinbi_log_data);

        $this->display('todaycancel.html');
        return;
    }
    /**
     * 作用:返回最后一个奖励分配时间
     * Created by QQ:710932
     */
    private function _getLastFenPeiTime(){
        $epay_operate_mod = &m('epay_operate');
        $epay_operate_data = $epay_operate_mod->get(array(
            'fields' => 'fenpei_time',
            'conditions' => "status=1",
            'order'=>'fenpei_time desc',
        ));

        if($epay_operate_data==null){
            return 0;
        }
        else{
            return $epay_operate_data['fenpei_time'];
        }

    }
    /**
     * 作用:保存今日分配金额
     * Created by QQ:710932
     */
    private function _savejine(){
        //查找epay_operate表中有没有add_time在今天的列
        $shijizhipei = $_GET['shijizhipei'];
        $now_time = gmtime();
        //今日0点0分时间戳
        $begin_time = mktime(0,0,0,date("m"),date("d"),date("Y"))-8*3600;

        $end_time = $now_time;
        $epay_operate_mod = &m('epay_operate');
        $row = $epay_operate_mod->get(array(
            'conditions'=>'add_time>='.$begin_time.' and add_time<='.$end_time,
        ));
        if($row==false){
            //保存
            $data = array(
                'shijizhipei'=>$shijizhipei,
                'add_time'=>$now_time,
                'status'=>'0',
            );

            $epay_operate_mod->add($data);
            $this->show_message('分配奖金重置成功');
            return;
        }
        else{
            //重置
            $data = array(
                'shijizhipei'=>$shijizhipei,
                'add_time'=>$now_time,
                'status'=>'0',
            );


            $result = $epay_operate_mod->edit($row['Id'],$data);

            if($result){
                $this->show_message('分配奖金重置成功');
                return;
            }
            else{
                $this->show_warning('分配奖金重置失败');
                return;
            }
        }
    }
    /**
     * 作用:返回配置文件数组
     * Created by QQ:710932
     */
    private function _setting(){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        return $setting;
    }


    /**
     * @param array $params
     * @param       $min_money2jindou 系统发放一个金豆需要消费的钱的数量,配置文件中默认(100RMB=1金豆)
     * @param       $max_jindou2jinbi 一个金豆最多可以奖励的金币数量,配置文件中默认(1金豆最多奖励60金币)
     *
     * @return mixed
     * 作用:模拟了baseModel:find()函数
     * 目的:构造$sql = "SELECT {$fields} FROM {$tables}{$conditions}{$order}{$limit}";
     * 区别:同baseModel:find()的区别是table不是一个一个表明而是我们通过左查询后构造的一个新表,已写死
     * 区别:$fields去掉了主键
     * Created by QQ:710932
     */
    function _memberJinbis($params = array(),$min_money2jindou,$max_jindou2jinbi){
        $mod = &m('epay_jinbi_log');

        extract($mod->_initFindParams($params));

        /* 字段(SELECT FROM) */
        $fields = $mod->getRealFields($fields);
        $fields == '' && $fields = '*';

        $tables = "(select
                    t1.user_id,t1.user_name,
                    t1.quanbujindou,ifnull(t2.yiyongjindou,0) as yiyongjindou,
                    (t1.quanbujindou-ifnull(t2.yiyongjindou,0)) as weiyongjindou
                from
                     (select buyer_id as user_id,buyer_name as user_name,floor(sum(order_amount)/$min_money2jindou) as quanbujindou
                      from
                        ecm_order
                      where status=40 group by user_name)as t1
                left join
                    (select user_id,user_name,floor(sum(jinbi)/$max_jindou2jinbi) as yiyongjindou from ecm_epay_jinbi_log where status=1 group by user_name) as t2
                on t1.user_id=t2.user_id) as t3";

        /* 左联结(LEFT JOIN) */
        $join_result = $mod->_joinModel($tables, $join);

        /* 条件(WHERE) */
        $conditions = $mod->_getConditions($conditions, true);

        /* 排序(ORDER BY) */
        $order && $order = ' ORDER BY ' . $mod->getRealFields($order);

        /* 分页(LIMIT) */
        $limit && $limit = ' LIMIT ' . $limit;
        if ($count)
        {
            $mod->_updateLastQueryCount("SELECT COUNT(*) as c FROM {$tables}{$conditions}");
        }

        /* 完整的SQL */
        $sql = "SELECT {$fields} FROM {$tables}{$conditions}{$order}{$limit}";

        return $mod->db->getAll($sql);
    }



    /**
     * @param $user_name
     * 作用:名为user_name的会员的历史返利额度
     * Created by QQ:710932
     */
    private function _histoyfanli($user_name){
    //todo 名为user_name的会员的历史返利额度
        return 4.03;
    }



    /**
     * @param $begin_time 昨日分成时间
     * @param $end_time  今日分成时间(当前时间)
     * 作用:今日订单总额度
     * Created by QQ:710932
     */
    private function _todayOrderAmount($begin_time,$end_time){
//        //插件中的时间都是用的time()本地时间
//        //框架中用的是gmtime()标准时间,所以需要转换
//
//        $begin_time = $begin_time - 8*6400;
//        $end_time = $end_time- - 8*6400;

        $order_mod = &m('order');
        $totalAmount = $order_mod->getOne("select sum(order_amount) from ".DB_PREFIX."order where status=40 and finished_time>".$begin_time." and finished_time<=".$end_time);
        return $totalAmount==null?0:$totalAmount;
    }
}

?>