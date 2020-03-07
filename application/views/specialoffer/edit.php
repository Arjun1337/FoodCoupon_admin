<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Special Offer</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Special offer <small>new Info</small></h2>                    
            <div class="clearfix"></div>
          </div>
           <div class="x_content">
            <form class="form-horizontal" id="special-set-form" method="post" action="javascript:;">
              <p> </p>     
              <div class="col-md-12"> 
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
                    <button id="send" type="submit" class="btn btn-success">Set As Special offer</button>
                  </div>
                </div>
              </div>              
            </form>
          </div>
          <div class="x_content">
           
            <table id="datatable" class="table table-striped table-bordered set_special_table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Restaurant</th>
                  <th>Description</th>
                  <th>Need Description</th>                  
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($foodInfos) )
                  {
                      $i=0;
                      foreach($foodInfos as $result)
                      {
                          $i++;
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><?php echo $result["name"];?></td>
                              <td><?php echo $result["resname"];?></td>
                              <td><?php echo $result["description"];?></td>
                              <td><?php echo $result["needdescription"];?></td>                              
                              <td>&nbsp;&nbsp;<!-- ff7474 -->
                                  <?php if($result["status"] == "set"){?>
                                    <a href="javascript:void(0)"><i class="fa fa-trash food_unselect" style="color:#ff7474" name= "unselect" id="<?php echo $result["id"];?>" title="Remove"></i> </a>
                                  <?php }else{?>
                                    <a href="javascript:void(0)"><i class="fa fa-square-o food_select" style="color:#ff7474" name= "select" id="<?php echo $result["id"];?>" title="Select"></i> </a>
                                  <?php }?>
                                 
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