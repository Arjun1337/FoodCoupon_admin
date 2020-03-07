<?php


class Notification_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
        $this->load->model('Notification_model');
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

        $data["msg"]="";
        $data["error"]="";
        $result = "";
        $data['postData'] = $_POST;

        if (isset($_POST["mobile"]))
        {
            var_dump($_POST);
            // $result = $this->User_model->insert($_POST);
        }


        if ($result=="ok")
        {
            $data["msg"] = "User information added successfully";
        }elseif ($result!="")
        {
            $data["error"] = $result;
        }
        
        $data["user_groups"] = $this->Notification_model->getUserGroup();
        $this->load->view('user/common/header', $header_data);
        $this->load->view('notification/view',$data);
        $this->load->view('user/common/footer');

//        $this->load->view('user/home/login', $data);
    }
    public function send(){
        $id = $this->input->post('id');
        $message = $this->input->post('message');
        $tokens = $this->Notification_model->getTokens($id);
        
        file_put_contents('a.txt', $tokens);
        $notificationstr = $message;    
        $arr = array('registration_ids' => $tokens,  'notification' => array( 'title' => 'Food offer', 'body' =>$message ,'sound'=>'Default' , 'vibrate' => 1, 'badge' => 1));
            
        $url = 'https://fcm.googleapis.com/fcm/send';
        $fields = (array) $arr;
        define("GOOGLE_API_KEY","AAAAUJ72XKM:APA91bF-NRXRpdJ_eKYyRZ_AeFac1Ar3GD9uYGo5Z8XPLsXQUDkyY2Dl3gbhK3hG_UtkDEblIg7qe1d-QnySeLZmXbaoFIIK8W129gLrhunzfBwX1xc_8mxJR95wJZbKTxwFudKHwLDY");
        $headers = array('Authorization: key=' . GOOGLE_API_KEY,'Content-Type: application/json' );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);   
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);
        print_r("ok");
    }
   
}