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
            <h2>Restaurants <small>Add New Restaurant</small></h2>                    
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form class="form-horizontal" id="restaurant-form" method="post" action="javascript:;">
              <p> </p>
              <div class="col-md-3">
                <center>
                    <div class="restaurant_logo_img">
                        <label>Restaurant Logo</label>
                        <label class="label thumbnail" data-toggle="tooltip" style="width: 230px; height: 230px; padding: 5px;">
                            <div class="view view-first" style="width: 220px;" id="div-avatar-change">
                                <img class="rounded img-responsive avatar-view" id="res-logo-img" name="image"
                                     src="<?php echo $default_res_logo ?>" alt="Restaurant logo">
                                <div class="mask">
                                    <p></p>
                                    <p></p>
                                    <p>Restaurant Logo</p>
                                    <p></p>
                                    <div class="tools tools-bottom" id="pen-avatar-change">
                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                    </div>
                                </div>
                            </div>
                            <input type="file" class="sr-only" id="input-res-logo-change" 
                                   accept="image/*" style="width: 220px">
                        </label>
                        <label>Restaurant Image</label>
                        <label class="label thumbnail" data-toggle="tooltip" style="width: 230px; height: 230px; padding: 5px;">

                            <div class="view view-first" style="width: 220px;" id="div-avatar-change">
                                <img class="rounded img-responsive avatar-view" id="res-img" name="image"
                                     src="<?php echo $default_res ?>" alt="Restaurant">
                                <div class="mask">
                                    <p></p>
                                    <p></p>
                                    <p>Restaurant Image</p>
                                    <p></p>
                                    <div class="tools tools-bottom" id="pen-avatar-change">
                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                    </div>
                                </div>
                            </div>
                            <input type="file" class="sr-only" id="input-res-change" 
                                   accept="image/*" style="width: 220px">
                        </label>                        
                        <div class="alert" role="alert"></div>

                        <div class="modal fade" id="logomodal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
                                        <button type="button" class="btn btn-primary" id="logocrop">OK</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </center>
              </div>
              <div class="col-md-9">
                <br/>
                <br/>
                <br/>
                <br/>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_name" class="form-control col-md-7 col-xs-12" name="name" placeholder="Restaurant Name" required="required" type="text">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_name">
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_ar_name" style="text-align: right;" class="form-control col-md-7 col-xs-12" name="ar_name" placeholder="اسم المطعم" required="required" type="text">
                  </div>
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="res_mobile">Phone Number <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="tel" id="res_mobile" name="res_mobile" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>     

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">Address <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_address" class="form-control col-md-7 col-xs-12" name="address" placeholder="Restaurant Address" required="required" type="text">
                  </div>
                </div>
                
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_address">
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_ar_address" style="text-align: right;" class="form-control col-md-7 col-xs-12" name="ar_address" placeholder="عنوان المطعم" required="required" type="text">
                  </div>
                </div>

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Latitude <span class="required">*</span>
                  </label>
                  <div class="col-md-3 col-sm-3 col-xs-12">
                    <input id="res_latitude" class="form-control col-md-7 col-xs-12"  name="name" placeholder="Position:Latitude(0.0000)" disabled="disabled" type="text">
                  </div>
                   <label class="control-label col-md-1" for="name">Longtitude <span class="required">*</span>
                  </label>
                  <div class="col-md-3 col-sm-3 col-xs-12">
                    <input id="res_longtitude" class="form-control col-md-7 col-xs-12"  name="name" placeholder="Position:Longtitude(0.0000)" disabled="disabled" type="text">
                  </div>
                </div>
                 <?php
                    // date_default_timezone_set('Russia/moscow');
                    $today = date("Y-m-d");
                    $now = date("H:00");
                  ?> 

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Open Time <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">                    
                      <div class="col-xs-5">
                          <input type="time" name="time" class="form-control" id="starttime" required="required"  value="00:00" autocomplete="off">
                      </div>
                      <div class="col-xs-1">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">~</label>
                      </div>
                      <div class="col-xs-5">
                          <input type="time" name="time" class="form-control" id="endtime" required="required"  value="00:00" autocomplete="off">
                      </div>
                   
                  </div>
                </div>     

                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="res_pincode">PinCode <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="number" id="res_pincode" name="number" placeholder="e.g 1234" required="required" data-validate-minmax="1000,9999" class="form-control col-md-7 col-xs-12">
                  </div>
                </div>      
               
               <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Description <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_description"  class="form-control col-md-7 col-xs-12" name="description" placeholder="Restaurant description" required="required" type="text">
                  </div>
                </div>
                <div class="item form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ar_description">
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="res_ar_description" style="text-align: right;" class="form-control col-md-7 col-xs-12" name="ar_description" placeholder="وصف" required="required" type="text">
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
  <div id="map" hidden="true"></div>
    <div id="infowindow-content" hidden="true">
      <img src="" width="16" height="16" id="place-icon">
      <span id="place-name"  class="title"></span><br>
      <span id="place-address"></span>
    </div>
