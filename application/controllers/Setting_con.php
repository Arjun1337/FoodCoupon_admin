<?php


class Setting_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Setting_model');
        $this->load->model('Food_model');
        $this->load->helper('url');
    }

    function switchLang($language = "") {
        $language = ($language != "") ? $language : "english";
        $this->session->set_userdata('site_lang', $language);
        redirect(base_url());
    }

    public function index()
    {

    }

    public function update(){ 
        $id = $_POST["id"];
        $result = $this->Setting_model->update($id,$_POST);
        // $data['postData'] = $_POST;     
        echo $result;
    }
  

    public function setting()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }

        $user_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $user_name;
        $header_data['user_role'] = $this->User_model->getUserRole($user_name);
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($user_name);
    

        $data["result"] = $this->Setting_model->getSettingInfo();       

        $this->load->view('user/common/header', $header_data);
        $this->load->view('setting/setting', $data);
        $this->load->view('user/common/footer');
    } 
   
}