<?php


class Coupon_con extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Restaurant_model');
        $this->load->model('Food_model');
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
        
        $data["user_groups"] = $this->Coupon_model->getUserGroup();
        $data["res_groups"] = $this->Coupon_model->getResGroup();

        $this->load->view('user/common/header', $header_data);
        $this->load->view('coupon/new_coupon', $data);
        $this->load->view('user/common/footer');

//        $this->load->view('user/home/login', $data);

    }
    public function getFoodid()
    {
        $postData = $this->input->post();
        $res_id = $postData['id'];
        $results = $this->Coupon_model->getFoodid($res_id);

        if($results)
        {
            $cnt=0;
            foreach($results as $row)
            {
                $str_food .= "<option value=\"".$row["id"]."\"";
                if ($exercise_id==0){
                    if ($cnt == 0)
                        $str_food .= " selected ";
                }
                else
                {
                    if ($exercise_id==$row["id"])
                        $str_food .= " selected ";
                }
                $str_food .= ">".$row["name"]."</option>";

                $cnt++;
            }
        }
        echo $str_food;
    }

    public function add(){
        $result = $this->Coupon_model->insert($_POST);
        // // $data['postData'] = $_POST;
        print_r($result);
    }

    public function update(){ 
        $id = $_POST["id"];
        file_put_contents('a.txt', $id);
       
        $result = $this->Coupon_model->update($id,$_POST);
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


        $data["couponInfos"] = $this->Coupon_model->getCouponsInfo();
        $data["del_res"] = "NO";        
        $this->load->view('user/common/header', $header_data);
        $this->load->view('coupon/all', $data);
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
        $data["result"] = $this->Coupon_model->getCoupon($id);
        $data["res_groups"] = $this->Coupon_model->getResGroup();

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
        $this->load->view('coupon/edit', $data);
        $this->load->view('user/common/footer');        
    } 

    public function delete()
    {        
        $id = $this->input->post('id');

        echo $this->Coupon_model->delete($id);

    }
}