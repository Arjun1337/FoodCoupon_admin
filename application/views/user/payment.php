<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Payment</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Deposite <small>Payment</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="payment-form" method="post" action="javascript:;">
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
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userwallet">Current Wallet(E£)</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_wallet" disabled="true" class="form-control col-md-7 col-xs-12" name="userwallet" placeholder="0" required="required" type="text">
                  </div>
                </div>  

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userpayvalue">Charge Amount(E£)</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="user_payvalue" class="form-control col-md-7 col-xs-12" name="userpayvalue" placeholder="0" required="required" type="number">
                  </div>
                </div>                           
               
                <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-md-offset-3">                    
                    <button id="send" type="submit" class="btn btn-success">Deposite</button>
                  </div>
                </div>
              </div>              
            </form>
          </div>
          <div class="x_content">
            <span class="section">Transaction History</span>
            <table id="datatable" class="table table-striped table-bordered delete_table_billing">
              <thead>
                <tr>
                  <th>#</th>
                  <th>UserName</th>
                  <th>PayDate</th>
                  <th>Transaction</th>
                  <th>amount</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($billing))
                  {
                      $i=0;
                      foreach($billing as $result)
                      {
                          $i++;
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><?php echo $result["username"];?></td>
                              <td><?php echo $result["paydate"];?></td>
                              <td><?php echo $result["transaction"];?></td>
                              
                              <?php if($result["type"] =="income"){?>
                              <td style="color: #1ABB9C"><?php echo $result["amount"]; ?></td><?php }else{?>
                              <td style="color: #ff7474" ><?php echo "-".$result["amount"]; ?></td><?php }?>

                              <td>
                                  &nbsp;&nbsp;                                  
                                  <a href="javascript:void(0)"><i class="fa fa-trash payment_delete" style="color:#ff7474" id="<?php echo $result["id"];?>" title="Delete Transaction"></i> </a>
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
