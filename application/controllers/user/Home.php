<?php


class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
        $this->load->model('Food_model');
        $this->load->model('Ticket_model');
        $this->load->helper('url');
    }

    function switchLang($language = "") {
        $language = ($language != "") ? $language : "english";
        $this->session->set_userdata('site_lang', $language);
//        redirect($_SERVER['HTTP_REFERER']);
        redirect(base_url());
    }


    public function index()
    {
        $this->login_check();

        $client_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $client_name;
        $header_data['user_role'] = $this->User_model->getUserRole($client_name);
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($client_name);

        $data["user_num"] = $this->User_model->getUserNumber();
        $data["group_num"] = $this->Restaurant_model->getRestaurantNumber();
        $data["exercise_num"] = $this->Food_model->getFoodNumber();
        $data["schedule_num"] = $this->Ticket_model->getUnreadTicketNumber(); 
        $data["welcome"] = "ok";
        

        $this->load->view('user/common/header', $header_data);
        $this->load->view('user/home/dashboard', $data);
        $this->load->view('user/common/footer');
    }

    public function history()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }

        $client_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $client_name;
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($client_name);

        $this->load->view('user/common/header', $header_data);
        $this->load->view('user/home/history', $data);
        $this->load->view('user/common/footer');
    }

    protected function login_check()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }

}
