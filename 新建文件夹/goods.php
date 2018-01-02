<?php

// 商品控制器
class goods extends baseControl{
    public function info(){
        $this->delimiter();
        $id = $_GET['id'];
        if ($id>0) {
            $info = $this->model("goods")->getInfoById($id);
            $this->assign('info_json',json_encode($info));
            $this->display();
        }
    }
    public function getCommentList(){
        $info = $this->model("goods")->getComment($_REQUEST['good_id']);
        print_r(json_encode($info));
    }
    public function top(){
        $this->display();
    }
    public function summary(){
        $this->display();
    }
    public function comment(){
        $this->display();
    }
}

