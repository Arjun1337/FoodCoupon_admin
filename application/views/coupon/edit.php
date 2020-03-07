<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Coupons</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Coupons <small>Change Coupon Info</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="coupon-change-form" method="post" action="javascript:;">
              <p> </p>
              <div class="col-md-12">
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="coupon_id">ID <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="coupon_id" class="form-control col-md-7 col-xs-12" name="coupon_id" value="<?php echo $_GET['id'];?>" required="required" type="text" disabled="true">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">User(Mobile:Name) <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" placeholder="both name(s) e.g Jon Doe" value="<?php echo $result["usermobile"]." : ".$result["username"];?>" required="required" type="text" disabled="true">
                  </div>
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="resname">Restaurant <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <select name="resname" class="form-control" required="required"  id="res_id">
                        <!-- <option value="">--Group--</option> -->
                        <?php
                        foreach ($res_groups as $group) {
                            # code...
                            ?>
                            <option value="<?php echo $group["id"]; ?>" <?php if ($result["resid"]==$group["id"]){?>
                                    selected
                                <?php } ?>
                              >
                                <?php echo $group["name"]; ?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="foodname">Food <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <select name="foodname" class="form-control" required="required"  id="food_id">                        
                    </select>
                  </div>
                </div>  
               
                <div class="ln_solid"></div>
                                
                  <div class="col-md-6 col-md-offset-3">
                    <a href="<?= base_url("coupon_con/all") ?>"><button type="button" class="btn">Cancel</button></a>
                    <button id="send" type="submit" class="btn btn-success">Change</button>
                  </div>

               
              </div>              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
