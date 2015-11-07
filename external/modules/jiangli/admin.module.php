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
        $setting = $this->_setting();

        //平台注册人数
        $memberCount = $histoyliushui = $this->_memberCount();
        echo '共有注册会员:'.$memberCount.'人<br>';

        //平台历史流水
        $histoyliushui = $this->_histoyliushui();
        echo '历史流水总和:'.$histoyliushui.'元<br>';

        //平台有过购买历史的人数
        $orderMemberCount = $this->_orderMemberCount();
        echo '共有:'.$orderMemberCount.'人在平台消费过<br><br>';

        //获取上一次奖励分配的时间 并检查是否在今天
        $begin_time = $setting['epay_fenpei_last_time'];
        $end_time = time();
        $begin_Day= date('Y-m-d H:i:s',$begin_time);
        $end_Day = date('Y-m-d H:i:s',$end_time);
        $orderArray = $this->_memberOrderColl();
        
        $todayOrderAmount = $this->_todayOrderAmount($begin_time,$end_time);
        $choucheng = $this->_choucheng($todayOrderAmount);
        $jiangjin = $this->_usedJiangjin($choucheng);
        var_dump($orderArray);
        echo '从'.$begin_Day.'到'.$end_Day.'<br>';
        echo '共有:'.sizeof($orderArray).'人购物<br>';
        echo '消费总额:'.$todayOrderAmount.'元<br>';
        echo '平台抽成:'.$choucheng.'元<br>';
        echo '可支配奖金:'.$jiangjin.'元<br>';

        foreach ($orderArray as $k => $v) {
            echo "会员:".$v['user_name'];
            echo "<br>历史消费:".$v['lishixiaofei'];
            $fanli = $v['lishixiaofei']/$histoyliushui*$jiangjin;
            echo "<br>本次返利:".$fanli;
            echo "<br><br><br>";
        }


        //上一次分配人数

        //上一次
