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
            <h2>Coupons <small>Add New Coupon</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="coupon-form" method="post" action="javascript:;">
              <p> </p>
              <div class="col-md-12">                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">User (Mobile:Name) <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <select name="username" class="form-control" required="required"  id="user_id">
                        <!-- <option value="">--Group--</option> -->
                        <?php
                        foreach ($user_groups as $group) {
                            # code...
                            ?>
                            <option value="<?php echo $group["id"]; ?>">
                                <?php echo $group["mobile"]."  :  ".$group["name"]; ?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
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
                            <option value="<?php echo $group["id"]; ?>">
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
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">                    
                    <button id="send" type="submit" class="btn btn-success">A D D</button>
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
