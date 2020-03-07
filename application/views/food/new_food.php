<style type="text/css">
  .form-control {    
    padding: 0px 10px;
    
  }
</style>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Offers</h3>
      </div>              
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Offer <small>Add New</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="food-form" method="post" action="javascript:;">
              <p> </p>
              <div class="col-md-3">
                <center>
                    <div class="profile_img">
                        <label class="label thumbnail" data-toggle="tooltip" style="width: 230px; height: 230px; padding: 5px;">
                            <div class="view view-first" style="width: 220px;" id="div-avatar-change">
                                <img class="rounded img-responsive avatar-view" id="food-img" name="image"
                                     src="<?php echo $default_avatar ?>" alt="avatar">
                                <div class="mask">
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                    <div class="tools tools-bottom" id="pen-avatar-change">
                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                    </div>
                                </div>
                            </div>
                            <input type="file" class="sr-only" id="input-avatar-change" 
                                   accept="image/*" style="width: 220px">
                        </label>
                        <div class="alert" role="alert"></div>
                        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabel">Crop the image</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body" style="width: 360px; height: 360px;">
                                        <div class="img-container">
                                            <img id="image" style="width: 400px; height: 360px" src="">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                        <button type="button" class="btn btn-primary" id="crop">OK</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                </center>
              </div>
              <div class="col-md-9">
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="resname">Restaurant<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <select name="group" class="form-control" required="required"  id="res_group">
                            <!-- <option value="">--Group--</option> -->
                            <?php
                            foreach ($groups as $group) {
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
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="food_name" class="form-control col-md-7 col-xs-12" name="name" placeholder="food(English)" required="required" type="text">
                  </div>
                </div>
                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_name"></span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="food_ar_name" class="form-control col-md-7 col-xs-12" style="text-align: right;" name="ar_name" placeholder="عربى" required="required" type="text">
                  </div>
                </div>

                

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Offer Description <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                   <textarea class="form-control" rows="5" name="description" id="description" required="required"></textarea>
                  </div>
                </div> 
                 <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_description"></span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                   <textarea class="form-control" rows="5" name="ar_description" id="ar_description" style="text-align: right;"  placeholder="عربى" required="required"></textarea>
                  </div>
                </div> 

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="needdescription">Offer Need Description <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <textarea class="form-control" rows="5" name="needdescription" id="needdescription"  required="required"> </textarea>
                  </div>
                </div> 
                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_needdescription"></span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                   <textarea class="form-control" rows="5"  name="ar_needdescription" id="ar_needdescription" style="text-align: right;" placeholder="عربى" required="required"></textarea>
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
<script>var canvas_pic; var is_change=0;</script>
<script>
    window.addEventListener('DOMContentLoaded', function () {      

        var avatar = document.getElementById('food-img');
        var image = document.getElementById('image');
        var input = document.getElementById('input-avatar-change');
        var $alert = $('.alert');
        var $modal = $('#modal');
        var cropper;

        $('[data-toggle="tooltip"]').tooltip();

        input.addEventListener('change', function (e) {

            // if($("#edit_profile").text()!="Save "){
            //     return false;
            // }


            var files = e.target.files;
            var done = function (url) {
                // input.value = '';
                image.src = url;
                $alert.hide();
                $modal.modal('show');
            };
            var reader;
            var file;
            var url;

            if (files && files.length > 0) {
                file = files[0];

                if (URL) {
                    done(URL.createObjectURL(file));
                } else if (FileReader) {
                    reader = new FileReader();
                    reader.onload = function (e) {
                        done(reader.result);
                    };
                    reader.readAsDataURL(file);
                }
            }
        });

        $modal.on('shown.bs.modal', function () {
            cropper = new Cropper(image, {
                aspectRatio: NaN,
                viewMode: 1,
            });
        }).on('hidden.bs.modal', function () {
            cropper.destroy();
            cropper = null;
        });

        document.getElementById('crop').addEventListener('click', function () {
            var initialAvatarURL;

            $modal.modal('hide');

            if (cropper) {
                is_change = 1;
                canvas_pic = cropper.getCroppedCanvas();
                avatar.src = canvas_pic.toDataURL();
                $alert.removeClass('alert-success alert-warning');
            }
        });
    });
</script>