<?php
/**
 * Created by PhpStorm.
 * User: xiaokang
 * Date: 2015/12/16
 * Time: 17:25
 */
//本地服务
class Chanel_bendifuwuAPP extends BackendApp{

    var $mod_bendifuwu_store;

    function __construct()
    {
        $this->Chanel_bendifuwuAPP();
    }

    function Chanel_bendifuwuAPP()
    {
        parent::BackendApp();
        $this->mod_bendifuwu_store= &m('bendifuwu_store');
    }

    function index(){
        $conditions = $this->_get_query_conditions(array(array(
            'field' => 'store_name',
            'equal' => 'LIKE',
            'assoc' => 'AND',
            'name'  => 'store_name',
            'type'  => 'string',
        ),
        ));

        $page = $this->_get_page(10);   //获取分页信息
        $stores=$this->mod_bendifuwu_store->find(array(
            'conditions'    => '1=1' . $conditions,
            'limit'         => $page['limit'],
            'order' => "add_time desc",
            'count'         => true
        ));

        $page['item_count']=$this->mod_bendifuwu_store->getCount();   //获取统计数据
        $this->_format_page($page);
        $this->assign('page_info', $page);   //将分页信息传递给视图，用于形成分页条

        $this->assign('store_list',$stores);
        $this->assign('filtered', $conditions? 1 : 0); //是否有查询条件
        $this->display('chanel_bendifuwu.index.html');
    }

    //新增时检查数据完整性
    function check_data(){
        $data = array();
        $data['store_name']     =   trim($_POST['store_name']);
        $data['store_url']     =   trim($_POST['store_url']);
        $data['introduce']    =   trim($_POST['introduce']);

        $data['sort']     =   intval($_POST['sort']);
        $data['recommended']    =   intval($_POST['recommended']);
        $data['state'] 		=   intval($_POST['state']);
        return $data;
    }

    /**
     * @param $file图片
     * @param $store_id 店铺(公司)ID
     *
     * @return bool
     * 作用:
     * Created by QQ:710932
     */
    function  _upload_image($file,$store_id){
        if ($file['error'] == UPLOAD_ERR_NO_FILE) // 没有文件被上传
        {
            //$this->show_warning('图片不能为空','go_back', 'index.php?app=channel_bendifuwu&amp;act=add');
            return false;
        }
        import('uploader.lib');             //导入上传类
        $uploader = new Uploader();
        $uploader->allowed_type(IMAGE_FILE_TYPE); //限制文件类型
        $uploader->addFile($file);//上传logo
        if (!$uploader->file_info())
        {
            $this->show_warning($uploader->get_error() , 'go_back', 'index.php?app=channel_bendifuwu&amp;act=add');
            return false;
        }
        /* 指定保存位置的根目录 */
        $uploader->root_dir(ROOT_PATH);

        /* 上传 */
        if ($file_path = $uploader->save('data/files/mall/bendifuwu/'.$store_id,   $uploader->random_filename()))   //保存到指定目录，
        {
            return $file_path;
        }
        else
        {
            return false;
        }
    }

    /**
     * @param $store_id
     * 作用:上传所有的图片
     * Created by QQ:710932
     */
    function _upload_allimage($store_id){
        $data = array();
        $data['store_logo'] = $this->_upload_image($_FILES['store_logo'],$store_id);
        $data['banner'] = $this->_upload_image($_FILES['banner'],$store_id);
        return $data;
    }

    /**
     * @param $dir
     *
     * @return bool
     * 作用:删除文件夹及其下面所有内容
     * Created by QQ:710932
     */
    function deldir($dir) {
        //先删除目录下的文件：
        $dh=opendir($dir);
        while ($file=readdir($dh)) {
            if($file!="." && $file!="..") {
                $fullpath=$dir."/".$file;
                if(!is_dir($fullpath)) {
                    unlink($fullpath);
                } else {
                    deldir($fullpath);
                }
            }
        }

        closedir($dh);
        //删除当前文件夹：
        if(rmdir($dir)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 作用:新增
     * Created by QQ:710932
     */
    function add(){
        if(!IS_POST){
            /* 显示新增表单 */
            $this->import_resource(array(
                'script' => 'jquery.plugins/jquery.validate.js'
            ));
            $this->display('chanel_bendifuwu.form.html');
            return;
        }

        $data = $this->check_data();

        $data['add_time'] = gmtime();
        $data['edit_time'] = $data['add_time'];

        if (!$store_id = $this->mod_bendifuwu_store->add($data))  //获取brand_id
        {
            $this->show_warning($this->mod_bendifuwu_store->get_error());
            return;
        }

        $imagedata = $this->_upload_allimage($store_id);

        $data = array_merge($data,$imagedata);
        if($this->mod_bendifuwu_store->edit($store_id,$data) == false){
            //删除记录
            $this->mod_bendifuwu_store->drop($store_id);
            $this->drop_file($store_id);
        }

        $this->show_message('成功');
        return;
    }

    function  drop_file($store_id){
        $path = ROOT_PATH;
        $path = $path.'/data/files/mall/bendifuwu/'.$store_id;
        $this->deldir($path);
    }

    function drop(){
        $store_ids = isset($_GET['id']) ? trim($_GET['id']) : '';
        if (!$store_ids)
        {
            $this->show_warning('请选择后再删除');
            return;
        }

        $store_ids=explode(',',$store_ids);
        $this->mod_bendifuwu_store->drop($store_ids);
        if ($this->mod_bendifuwu_store->has_error())    //删除
        {
            $this->show_warning($this->_brand_mod->get_error());
            return;
        }

        foreach ($store_ids as $k => $store_id) {
            $this->drop_file($store_id);
        }

        $this->show_message('删除成功');
    }

    function edit(){
        $store_id = isset($_GET['id']) ? intval($_GET['id']) : 0;
        if (!$store_id)
        {
            $this->show_warning('请勿非法提交');
            return;
        }

        if(!IS_POST){
            $find_data     = $this->mod_bendifuwu_store->find($store_id);
            if (empty($find_data))
            {
                $this->show_warning('没有找到店铺信息');
                return;
            }
            //第一个
            $store    =   current($find_data);

            if ($store['store_logo'])
            {
                $store['store_logo']  =   dirname(site_url()) . "/" . $store['store_logo'];
            }
            if ($store['banner'])
            {
                $store['banner']  =   dirname(site_url()) . "/" . $store['banner'];
            }


            $this->import_resource(array(
                'script' => 'jquery.plugins/jquery.validate.js'
            ));
            $this->assign('store', $store);
            $this->display('chanel_bendifuwu.form.html');
            return;
        }


        $data = $this->check_data();

        $imagedata = $this->_upload_allimage($store_id);
        if($imagedata['store_logo'] != null){
            $data['store_logo'] = $imagedata['store_logo'];
        }
        if($imagedata['banner'] != null){
            $data['banner'] = $imagedata['banner'];
        }



        $data['edit_time'] = gmtime();
        if($this->mod_bendifuwu_store->edit($store_id,$data) == false){
            $this->show_warning('修改失败');
            return;
        }

        $this->show_message('修改成功');
        return;
    }


}