//        $this->assign('memberCount',$memberCount);
//        $this->assign('last_time',$begin_time);
//        $this->display('index.html');
    }


    /**
     * 作用:当天分配奖励
     * 页面初始化:预览模式
     * get请求,写入数据库,得到最终结果
     * Created by QQ:710932
     */
    function today(){
        $shijizhipei = $_GET['shijizhipei'];

        $setting = $this->_setting();
        //平台分配金币占平台利润比例
        $lirun_fenpei_ratio = $setting['epay_lirun_fenpei_ratio'];

        //一个金豆转换金币最大值
        $max_jindou2jinbi = $setting['epay_max_jindou2jinbi'];

        //获得一个金豆需要在平台消费
        $min_money2jindou = $setting['epay_min_money2jindou'];

        //最后一次分配时间
        $last_fenpei_time = $setting['epay_fenpei_last_time'];

        //当前时间
        $now_time = time();

        /*今天平台流水*/
        $jinriliushui = $this->_todayOrderAmount($last_fenpei_time,$now_time);

        /*今日抽成*/
        $jinrichoucheng = $jinriliushui*$setting['epay_trade_charges_ratio'];

        /*今日可支配资金*/
        $kezhipei = $jinrichoucheng*$setting['epay_lirun_fenpei_ratio'];

        /*今日持有未用金币人员数量*/
        $memberCount = $this->_memberJinbis(array(
            'fields' => 'count(*) as memberCount',
            'conditions' => "weiyongjindou!=0",
        ),$min_money2jindou,$max_jindou2jinbi);
        //参与金币分红的人员个数
        $memberCount = $memberCount[0]['memberCount'];

        /*平台所有人员的未用金币之和*/
        $pingtai_weiyongjindou = $this->_memberJinbis(array(
            'fields' => 'sum(weiyongjindou) as weiyongjindou',
            'conditions' => "weiyongjindou!=0",
        ),$min_money2jindou,$max_jindou2jinbi);
        $pingtai_weiyongjindou = $pingtai_weiyongjindou[0]['weiyongjindou'];

        //保存模式
        if($shijizhipei != null){

            /*今天的数据写入epay_operate*/
            $epay_operate_data = array(
                //liushui	choucheng	kezhipei	shijizhipei	count	admin_name	add_time	fenpei_time	status
                'liushui'=>$jinriliushui,
                'choucheng'=>$jinrichoucheng,
                'kezhipei'=>$kezhipei,
                'shijizhipei'=>$shijizhipei,
                'count'=>$memberCount,
                'admin_name'=>$this->visitor->get('user_name'),
                'add_time'=>$now_time,
                'fenpei_time'=>$now_time,
                'status' => 1,
            );
            $epay_operate_mod = &m('epay_operate');
            $epay_operate_mod->add($epay_operate_data);


            /*每个会员分配情况保存到数据库中*/
            $memberJinbis = $this->_memberJinbis(array(
                'fields' => '*',
                'conditions' => "weiyongjindou!=0",
                'count' => true,
            ),$min_money2jindou,$max_jindou2jinbi);

            /*今天一个金豆可以获得$today_jindou2jinbi个金币分红-汇率*/
            $today_jindou2jinbi = number_format($shijizhipei/$pingtai_weiyongjindou,2);
            foreach ($memberJinbis as $k => $v) {
                $memberJinbis[$k]['jinbi'] =  $memberJinbis[$k]['weiyongjindou']*$today_jindou2jinbi;
            }

            $epay_jinbi_log_mod = &m('epay_jinbi_log');
            foreach ($memberJinbis as $k => $v) {
                $epay_jinbi_log_data = array(
                    //id	user_id	user_name	jinbi	add_time	status
                    'user_id'=>$memberJinbis[$k]['user_id'],
                    'user_name'=>$memberJinbis[$k]['user_name'],
                    'jinbi'=>$memberJinbis[$k]['jinbi'],
                    'add_time'=>$now_time,
                    'status'=>1,
                );
                $epay_jinbi_log_mod->add($epay_jinbi_log_data);
            }

        }else{//预览模式
            $page = $this->_get_page(100);
            $sort = 'weiyongjindou';
            $order = 'desc';
            $memberJinbis = $this->_memberJinbis(array(
                'fields' => '*',
                'conditions' => "weiyongjindou!=0",
                'limit' => $page['limit'],
                'order' => "$sort $order",
                'count' => true,
            ),$min_money2jindou,$max_jindou2jinbi);

            /*今天一个金豆可以获得$today_jindou2jinbi个金币分红-汇率*/
            $today_jindou2jinbi = number_format($kezhipei/$pingtai_weiyongjindou,2);
            foreach ($memberJinbis as $k => $v) {
                $memberJinbis[$k]['jinbi'] =  $memberJinbis[$k]['weiyongjindou']*$today_jindou2jinbi;
            }



            $page['item_count'] = $memberCount;
            $this->_format_page($page);
            $this->assign('page_info', $page);

            $this->assign('pingtai_weiyongjindou',$pingtai_weiyongjindou);
            $this->assign('jindouhuilv',$today_jindou2jinbi);
            $this->assign('jinriliushui',$jinriliushui);
            $this->assign('jinrichoucheng',$jinrichoucheng);
            $this->assign('kezhipei',$kezhipei);
            $this->assign('membercount',$memberCount);
            $this->assign('members',$memberJinbis);

            $this->import_resource(array(
                'style'=>'AdminLTE/plugins/datatables/dataTables.bootstrap.css',
                'script' => 'AdminLTE/plugins/jQuery/jQuery-2.1.4.min.js',
            ));
            //   var_dump($page);
            $this->display("today.html");
            //通过所有金豆数和已用金豆数计算可用金豆数
            return;
        }
    }


    /**
     * 作用:查看用户历史分配
     * Created by QQ:710932
     */
    function history(){
        //todo 返利历史数据
        echo '历史';
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
     * 作用:返回配置文件数组
     * Created by QQ:710932
     */
    private function _setting(){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        return $setting;
    }

    /**
     * @static
     * 作用:平台中有过购买历史的人数
     * Created by QQ:710932
     */
    private  function _orderMemberCount(){
        $order_mod = &m('order');
        $memberArray = $order_mod->getAll("select * from ".DB_PREFIX."order where status=40  group by buyer_id");
        return sizeof($memberArray);
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
     * 作用:返回平台的历史流水
     * Created by QQ:710932
     */
    private  function  _histoyliushui(){
        $order_mod = &m('order');
        $histoyliushui = $order_mod->getOne('select sum(order_amount) from fangou.ecm_order where status=40');
        return $histoyliushui;
    }

    /**
     * @return mixed
     * 作用:返回最后一次奖励分配的时间戳
     * Created by QQ:710932
     */
    private function _lasttime(){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        return $setting['jiangli_last_time'];
    }

    /**
     * @param $lishixiaofei会员的历史消费总额
     *
     * @return mixed理论上应该返给会员的最多返利
     * 作用:应该给用户的最大返利的额度
     * Created by QQ:710932
     */
    private function _maxfanli($lishixiaofei){
            $model_setting = &af('settings');
            $setting = $model_setting->getAll(); //载入系统设置数据
            return $setting['jiangli_maxfanli_ratio']*$lishixiaofei;
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
     * 作用:在历史上所有会员的订单消费金额的集合
     * Created by QQ:710932
     */
    private function _memberOrderColl(){
        $order_mod = &m('order');
        $order_data = $order_mod->getAll("select buyer_id as user_id,buyer_name as user_name,sum(order_amount) as lishixiaofei from ".DB_PREFIX."order where status=40  group by buyer_id ");
        return $order_data;
    }

    /**
     * @param $todayOrderAmount
     *
     * @return mixed
     * 作用:计算平台抽成
     * Created by QQ:710932
     */
    private function _choucheng($todayOrderAmount){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        $epay_trade_charges_ratio = $setting['epay_trade_charges_ratio'];
        return $todayOrderAmount*$epay_trade_charges_ratio;
    }


    /**
     * @param $choucheng平台抽成所得
     *
     * @return mixed拿出来用于奖金分配的资金
     * 作用:根据平台抽成和奖金分配比例计算可支配资金
     * Created by QQ:710932
     */
    private function _usedJiangjin($choucheng){
        $model_setting = &af('settings');
        $setting = $model_setting->getAll(); //载入系统设置数据
        $jiangjinBili = $setting['jiangli_pingtai_profit_ratio'];
        return $choucheng*$jiangjinBili;
    }
    /**
     * @param $begin_time 昨日分成时间
     * @param $end_time  今日分成时间
     * 作用:今日订单总额度
     * Created by QQ:710932
     */
    private function _todayOrderAmount($begin_time,$end_time){
        $order_mod = &m('order');
        $totalAmount = $order_mod->getOne("select sum(order_amount) from ".DB_PREFIX."order where status=40 and finished_time>".$begin_time." and finished_time<=".$end_time);
        return $totalAmount;
    }

    /**
     * 作用:返回平台的注册会员数量
     * Created by QQ:710932
     */
    private function  _memberCount(){

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

        return $index_key ? $mod->db->getAllWithIndex($sql, $index_key) :
            $mod->db->getAll($sql);
    }

}

?>