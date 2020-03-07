<?php


class Special_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
        $this->load->model('Food_model');
        $this->load->model('Special_model');
        $this->load->model('Coupon_model');
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

    public function all()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }

        $user_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $user_name;
        $header_data['user_role'] = $this->User_model->getUserRole($user_name);
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($user_name);

        $data["foodInfos"] = $this->Special_model->getFoodsInfo();
        $data["res_groups"] = $this->Coupon_model->getResGroup();
        $data["del_res"] = "NO";        
        $this->load->view('user/common/header', $header_data);
        $this->load->view('specialoffer/edit', $data);
        $this->load->view('user/common/footer');
    }   

    public function select()
    {        
        $id = $this->input->post('id');

        echo $this->Special_model->select($id);

    }
    public function unselect()
    {        
        $id = $this->input->post('id');

        echo $this->Special_model->unselect($id);
    }
}