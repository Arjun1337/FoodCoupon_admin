<?php


class User_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function loginCheck($values)
    {
        $username = $values['lgin_username'];
        $password = $values['lgin_password'];

        $this->db->where('user_name', $username);
        $result = $this->db->get('anas_admin');

        if ($result->num_rows()==0)
        {
            return "no_user";
        }

        $this->db->select('allow_status');
        $this->db->where('user_name', $username);
        $this->db->where('password', $password);
        $result = $this->db->get('anas_admin');

        if ($result->num_rows()==0)
        {
            return "wrong_password";
        }

        $status = $result->row_array();
        if ($status['allow_status']==0)
            return "wait";
        return "ok";
    }


    public function getUserNumber()
    {
        $this->db->where('role', 'user');
        $result = $this->db->get('anas_user');
        return $result->num_rows();
    }

    public function getUsersInfo()
    {
        $query = $this->db->select('*')
                    ->from('anas_user')                    
                    ->get();
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
    }

    public function getUser($id=0)
    {
        $this->db->select('*');
        $this->db->from('anas_user');
        $this->db->where('role', 'user');

        if ($id!=0)
            $this->db->where('id', $id);

        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
        }
        else
            return false;
    }

    public function delete($id)
    {
        $this->db->where('userid', $id);
        $this->db->delete('anas_coupon');

        $this->db->where('userid', $id);
        $this->db->delete('anas_billing');

        $this->db->where('userid', $id);
        $this->db->delete('anas_coupon_history');

        $this->db->where('userid', $id);
        $this->db->delete('anas_favorite');


        $this->db->where('id', $id);
        $this->db->delete('anas_user');

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }
    
     public function admindelete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('anas_admin');

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }

     public function insert($post)
    {
        
        $username=trim($post['name']);
        $password=$post['password'];
        $mobile=$post['mobile'];
        $role="user";
        $avatar = "image/profile/".$mobile.".jpg";
        $staus = "free";
        $startdate=$post['startdate'];
        $expiredate=$post['expiredate'];
        $promocode=$post['promocode'];  
        $language = "English";
        $wallet=$post['wallet'];
        $avatarimage = $post['avatar'];


        $this->db->select('*');
        $this->db->from('anas_user');
        $this->db->where('mobile', $mobile);
        $query = $this->db->get();

        if ($query->num_rows()>0)
        {
            return "already";
        }

        $data = array(
            'name' => $username,
            'password' => $password,
            'mobile' => $mobile,
            'role' => $role,
            'avatar' => $avatar,
            'status' => $staus,
            'startdate' =>$startdate,
            'expiredate' => $expiredate,
            'promocode' => $promocode,
            'language' => $language,
            'wallet' => $wallet
        );

        $this->db->insert('anas_user', $data);

        if ($this->db->affected_rows())
            return "ok";
        else
            return "fail";
    }

    public function update($id, $post)
    {               
        $username=$post['name'];
        $password=$post['password'];
        $startdate=$post['startdate'];
        $expiredate=$post['expiredate'];
        $promocode=$post['promocode']; 
        $wallet=$post['wallet'];

        $data = array(
            'name' => $username, 
            'password' => $password,            
            'startdate' =>$startdate,
            'expiredate' => $expiredate,
            'promocode' => $promocode,            
            'wallet' => $wallet
        );
        $this->db->where('id', $id);
        $this->db->update('anas_user', $data);
        return "ok";
    }


    public function register($postData)
    {
        $reg_data = array(
            'user_name' => $postData['username'],
            'email' => $postData['email'],
            'full_name'=> $postData['fullname'],
            'password' => $postData['password'],
            'phone_number' => $postData['phone_number'],
            'role' => 'user',
            'edituser' => $postData['edituser'],
            'addrestaurant' => $postData['addres'],
            'editrestaurant' => $postData['editres'],
            'addfood' => $postData['addfood'],
            'editfood' => $postData['editfood'],
            'addspecialoffer' =>$postData['addspecial'],
            'allow_status' => '0'          
        );
        // print_r($reg_data);


        $this->db->select('*');
        $this->db->from('anas_admin');
        $this->db->where('user_name', $postData['username']);
        $query = $this->db->get();
        
        if ($query->num_rows()>0)
        {
            // var_dump("already");
            return "already";
        }

        $this->db->insert('anas_admin', $reg_data);

        if ($this->db->affected_rows())
            return "ok";
        else
            return "fail";
             
    }

    public function updateUserInfo($postData)
    {
        $update_data = array(
            'email' => $postData['email'],
            'full_name'=> $postData['full_name'],
            'phone_number' => $postData['phone_number']
        );
        $result = $this->db->get_where('anas_admin', $update_data);
        if ($result->num_rows()>0)
            return "already";

        $this->db->where('user_name', $postData['user_name']);
        $this->db->update('anas_admin', $update_data);

        if ($this->db->affected_rows()>0)
            return "ok";

        return "fail";
    }

    public function updateUserInfoByAdmin($postData)
    {

        $result = $this->db->get_where('anas_admin', $postData);
        if ($result->num_rows()>0)
            return "already";

        $this->db->where('id', $postData['id']);
        $this->db->update('anas_admin', $postData);

        if ($this->db->affected_rows()>0)
            return "success";

        return "fail";
    }

    public function updateUserMembership($user_name, $member_id){
        $arr = array('membership_id'=> $member_id, 'member_update_date'=> date("Y-m-d") );
        $user_id = $this->getUserId($user_name);
        $this->db->where('id', $user_id);
        $this->db->update('anas_admin', $arr);
    }

    public function password_update($user_name, $postData)
    {
        $this->db->where('user_name', $user_name);
        $this->db->where('password', $postData['old_password']);
        $this->db->update('anas_admin', array('password' =>$postData['password']));

        if ($this->db->affected_rows()>0)
            return "ok";
        else
            return "fail";

    }

    public function getUserInfo($id)
    {
        $this->db->select('u.*')
            ->from('anas_admin as u')
            ->where('u.id', $id);
            
        $result = $this->db->get();

//        print_r($id);exit;
        return $result->row_array();
    }
   
    public function getUserId($user_name)
    {
        $this->db->select("id");
        $this->db->where('user_name', $user_name);
        $result = $this->db->get('anas_admin');
        $result = $result->row_array();

        return $result['id'];
    }

    public function getUserAvatar($username)
    {
        $this->db->select('user_avatar');
        $this->db->where('user_name', $username);
        $result = $this->db->get('anas_admin');

        if ($result->num_rows()>0)
        {
            return $result->row_array();
        }

        return false;
    }
    
    public function getUserRole($username)
    {
        $this->db->select('*');
        $this->db->where('user_name', $username);
        $result = $this->db->get('anas_admin');

        if ($result->num_rows()>0)
        {
            return $result->row_array();
        }

        return false;
    }

    public function setSession($user_name, $ip, $country)
    {

        $arr = array(
            'user_id' => $this->getUserId($user_name),
            'time' => date('Y-m-d H:i:s'),
            'ip' => $ip,
            'country' => $country
        );

        $this->db->insert('anas_session', $arr);
    }

    public function getSessions($user_name)
    {
        $user_id = $this->getUserId($user_name);

        $this->db->select('*');
        $this->db->where('user_id', $user_id);
        $result2 = $this->db->get('anas_session');

        if ($result2->num_rows()==0)
        {
            return false;
        }
        return $result2->result_array();
    }
 
    public function changeUserAvatar($username, $postData)
    {
        $this->db->where('user_name', $username);
        $this->db->update('anas_admin', array('user_avatar'=> $postData['image']));
    }

}
