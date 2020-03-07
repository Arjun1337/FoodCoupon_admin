<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Sub Administrator</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Update<small> Sub Administrator</small>    </h2>                 
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="subamdmin-update-form" method="post" action="javascript:;">
              <p> </p>           
              <div class="col-md-12"> 
              <div class="item form-group" hidden="true">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="food_id">ID <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_id" class="form-control col-md-7 col-xs-12" name="food_id" value="<?php echo $_GET['id'];?>" required="required" type="text">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">UserName*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" value="<?php echo $adminInfo['user_name'];?>" class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Email*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_email" class="form-control col-md-7 col-xs-12" name="userwallet" value="<?php echo $adminInfo['email'];?>" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Full Name*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_fname"  class="form-control col-md-7 col-xs-12" name="userwallet" value="<?php echo $adminInfo['full_name'];?>" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Phone Number*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_mobile" class="form-control col-md-7 col-xs-12" name="userwallet" value="<?php echo $adminInfo['phone_number'];?>" required="required" type="text">
                  </div>
                </div>  
               
                <div class="ln_solid"></div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Role*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="checkbox" value="1" id ="edit_user" <?php if($adminInfo['edituser'] =="yes"){echo "checked";} ?>> Edit users and add funds<br>
                        <input type="checkbox" value="2" id ="add_res" <?php if($adminInfo['addrestaurant'] =="yes"){echo "checked";} ?>> Add Restaurant<br>
                        <input type="checkbox" value="3" id ="edit_res" <?php if($adminInfo['editrestaurant'] =="yes"){echo "checked";} ?>> Edit Restaurant<br>
                        <input type="checkbox" value="4" id ="add_food" <?php if($adminInfo['addfood'] =="yes"){echo "checked";} ?>> Add Foods<br>
                        <input type="checkbox" value="5" id ="edit_food" <?php if($adminInfo['editfood'] =="yes"){echo "checked";} ?>> Edit Foods<br>
                        <input type="checkbox" value="6" id ="add_special" <?php if($adminInfo['addspecialoffer'] =="yes"){echo "checked";} ?>> Add Special offer<br>
                      </div>
                    </div> 
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">
                      <a href="<?= base_url("subadmin_con/all") ?>"><button type="button" class="btn">Cancel</button></a>                       
                    <button id="send" type="submit" class="btn btn-success">Update</button>
                  </div>
                </div>
              </div>              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>