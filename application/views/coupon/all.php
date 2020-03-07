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
            <h2>Coupons <small>All Coupons</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
           
            <table id="datatable" class="table table-striped table-bordered delete_table_coupon">
              <thead>
                <tr>
                  <th>#</th>
                  <th>CouponID</th>
                  <th>User</th>
                  <th>Restaurant</th>
                  <th>Food</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($couponInfos) )
                  {
                      $i=0;
                      foreach($couponInfos as $result)
                      {
                          $i++;
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><?php echo $result["id"];?></td>
                              <td><?php echo $result["username"];?></td>
                              <td><?php echo $result["resname"];?></td>
                              <td><?php echo $result["foodname"];?></td>                          
                              <td>
                                  &nbsp;&nbsp;
                                  <a href="<?= base_url("coupon_con/edit") ?>?id=<?php echo $result["id"];?>"><i class="fa fa-edit" style="color: #1ABB9C" title="Edit Coupon"></i> </a> &nbsp;
                                  <a href="javascript:void(0)"><i class="fa fa-trash coupon_delete" style="color:#ff7474" id="<?php echo $result["id"];?>" title="Delete Coupon"></i> </a>
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