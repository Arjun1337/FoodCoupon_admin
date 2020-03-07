<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Tickets</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>ticket <small>View Ticket</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="coupon-change-form" method="post" action="javascript:;">
              <p> </p>
              <span class="section">View Ticket</span>
              <div class="col-md-12">                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">UserName <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" placeholder="both name(s) e.g Jon Doe" value="<?php echo $ticket["username"];?>" required="required" type="text" disabled="true">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">User Phone <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" placeholder="both name(s) e.g Jon Doe" value="<?php echo $ticket["usermobile"];?>" required="required" type="text" disabled="true">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Title <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" placeholder="both name(s) e.g Jon Doe" value="<?php echo $ticket["title"];?>" required="required" type="text" disabled="true">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Message <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <textarea class="form-control" rows="5" name="needdescription" disabled="true" id="needdescription"><?php echo $ticket["message"];?> </textarea>                                   
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">
                    <a href="<?= base_url("ticket_con/all") ?>"><button type="button" class="btn">Cancel</button></a> 
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
