<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Push Notification</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Notification <small>Send New Notification</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="notification-form" method="post" action="javascript:;">
              <p> </p>            
              <div class="col-md-12">                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">User (Mobile:Name) <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <select name="username" class="form-control" required="required"  id="user_id">
                         <option value="all">All Users</option> 
                         <option value="premium">Premium Users</option> 
                         <option value="free">Free Users</option> 
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
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="message">Notification <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <textarea class="form-control" rows="5" name="message" id="message"  required="required"> </textarea>
                    </div>
                </div>
               
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">                    
                    <button id="send" type="submit" class="btn btn-success">S E N D</button>
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
