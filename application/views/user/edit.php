<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Users</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Users <small>Update User Info</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">

            <form class="form-horizontal" id="update-user-form" method="post" action="javascript:;">
              <p> </p>
              <div class="col-md-3">
                <center>
                  <?php $avatar = $result["avatar"];?>
                  <div class="profile_img">
                      <label class="label thumbnail" data-toggle="tooltip" style="width: 230px; height: 230px; padding: 5px;">
                          <div class="view view-first" style="width: 220px;" id="div-avatar-change">
                              <img class="rounded img-responsive avatar-view" id="food-img" name="image"
                                   src="<?= base_url('')."backend/".$avatar ?>" alt="avatar">
                          </div>                          
                      </label>                      
                  </div>   
              </center>
              </div>
              <div class="col-md-9">
                <div class="item form-group" hidden="true">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="user_id">ID <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_id" class="form-control col-md-7 col-xs-12" name="user_id" value="<?php echo $_GET['id'];?>" required="required" type="text">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" class="form-control col-md-7 col-xs-12" name="name" placeholder="both name(s) e.g Jon Doe" value="<?php echo $result["name"];?>" required="required" type="text">
                  </div>
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Phone Number <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="tel" id="mobile" name="mobile" required="required" disabled="true"  data-validate-length-range="8,20" value="<?php echo $result["mobile"];?>" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="wallet">Wallet <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="number" id="wallet" name="wallet" placeholder="e.g 12345678" step = "0.01" required="required" value="<?php echo $result["wallet"];?>" data-validate-minmax="0.00,9999.99" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>  

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">password <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="userpassword" type="text" value="<?php echo $result["password"];?>" name="password" data-validate-length="6,100" class="form-control col-md-7 col-xs-12" required="required">
                  </div>
                </div>      

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="startdate">Start Date <span class="required">*</span>
                  </label> 
                  <div class="col-md-6 xdisplay_inputx">
                     <input type="date" name="startdate" class="form-control" id="startdate" required="required"  value="<?php echo $result["startdate"];?>" autocomplete="off">
                   </span>
                  </div>          
                </div>
                  <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="expiredate">Expire Date <span class="required">*</span>
                  </label> 
                  <div class="col-md-6 ">
                    <input type="date" name="expiredate" class="form-control" id="expiredate" required="required"  value="<?php echo $result["expiredate"];?>" autocomplete="off">
                  </div>          
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="promocode">Promocode <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="number" id="promocode" name="number" placeholder="e.g 12345678" required="required" value="<?php echo $result["promocode"];?>" data-validate-minmax="10000000,99999999" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>      
               
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">               
                    <a href="<?= base_url("user_con/all") ?>"><button type="button" class="btn">Cancel</button></a>  
                    <button id="Update" type="submit" class="btn btn-success">Update</button>
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