</div>
<script>var canvas_pic; var is_change=0; var is_sel=0;</script>
<script>
    window.addEventListener('DOMContentLoaded', function () {      

        var reslogoimg = document.getElementById('res-logo-img');
        var resimg = document.getElementById('res-img');        
        var image = document.getElementById('image');
        var logoinput = document.getElementById('input-res-logo-change');

        var resinput = document.getElementById('input-res-change');
        var $alert = $('.alert');
        var $logomodal = $('#logomodal');
        var cropper;

        $('[data-toggle="tooltip"]').tooltip();

        logoinput.addEventListener('change', function (e) {
            is_sel=0;
            var files = e.target.files;
            var done = function (url) {
                // input.value = '';
                image.src = url;
                $alert.hide();
                $logomodal.modal('show');
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

        resinput.addEventListener('change', function (e) {
          is_sel=1;
            var files = e.target.files;
            var done = function (url) {
                // input.value = '';
                image.src = url;
                $alert.hide();
                $logomodal.modal('show');
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

        $logomodal.on('shown.bs.modal', function () {
            cropper = new Cropper(image, {
                aspectRatio: NaN,
                viewMode: 1,
            });
        }).on('hidden.bs.modal', function () {
            cropper.destroy();
            cropper = null;
        });

        document.getElementById('logocrop').addEventListener('click', function () {
            var initialAvatarURL;

            $logomodal.modal('hide');

            if (cropper) {
              if(is_sel==0){
                is_change = 1;
                canvas_pic = cropper.getCroppedCanvas({
                    width: 220,
                    height: 220,
                });
                reslogoimg.src = canvas_pic.toDataURL();                
                $alert.removeClass('alert-success alert-warning');
              }
              if(is_sel==1){
                is_change = 1;
                canvas_pic = cropper.getCroppedCanvas({
                    width: 220,
                    height: 220,
                });
                resimg.src = canvas_pic.toDataURL();               
                $alert.removeClass('alert-success alert-warning');
              }
                
            }
        });
    });
</script>

<script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -33.8688, lng: 151.2195},
          zoom: 13
        });
        
        var input = document.getElementById('res_address');
        var getlocation = document.getElementById('res_latitude');
        var getlocation1 = document.getElementById('res_longtitude');
        
        
        var autocomplete = new google.maps.places.Autocomplete(input);

        // Bind the map's bounds (viewport) property to the autocomplete object,
        // so that the autocomplete requests use the current map bounds for the
        // bounds option in the request.
        autocomplete.bindTo('bounds', map);

        // Set the data fields to return when the user selects a place.
        autocomplete.setFields( ['address_components', 'geometry', 'icon', 'name']);

        var infowindow = new google.maps.InfoWindow();
        var infowindowContent = document.getElementById('infowindow-content');
        infowindow.setContent(infowindowContent);
         var marker = new google.maps.Marker({
          map: map,
          anchorPoint: new google.maps.Point(0, -29)
        });

        autocomplete.setTypes([]);
        autocomplete.addListener('place_changed', function() {
          infowindow.close();
          marker.setVisible(false);
          var place = autocomplete.getPlace();
          if (!place.geometry) {
            // User entered the name of a Place that was not suggested and
            // pressed the Enter key, or the Place Details request failed.
            window.alert("No details available for input: '" + place.name + "'");
            return;
          }
          // If the place has a geometry, then present it on a map.
          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);  // Why 17? Because it looks good.
          }
          getlocation.value = place.geometry.location.lat(); 
          getlocation1.value = place.geometry.location.lng(); 
        });
       
        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
      }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBA0L3zpWA9bXsZdhWkByuPuOtxKz_aHCo&libraries=places&callback=initMap"
    async defer></script>