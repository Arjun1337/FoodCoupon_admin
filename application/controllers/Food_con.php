<?php


class Food_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
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
        $data['default_avatar'] = "data:image/png;base64,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";


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
        
        $data["groups"] = $this->Food_model->getGroup();

        $this->load->view('user/common/header', $header_data);
        $this->load->view('food/new_food', $data);
        $this->load->view('user/common/footer');

//        $this->load->view('user/home/login', $data);

    }

    public function add(){
        $nowTime=new DateTime();
	    $filedate = time();
        $result = $this->Food_model->insert($_POST,$filedate);
        // // $data['postData'] = $_POST;
        
        $filename ="backend/image/food/".$_POST['resid'].trim($_POST['name']).$filedate.".jpg";       
        $ifp = fopen( $filename, 'wb' );      
        $data = explode( ',', $_POST['foodimg'] );        
        fwrite( $ifp, base64_decode( $data[ 1 ] ) );        
        fclose( $ifp );
        print_r($result);
    }

    public function update(){
        $nowTime=new DateTime();	
	    $filedate = time();
        $id = $_POST["id"];
        file_put_contents('a.txt', $id);
       
        $result = $this->Food_model->update($id,$_POST);
        // $data['postData'] = $_POST;     
        if($_POST['is_change'] == 1){
             $result = $this->Food_model->updateimage($id,$_POST,$filedate);
            $filename ="backend/image/food/".$_POST['resid'].trim($_POST['name']).$filedate.".jpg";
            $ifp = fopen( $filename, 'wb' );      
            $data = explode( ',', $_POST['foodimg'] );        
            fwrite( $ifp, base64_decode( $data[ 1 ] ) );        
            fclose( $ifp ); 
            $result = "ok";
        }
        echo $result;
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

        $data["foodInfos"] = $this->Food_model->getFoodsInfo();
        $data["del_res"] = "NO";        
        $this->load->view('user/common/header', $header_data);
        $this->load->view('food/all', $data);
        $this->load->view('user/common/footer');

    }   

    public function edit()
    {
        if (!$this->session->userdata('client_logged_in')) {
            redirect('login');
        }

        $user_name = $this->session->userdata('client_logged_in');
        $header_data['username'] = $user_name;
        $header_data['user_role'] = $this->User_model->getUserRole($user_name);
        $header_data['user_avatar'] = $this->User_model->getUserAvatar($user_name);
    
        $id = $_GET["id"];
        $data["result"] = $this->Food_model->getFood($id);
        $data["groups"] = $this->Food_model->getGroup();

        $data["msg"]="";
        $data["error"]="";
        $result = "";

        if (isset($_POST["submit"]))
        {
            $result = $this->User_model->update($id, $_POST);
        }

        if ($result=="ok")
        {
            $data["msg"] = "User information changed successfully";
        }elseif ($result!="")
        {
            $data["error"] = $result;
        }        

        $this->load->view('user/common/header', $header_data);
        $this->load->view('food/edit', $data);
        $this->load->view('user/common/footer');
    } 

    public function delete()
    {        
        $id = $this->input->post('id');

        echo $this->Food_model->delete($id);

    }
}