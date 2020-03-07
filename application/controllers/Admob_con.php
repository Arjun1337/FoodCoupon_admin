<?php


class Admob_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Admob_model');
        $this->load->helper('url');
    }

    function switchLang($language = "") {
        $language = ($language != "") ? $language : "english";
        $this->session->set_userdata('site_lang', $language);
        redirect(base_url());
    }   

    public function update(){
        $nowTime=new DateTime();
	    $filedate = new DateTime();
	    
	    
       if($_POST['is_admob1'] ==1){
            $admob1filename ="backend/image/admob/admob1".$filedate.".jpg";
            $admob1databasename = "image/admob/admob1".$filedate.".jpg";
            $id=1;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob1'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }
        if($_POST['is_admob2'] ==1){
            $admob1filename ="backend/image/admob/admob2".$filedate.".jpg";
            $admob1databasename = "image/admob/admob2".$filedate.".jpg";
            $id=2;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob2'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob3'] ==1){
            $admob1filename ="backend/image/admob/admob3".$filedate.".jpg";  
            $admob1databasename = "image/admob/admob3".$filedate.".jpg";
            $id=3;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob3'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob4'] ==1){
            $admob1filename ="backend/image/admob/admob4".$filedate.".jpg";
            $admob1databasename = "image/admob/admob4".$filedate.".jpg";
            $id=4;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob4'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob5'] ==1){
            $admob1filename ="backend/image/admob/admob5".$filedate.".jpg"; 
            $admob1databasename = "image/admob/admob5".$filedate.".jpg";
            $id=5;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob5'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob6'] ==1){
            $admob1filename ="backend/image/admob/admob6".$filedate.".jpg";
            $admob1databasename = "image/admob/admob6".$filedate.".jpg";
            $id=6;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob6'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob7'] ==1){
            $admob1filename ="backend/image/admob/admob7".$filedate.".jpg"; 
            $admob1databasename = "image/admob/admob7".$filedate.".jpg";
            $id=7;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob7'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob8'] ==1){
            $admob1filename ="backend/image/admob/admob8".$filedate.".jpg";
            $admob1databasename = "image/admob/admob8".$filedate.".jpg";
            $id=8;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob8'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob9'] ==1){
            $admob1filename ="backend/image/admob/admob9".$filedate.".jpg"; 
            $admob1databasename = "image/admob/admob9".$filedate.".jpg";
            $id=9;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob9'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob10'] ==1){
            $admob1filename ="backend/image/admob/admob10".$filedate.".jpg";   
            $admob1databasename = "image/admob/admob10".$filedate.".jpg";
            $id=10;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob10'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob11'] ==1){
            $admob1filename ="backend/image/admob/admob11".$filedate.".jpg"; 
            $admob1databasename = "image/admob/admob11".$filedate.".jpg";
            $id=11;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob11'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        if($_POST['is_admob12'] ==1){
            $admob1filename ="backend/image/admob/admob12".$filedate.".jpg"; 
            $admob1databasename = "image/admob/admob12".$filedate.".jpg";
            $id=12;
            $this->Admob_model->updateadmob($id,$admob1databasename);
            $admob1ifp = fopen( $admob1filename, 'wb' );      
            $admob1data = explode( ',', $_POST['admob12'] );        
            fwrite( $admob1ifp, base64_decode( $admob1data[ 1 ] ) );        
            fclose( $admob1ifp );
        }     
        
        $result = "ok";
        // $data['postData'] = $_POST; 
              
 
        print_r($result);
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

        $data["admobs"] = $this->Admob_model->getAdmob();
        $data["del_res"] = "NO";
        $this->load->view('user/common/header', $header_data);
        $this->load->view('admob/edit', $data);
        $this->load->view('user/common/footer');
    } 
}