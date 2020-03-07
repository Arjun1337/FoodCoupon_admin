<?php


class Payment_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
        $this->load->model('Payment_model');
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
    public function getUserWallet()
    {
        $postData = $this->input->post();
        $user_id = $postData['id'];
        $results = $this->Payment_model->getUsersWallet($user_id);
        echo $results["wallet"];
    }  

    public function payment()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }

        $user_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $user_name;
        $header_data['user_role'] = $this->User_model->getUserRole($user_name);
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($user_name);

        $data['user_info'] = $this->User_model->getUserInfo($this->User_model->getUserId($user_name));
        $data['user_avatar'] = $this->User_model->getUserAvatar($user_name);       
        $data['sessions'] = $this->User_model->getSessions($user_name);
        
        $data["user_groups"] = $this->Payment_model->getUserGroup();
        $data["billing"] = $this->Payment_model->getBillingHistory();
        $this->load->view('user/common/header', $header_data);
        $this->load->view('user/payment', $data);
        $this->load->view('user/common/footer');
//        $this->load->view('user/home/login', $data);

    }
    public function add(){
        $result = $this->Payment_model->update($_POST);
        // // $data['postData'] = $_POST;
        print_r($result);
    }

    public function delete()
    {        
        $id = $this->input->post('id');
        echo $this->Payment_model->delete($id);
    }
}