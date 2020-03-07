<?php


class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->helper('url');
    }

    function switchLang($language = "") {
        $language = ($language != "") ? $language : "english";
        $this->session->set_userdata('site_lang', $language);
        redirect(base_url());
    }

    public function index()
    {
        $data['lg_msg']='';

        $postData=$this->input->post();
        if (isset($postData['lgin_username'])&&isset($postData['lgin_password']))
        {
            $result = $this->User_model->loginCheck($postData);
            if ($result=="ok") {
                $this->session->set_userdata('client_logged_in', $postData['lgin_username']);
                redirect(base_url()+"/home");
            }
            elseif ($result=="wait")
            {
                redirect(base_url());
                // echo $result;
            }
            else if ($result=="no_user")
            {
                redirect(base_url());
                // echo "Unregistered user";
            }
            else
            {
                redirect(base_url());
                // echo "Wrong password";
            }
            exit;
        }

        $this->load->view('user/home/login', $data);

    }

    public function register()
    {
        // print_r($this->input->post());
        $result=$this->User_model->register($this->input->post());
        echo $result;
    }
    public function delete()
    {        
        $id = $this->input->post('id');

        echo $this->User_model->admindelete($id);

    }

    private function getUserIpAddr(){
        if(!empty($_SERVER['HTTP_CLIENT_IP'])){
            //ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
            //ip pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }else{
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
    

}