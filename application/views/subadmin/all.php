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
            <h2>Add<small>New Sub Administrator</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="subamdmin-form" method="post" action="javascript:;">
              <p> </p>           
              <div class="col-md-12"> 
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">UserName*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name"  class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Email*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_email" class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Full Name*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_fname"  class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Password*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_pass" class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Confirm Password*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_cpass" class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Phone Number*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_mobile" class="form-control col-md-7 col-xs-12" name="userwallet" required="required" type="text">
                  </div>
                </div>  
               
                <div class="ln_solid"></div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Role*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="checkbox" value="1" id ="edit_user"> Edit users and add funds<br>
                        <input type="checkbox" value="2" id ="add_res"> Add Restaurant<br>
                        <input type="checkbox" value="3" id ="edit_res"> Edit Restaurant<br>
                        <input type="checkbox" value="4" id ="add_food"> Add Foods<br>
                        <input type="checkbox" value="5" id ="edit_food"> Edit Foods<br>
                        <input type="checkbox" value="6" id ="add_special"> Add Special offer<br>
                      </div>
                    </div> 
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">                    
                    <button id="send" type="submit" class="btn btn-success">Register</button>
                  </div>
                </div>
              </div>              
            </form>
          </div>
          <div class="x_content">
           
            <table id="datatable" class="table table-striped table-bordered set_subadmin_table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>UserName</th>
                  <th>Email</th>
                  <th>Full Name</th>
                  <th>Password</th>                  
                  <th>Phone</th>
                  <th>Set Allow</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($adminInfo) )
                  {
                      $i=0;
                      foreach($adminInfo as $result)
                      {
                          $i++;
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><?php echo $result["user_name"];?></td>
                              <td><?php echo $result["email"];?></td>
                              <td><?php echo $result["full_name"];?></td>
                              <td><?php echo $result["password"];?></td>
                              <td><?php echo $result["phone_number"];?></td>                              
                              <td>&nbsp;&nbsp;<!-- ff7474 -->
                                  <?php if($result["allow_status"] == "1"){?>
                                    <a href="javascript:void(0)"><i class="fa fa-check-square-o admin_unselect" style="color:#1ABB9C" name= "unselect" id="<?php echo $result["id"];?>" title="Not Allow"></i> </a>
                                  <?php }else{?>
                                    <a href="javascript:void(0)"><i class="fa fa-square-o admin_select" style="color:#ff7474" name= "select" id="<?php echo $result["id"];?>" title="Allow"></i> </a>
                                  <?php }?>
                                  &nbsp;&nbsp;
                                  <a href="<?= base_url("subadmin_con/edit") ?>?id=<?php echo $result["id"];?>"><i class="fa fa-edit" style="color: #1ABB9C" title="Edit Subadmin"></i> </a> &nbsp;&nbsp;
                                  <a href="javascript:void(0)"><i class="fa fa-trash subadmin_delete" style="color:#ff7474" id="<?php echo $result["id"];?>" title="Delete Subadmin"></i> </a>
                                  </a>
                                 
                                  </a>
                              </td>
                          </tr>
                          <?php
                      }
                  }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>