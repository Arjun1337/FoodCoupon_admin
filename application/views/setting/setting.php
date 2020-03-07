<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Setting</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Setting <small>All Info</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="setting-form" method="post" action="javascript:;">
              <p> </p>             
              <div class="col-md-12">
                <div class="item form-group" hidden="true">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="settingid">setting ID<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="settingid" class="form-control col-md-7 col-xs-12" value="<?php echo $result["id"];?>" name="settingid" placeholder="0" required="required" type="number">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Contact Email<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="email" class="form-control col-md-7 col-xs-12" value="<?php echo $result["contactemail"];?>" name="email" placeholder="admin@gmail.com" required="required" type="text" step ="0.001">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="mobile">Contact Phone number<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="mobile" class="form-control col-md-7 col-xs-12" value="<?php echo $result["contactmobile"];?>" name="mobile" placeholder="+20234567890" required="required" type="tel" step ="0.001">
                  </div>
                </div> 
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="monthly">Monthly/(E£)<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="monthly" class="form-control col-md-7 col-xs-12" value="<?php echo $result["monthlypay"];?>" name="monthly" placeholder="0" required="required" type="number" step ="0.001">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="yearly">yearly/(E£)<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="yearly" value="<?php echo $result["yearlypay"];?>" class="form-control col-md-7 col-xs-12" name="yearly" placeholder="0" required="required" type="number" step ="0.001">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="erate">Exchange Rate<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="erate" value="<?php echo $result["exchangerate"];?>" class="form-control col-md-7 col-xs-12" name="erate" placeholder="0" required="required" type="number" step ="0.001">
                  </div>
                </div>  
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uinvite">Invite Value:User/(E£)<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="uinvite" value="<?php echo $result["userinvite"];?>" class="form-control col-md-7 col-xs-12" name="uinvite" placeholder="0" required="required" type="number" step ="0.001">
                  </div>
                </div>    
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cinvite">Invite Value:Client/(E£)<span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="cinvite" value="<?php echo $result["clientinvite"];?>" class="form-control col-md-7 col-xs-12" name="cinvite" placeholder="0" required="required" type="number" step ="0.001">
                  </div>
                </div>                             
               
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">
                    <button id="send" type="submit" class="btn btn-success">Change</button>
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
