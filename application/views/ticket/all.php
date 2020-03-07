<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Ticket</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Ticket <small>All ticket</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
           
            <table id="datatable" class="table table-striped table-bordered ticket_table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>UserName</th>
                  <th>title</th>
                  <th>Message</th>
                  <th>Date</th>                  
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
               <?php
                  if( !empty($allticket) )
                  {
                      $i=0;
                      foreach($allticket as $result)
                      {
                          $i++;
                          ?>
                          <tr>                             
                              <td><?php echo $i;?></td>
                              <td><?php echo $result["username"];?></td>
                              <td><?php echo $result["title"];?></td>
                              <td><?php
                                if(strlen($result["message"])>50){
                                  echo substr($result["message"],0,50)." ...";
                                }
                                else{
                                  echo $result["message"];
                                }
                              ?></td>
                              <td><?php echo $result["senddate"];?></td>                              
                              <td>
                                &nbsp;&nbsp;
                                <a href="<?= base_url("ticket_con/view") ?>?id=<?php echo $result["id"];?>"><i class="fa fa-edit" style="color: #1ABB9C" title="View Ticket"></i> </a> &nbsp;
                                <a href="javascript:void(0)"><i class="fa fa-trash ticket_delete" style="color:#ff7474" id="<?php echo $result["id"];?>" title="Delet Ticket"></i> </a>
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