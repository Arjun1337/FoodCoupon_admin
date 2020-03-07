<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Restaurants</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Restaurants <small>All Restaurants</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
           
            <table id="datatable" class="table table-striped table-bordered delete_table_restaurant">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Image</th>
                  <th>Name</th>
                  <th>Phone</th>
                  <th>PinCode</th>
                  <th>Opentime</th>
                  <th>Address</th>
                  <th>Position</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($restaurantInfos) )
                  {
                      $i=0;
                      foreach($restaurantInfos as $result)
                      {
                          $i++;
                          $resimage = $result["logo"];
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><img style="width: 70px; height: 70px; padding: 2px; border-radius: 5px;" src="<?= base_url('')."backend/".$resimage ?>" alt="avatar"></td>
                              <td><?php echo $result["name"];?></td>
                              <td><?php echo $result["phone"];?></td>
                              <td><?php echo $result["pin"];?></td>
                              <td><?php echo $result["opentime"];?></td>
                              <td><?php echo $result["address"];?></td>
                              <td><?php echo $result["position"];?></td>
                              <td>
                                  &nbsp;&nbsp;
                                  <a href="<?= base_url("restaurant_con/edit") ?>?id=<?php echo $result["id"];?>"><i class="fa fa-edit" style="color: #1ABB9C" title="Edit Restaurant"></i> </a> &nbsp;
                                  <a href="javascript:void(0)"><i class="fa fa-trash restaurant_delete" style="color:#ff7474" id="<?php echo $result["id"];?>" title="Delete Restaurant"></i> </a>
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