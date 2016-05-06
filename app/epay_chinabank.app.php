<?php

/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2016/5/6
 * Time: 23:52
 */
class Epay_chinabankApp extends MallbaseApp
{
    var $mod_epay;
    var $mod_order;
    var $mod_epaylog;
    var $mod_epay_bank;

    function __construct()
    {
        $this->Epay_chinabankApp();
    }

    function Epay_chinabankApp()
    {
        parent::__construct();
        $this->mod_epay = &m('epay');
        $this->mod_order = &m('order');
        $this->mod_epaylog = & m('epaylog');
        $this->mod_epay_bank = & m('epay_bank');
    }


    function writelog($txt)
    {
        $myfile = fopen("app/newfile1.txt", "a");
        fwrite($myfile, $txt);
        fclose($myfile);
    }

    function chinabank_return_notify_url()
    {
        $key = Conf::get('epay_chinabank_key');

        $v_oid = trim($_POST['v_oid']);       // 商户发送的v_oid定单编号
        $v_pstatus = trim($_POST['v_pstatus']);   //  支付状态 ：20（支付成功）；30（支付失败）
        $v_pstring = trim($_POST['v_pstring']);   //提示中文"支付成功"字符串
        $v_pmode = trim($_POST['v_pmode']);    // 支付方式（字符串）
        $v_md5str = trim($_POST['v_md5str']);   //拼凑后的MD5校验值
        $v_amount = trim($_POST['v_amount']);     // 订单实际支付金额
        $v_moneytype = trim($_POST['v_moneytype']); //订单实际支付币种
        $remark1 = trim($_POST['remark1']);      //备注字段1
        $remark2 = trim($_POST['remark2']);     //备注字段2

        //重新计算md5的值
        $md5string = strtoupper(md5($v_oid . $v_pstatus . $v_amount . $v_moneytype . $key));

        //校验MD5 开始//校验MD5 IF括号
        if ($v_md5str == $md5string) {
            if ($v_pstatus == "20") {
                //根据用户订单号，获取充值者的ID
                $row_epay_log = $this->mod_epaylog->get("order_sn='$v_oid'");

                if (empty($row_epay_log) || $row_epay_log['complete'] == '1') {
                    $this->writelog('已经完成');
                    echo 'ok';
                }

                //获取用户的余额
                $user_id = $row_epay_log['user_id'];
                $row_epay = $this->mod_epay->get("user_id='$user_id'");
                //计算新的余额
                $total_fee = $v_amount;   //获取总价格
                $old_money = $row_epay['money'];
                $new_money = $old_money + $total_fee;
                $edit_money = array(
                    'money' => $new_money,
                );
                $this->mod_epay->edit('user_id=' . $user_id, $edit_money);
                //修改记录
                $edit_epaylog = array(
                    'add_time' => gmtime(),
                    'money' => $total_fee,
                    'complete' => 1,
                    'states' => 61,
                );
                $this->mod_epaylog->edit('order_sn=' . '"' . $v_oid . '"', $edit_epaylog);

                //根据用户返回的 order_sn 判断是否为订单
                $order_info = $this->mod_order->get('order_sn=' . $v_oid);

                if (!empty($order_info)) {
                    //如果存在订单号  则自动付款
                    $order_id = $order_info['order_id'];


                    $row_epay = $this->mod_epay->get("user_id='$user_id'");
                    $buyer_name = $row_epay['user_name']; //用户名
                    $buyer_old_money = $row_epay['money']; //当前用户的原始金钱
                    //从定单中 读取卖家信息
                    $row_order = $this->mod_order->get("order_id='$order_id'");
                    $order_order_sn = $row_order['order_sn']; //定单号
                    $order_seller_id = $row_order['seller_id']; //定单里的 卖家ID
                    $order_money = $row_order['order_amount']; //定单里的 最后定单总价格
                    //读取卖家SQL
                    $seller_row = $this->mod_epay->get("user_id='$order_seller_id'");
                    $seller_id = $seller_row['user_id']; //卖家ID
                    $seller_name = $seller_row['user_name']; //卖家用户名
                    $seller_money_dj = $seller_row['money_dj']; //卖家的原始冻结金钱
                    //检测余额是否足够
                    if ($buyer_old_money < $order_money) {   //检测余额是否足够 开始
                        echo 'ok';
                    }


                    //扣除买家的金钱
                    $buyer_array = array(
                        'money' => $buyer_old_money - $order_money,
                    );
                    $this->mod_epay->edit('user_id=' . $user_id, $buyer_array);

                    //更新卖家的冻结金钱
                    $seller_array = array(
                        'money_dj' => $seller_money_dj + $order_money,
                    );
                    $seller_edit = $this->mod_epay->edit('user_id=' . $seller_id, $seller_array);


                    //买家添加日志
                    $buyer_log_text = '购买商品店铺' . $seller_name;
                    $buyer_add_array = array(
                        'user_id' => $user_id,
                        'user_name' => $buyer_name,
                        'order_id' => $order_id,
                        'order_sn ' => $order_order_sn,
                        'to_id' => $seller_id,
                        'to_name' => $seller_name,
                        'add_time' => gmtime(),
                        'type' => EPAY_BUY,
                        'money_flow' => 'outlay',
                        'money' => $order_money,
                        'log_text' => $buyer_log_text,
                        'states' => 20,
                    );
                    $this->mod_epaylog->add($buyer_add_array);
                    //卖家添加日志
                    $seller_log_text = '出售商品买家' . $buyer_name;
                    $seller_add_array = array(
                        'user_id' => $seller_id,
                        'user_name' => $seller_name,
                        'order_id' => $order_id,
                        'order_sn ' => $order_order_sn,
                        'to_id' => $user_id,
                        'to_name' => $buyer_name,
                        'add_time' => gmtime(),
                        'type' => EPAY_SELLER,
                        'money_flow' => 'income',
                        'money' => $order_money,
                        'log_text' => $seller_log_text,
                        'states' => 20,
                    );
                    $this->mod_epaylog->add($seller_add_array);
                    //改变定单为 已支付等待卖家确认  status10改为20
                    $payment_code = "zjgl";
                    //更新定单状态
                    $order_edit_array = array(
                        'payment_name' => '余额支付',
                        'payment_code' => $payment_code,
                        'pay_time' => gmtime(),
                        'out_trade_sn' => $order_order_sn,
                        'status' => 20, //20就是 待发货了
                    );
                    $this->mod_order->edit($order_id, $order_edit_array);
                }
            }
            echo 'ok';
        }

        $this->writelog('md5错误');
        echo 'error';
    }

    function chinabank_return_notify_url11()
    {
        $this->writelog("laile");

        echo "error";
    }
    }
