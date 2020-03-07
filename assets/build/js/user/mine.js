
$(document).ready(function () {
	$(function($) {
		$('#table_client_session').DataTable();
		$('#table_membership_history').DataTable();
		$('#table_history').DataTable();

		var startDate = moment().subtract(6, 'days').format('YYYY-MM-DD');
		var endDate = moment().format('YYYY-MM-DD');
	});


	$(".delete_table_user").on("click", ".user_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this user?")) {

            $.ajax({
                url: base_url+'user_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){

                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });

    $(".delete_table_restaurant").on("click", ".restaurant_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this restaurantinfo?")) {

            $.ajax({
                url: base_url+'restaurant_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".delete_table_food").on("click", ".food_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this foodinfo?")) {

            $.ajax({
                url: base_url+'food_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".delete_table_coupon").on("click", ".coupon_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this couponinfo?")) {

            $.ajax({
                url: base_url+'coupon_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".delete_table_chistory").on("click", ".coupon_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this history of coupon info?")) {

            $.ajax({
                url: base_url+'chistory_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".delete_table_billing").on("click", ".payment_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this history of coupon info?")) {

            $.ajax({
                url: base_url+'payment_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    
    $(".set_subadmin_table").on("click", ".subadmin_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this subadmin?")) {

            $.ajax({
                url: base_url+'user/login/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    

    $(".ticket_table").on("click", ".ticket_delete", function () {

        var delete_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to delete this ticket?")) {

            $.ajax({
                url: base_url+'ticket_con/delete' ,
                type: 'POST',
                data: {id: delete_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });

    $(".set_special_table").on("click", ".food_select", function () {

        var select_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to select this food to special offer?")) {

            $.ajax({
                url: base_url+'special_con/select' ,
                type: 'POST',
                data: {id: select_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".set_special_table").on("click", ".food_unselect", function () {

        var unselect_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to unselect this food to special offer?")) {

            $.ajax({
                url: base_url+'special_con/unselect' ,
                type: 'POST',
                data: {id: unselect_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });

	$(".set_subadmin_table").on("click", ".admin_select", function () {

        var select_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure you want to allow this subadmin?")) {

            $.ajax({
                url: base_url+'subadmin_con/select' ,
                type: 'POST',
                data: {id: select_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    $(".set_subadmin_table").on("click", ".admin_unselect", function () {

        var unselect_id = $(this).attr("id");
        var row_num = $(this).parents("tr")[0];
        if (confirm("Are you sure don't allow this subadmin?")) {

            $.ajax({
                url: base_url+'subadmin_con/unselect' ,
                type: 'POST',
                data: {id: unselect_id},
                success:
                    function(data){
                    	// alert(data)
                        // $('#example').DataTable().fnDeleteRow(row_num);
                        if (data == "success") location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });
    
    $('#subamdmin-form').on('submit', function () {
    	var username = $("#user_name").val();
    	var useremail = $("#user_email").val();
		var userfname = $("#user_fname").val();
		var userpass = $("#user_pass").val();
		var usercpass = $("#user_cpass").val();
		var usermobile = $("#user_mobile").val();
		var edituser = "no";
		var addres = "no";
		var editres = "no";
		var addfood = "no";
		var editfood = "no";
		var addspecial = "no";
		if($('#edit_user').is(':checked')){
		    edituser = "yes";
		  //  alert("edituser");
		}
		if($('#add_res').is(':checked')){
		    addres = "yes";
		  //   alert("addres");
		}
		if($('#edit_res').is(':checked')){
		    editres = "yes";
		  //   alert("editres");
		}
		if($('#add_food').is(':checked')){
		    addfood = "yes";
		  //   alert("addfood");
		}
		if($('#edit_food').is(':checked')){
		    editfood = "yes"
		  //   alert("editfood");
		}
		if($('#add_special').is(':checked')){
		    addspecial = "yes";
		  //  alert("addspecial");
		}
		
		if(userpass == usercpass){
		     $.ajax({
				url: base_url + 'user/login/register',
				type: 'POST',
				data: {
					username: username,
					email: useremail,
					fullname: userfname,
					password: userpass,
					phone_number: usermobile,
					edituser:edituser,
					addres:addres,
					editres:editres,
					addfood:addfood,
					editfood:editfood,
					addspecial:addspecial
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Register");
							var delayInMilliseconds = 500; //1 second
							setTimeout(function() {
							 	location.reload();
							}, delayInMilliseconds);
						}
						else if(response == 'already'){							
							popUpToast("warning", "This subadmin already registered.");
						}
						else{
							popUpToast("warning", "Fail Register.");	
						}

						// popUpToast("success", "Successfully updated.");  
						// popUpToast("warning", "Fail Reguster.");						
					}
			});
		    
		}else{
		   popUpToast("warning", "Check your password");
		}
	});
	
	$('#subamdmin-update-form').on('submit', function () {
	   // alert();
	    var userid = $("#user_id").val();
    	var username = $("#user_name").val();
    	var useremail = $("#user_email").val();
		var userfname = $("#user_fname").val();
		var usermobile = $("#user_mobile").val();
		var edituser = "no";
		var addres = "no";
		var editres = "no";
		var addfood = "no";
		var editfood = "no";
		var addspecial = "no";
		if($('#edit_user').is(':checked')){
		    edituser = "yes";
		  //  alert("edituser");
		}
		if($('#add_res').is(':checked')){
		    addres = "yes";
		  //   alert("addres");
		}
		if($('#edit_res').is(':checked')){
		    editres = "yes";
		  //   alert("editres");
		}
		if($('#add_food').is(':checked')){
		    addfood = "yes";
		  //   alert("addfood");
		}
		if($('#edit_food').is(':checked')){
		    editfood = "yes"
		  //   alert("editfood");
		}
		if($('#add_special').is(':checked')){
		    addspecial = "yes";
		  //  alert("addspecial");
		}
		
	     $.ajax({
			url: base_url + 'subadmin_con/update',
			type: 'POST',
			data: {
			    userid: userid,
				username: username,
				email: useremail,
				fullname: userfname,
				phone_number: usermobile,
				edituser:edituser,
				addres:addres,
				editres:editres,
				addfood:addfood,
				editfood:editfood,
				addspecial:addspecial
			},
			dataType: 'text',
			async: false,
			success:
				function (data) {
					response = data;
					if(response == 'ok'){							
						popUpToast("success", "Successfully Update");
					}
					else {							
						popUpToast("warning", "Fail Update");
					}
				}
		});
		
	});


    $('#user-form').on('submit', function () {
    	var name = $("#user_name").val();
    	var mobile = $("#mobile").val();
		var wallet = $("#wallet").val();
		var password = $("#userpassword").val();
		var startDate = $("#startdate").val();
		var expireDate = $("#expiredate").val();
		var promocode = $("#promocode").val();
		var base64data=$("#avatar-img").attr('src');
		if(promocode.length == 8){
		    $.ajax({
				url: base_url + 'user_con/add',
				type: 'POST',
				data: {
					name: name,
					mobile: mobile,
					wallet: wallet,
					password: password,
					startdate: startDate,
					expiredate: expireDate,
					promocode: promocode,
					avatar: base64data					
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Register.");
						}
						else if(response == 'already'){							
							popUpToast("warning", "This User already registered.");
						}
						else{
							popUpToast("warning", "Fail Register.");	
						}

						// popUpToast("success", "Successfully updated.");  
						// popUpToast("warning", "Fail Reguster.");						
					}
			});
		}

	});

	$('#update-user-form').on('submit', function () {
		var id = $("#user_id").val();
    	var name = $("#user_name").val();
		var wallet = $("#wallet").val();
		var password = $("#userpassword").val();
		var startDate = $("#startdate").val();
		var expireDate = $("#expiredate").val();
		var promocode = $("#promocode").val();
		if(promocode.length == 8){
		
        	$.ajax({
    				url: base_url + 'user_con/update',
    				type: 'POST',
    				data: {
    					id : id,
    					name: name,
    					wallet: wallet,
    					password: password,
    					startdate: startDate,
    					expiredate: expireDate,
    					promocode: promocode				
    				},
    				dataType: 'text',
    				async: false,
    				success:
    					function (data) {
    						response = data;
    						if(response == 'ok'){							
    							popUpToast("success", "Successfully Update.");
    						}
    						// popUpToast("success", "Successfully updated.");  
    						// popUpToast("warning", "Fail Reguster.");		    					
    					}
    			});
		}

	});

	$('#restaurant-form').on('submit', function () {
    	var name = $("#res_name").val();
    	var ar_name = $("#res_ar_name").val();
    	var mobile = $("#res_mobile").val();
    	var address = $("#res_address").val();
    	var ar_address = $("#res_ar_address").val();
		var position = $("#res_latitude").val()+","+$("#res_longtitude").val();
		var starttime = $("#starttime").val();
		var endtime = $("#endtime").val();
		var pincode = $("#res_pincode").val();
		var description = $("#res_description").val();
		var ar_description = $("#res_ar_description").val();

		var base64data_logo=$("#res-logo-img").attr('src');
		var base64data=$("#res-img").attr('src');
		if(pincode.length ==4){
		    $.ajax({
				url: base_url + 'restaurant_con/add',
				type: 'POST',
				data: {
					name: name,
					ar_name: ar_name,
					mobile: mobile,
					address: address,
					ar_address: ar_address,
					position: position,
					starttime: starttime,
					endtime: endtime,
					pincode: pincode,
					description: description,
					ar_description: ar_description,
					reslogo: base64data_logo,
					resimage: base64data
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
    					if(response == 'ok'){							
							popUpToast("success", "Successfully Register.");
						}
						else if(response == 'already'){							
							popUpToast("warning", "This Restaurant already registered.");
						}
						else{
							popUpToast("warning", "Fail Register.");	
						}
					}
			});
		    
		}
    	

	});

	$('#restaurant-change-form').on('submit', function () {		
		var id = $("#res_id").val();
    	var name = $("#res_name").val();
    	var ar_name = $("#res_ar_name").val();
    	var mobile = $("#res_mobile").val();
    	var address = $("#res_address").val();
    	var ar_address = $("#res_ar_address").val();
		var position = $("#res_latitude").val()+","+$("#res_longtitude").val();
		var opentime = $("#res_opentime").val();		
		var pincode = $("#res_pincode").val();
		var description = $("#res_description").val();
		var ar_description = $("#res_ar_description").val();
		var base64data_logo = 0;
		var base64data = 0;
		if(is_logo_change == 1){
			base64data_logo=$("#res-logo-img").attr('src');
		}

		if(is_img_change == 1){
			base64data=$("#res-img").attr('src');
		}
		if(pincode.length ==4){
    	$.ajax({
				url: base_url + 'restaurant_con/update',
				type: 'POST',
				data: {
					id: id,
					name: name,
					ar_name:ar_name,
					mobile: mobile,
					address: address,
					ar_address: ar_address,
					position: position,
					opentime: opentime,					
					pincode: pincode,
					description: description,
					ar_description: ar_description,
					reslogo: base64data_logo,
					resimage: base64data,
					is_logo: is_logo_change,
					is_img: is_img_change
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Update.");
						}						
						else{
							popUpToast("warning", "Not Updated");
						}    				
					}
			});
		}

	});

	$('#food-form').on('submit', function () {		
    	var name = $("#food_name").val();  
    	var ar_name = $("#food_ar_name").val();  
    	var resid = $("#res_group").val();
    	var description = $("#description").val();
    	var ar_description = $("#ar_description").val();
		var ndescription = $("#needdescription").val();	
		var ar_ndescription = $("#ar_needdescription").val();	
		var base64data=$("#food-img").attr('src');
		
    	$.ajax({
				url: base_url + 'food_con/add',
				type: 'POST',
				data: {
					name: name,
					ar_name: ar_name,
					resid: resid,
					description: description,
					ar_description: ar_description,
					ndescription: ndescription,
					ar_ndescription: ar_ndescription,
					foodimg: base64data					
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Register.");
						}
						else if(response == 'already'){							
							popUpToast("warning", "This User already registered.");
						}
						else{
							popUpToast("warning", "Fail Register.");	
						}    					
					}
			});

	});
	$('#food-change-form').on('submit', function () {
		var id = $("#food_id").val();	
    	var name = $("#food_name").val();
    	var ar_name = $("#food_ar_name").val();
    	var resid = $("#res_group").val();
    	var description = $("#description").val();
		var ndescription = $("#needdescription").val();	
		var ar_description = $("#ar_description").val();
		var ar_ndescription = $("#ar_needdescription").val();	
		var base64data=0;
		if(is_change == 1){
			base64data=$("#food-img").attr('src');
		}		

    	$.ajax({
				url: base_url + 'food_con/update',
				type: 'POST',
				data: {
					id: id,
					name: name,
					ar_name: ar_name,
					resid: resid,
					description: description,
					ndescription: ndescription,
					ar_description: ar_description,
					ar_ndescription: ar_ndescription,
					foodimg: base64data,
					is_change: is_change				
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
    					if(response == 'ok'){							
							popUpToast("success", "Successfully Update.");
						}
						else{
							popUpToast("warning", "Not Updated");	
						}
					}
			});

	});

	$('#res_id').change( function() {
        var restaurant_id = this.value;
        var response = '';

        $.ajax({
            url: base_url+'coupon_con/getFoodid' ,
            type: 'POST',
            data: {id: restaurant_id},
            dataType: 'text',
            async: false,
            success:
                function(data){
                    response = data;
                }
        });

        $("#food_id").html(response);
    }).trigger("change");
    
    $('#special-set-form').on('submit', function () {
    	var foodid = $("#food_id").val();		
		
    	$.ajax({
				url: base_url + 'special_con/select',
				type: 'POST',
				data: {
					id: foodid					
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;

    					if(response == 'success'){							
							popUpToast("success", "Successfully Select.");
							var delayInMilliseconds = 500; //1 second
							setTimeout(function() {
							 	location.reload();
							}, delayInMilliseconds);
						}
						else {							
							popUpToast("warning", "This User already Selected.");
						}
					 
					}
			});

	});
	
	$('#notification-form').on('submit', function () {
	
    	var userid = $("#user_id").val();
    	var message = $("#message").val();
    	$.ajax({
				url: base_url + 'notification_con/send',
				type: 'POST',
				data: {
					id: userid,
					message: message			
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
    					if(response == 'ok'){							
							popUpToast("success", "Successfully Send.");
						}
						else{
							popUpToast("warning", "Fail Send.");	
						}   
					}
			});

	});

    $('#coupon-form').on('submit', function () {
	
    	var userid = $("#user_id").val();    	
    	var resid = $("#res_id").val();
    	var foodid = $("#food_id").val();		
		
    	$.ajax({
				url: base_url + 'coupon_con/add',
				type: 'POST',
				data: {
					userid: userid,
					resid: resid,
					foodid: foodid					
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;

    					if(response == 'ok'){							
							popUpToast("success", "Successfully Register.");
						}
						else if(response == 'already'){							
							popUpToast("warning", "This User already registered.");
						}
						else{
							popUpToast("warning", "Fail Register.");	
						}   
					}
			});

	});
	$('#coupon-change-form').on('submit', function () {

		var couponid = $("#coupon_id").val();
		var resid = $("#res_id").val();
    	var foodid = $("#food_id").val();				
	
    	$.ajax({
				url: base_url + 'coupon_con/update',
				type: 'POST',
				data: {
					id: couponid,
					resid: resid,
					foodid: foodid					
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Update.");
						}
						else{
							popUpToast("warning", "Fail Update.");	
						}    				
					}
			});

	});
	$('#admob-form').on('submit', function () {
	
		var base64data_admob1 = 0;
		var base64data_admob2 = 0;
		var base64data_admob3 = 0;
		var base64data_admob4 = 0;
		var base64data_admob5 = 0;
		var base64data_admob6 = 0;
		var base64data_admob7 = 0;
		var base64data_admob8 = 0;
		var base64data_admob9 = 0;
		var base64data_admob10 = 0;
		var base64data_admob11 = 0;
		var base64data_admob12 = 0;
		
		if(is_admob1 == 1){
			base64data_admob1=$("#admob1").attr('src');
		}
		if(is_admob2 == 1){
			base64data_admob2=$("#admob2").attr('src');
		}
		if(is_admob3 == 1){
			base64data_admob3=$("#admob3").attr('src');
		}
		if(is_admob4 == 1){
			base64data_admob4=$("#admob4").attr('src');
		}
		if(is_admob5 == 1){
			base64data_admob5=$("#admob5").attr('src');
		}
		if(is_admob6 == 1){
			base64data_admob6=$("#admob6").attr('src');
		}
		if(is_admob7 == 1){
			base64data_admob7=$("#admob7").attr('src');
		}
		if(is_admob8 == 1){
			base64data_admob8=$("#admob8").attr('src');
		}
		if(is_admob9 == 1){
			base64data_admob9=$("#admob9").attr('src');
		}
		if(is_admob10 == 1){
			base64data_admob10=$("#admob10").attr('src');
		}
		if(is_admob11 == 1){
			base64data_admob11=$("#admob11").attr('src');
		}
		if(is_admob12 == 1){
			base64data_admob12=$("#admob12").attr('src');
		}
		
    	$.ajax({
				url: base_url + 'admob_con/update',
				type: 'POST',
				data: {
					is_admob1:is_admob1,
					is_admob2:is_admob2,
					is_admob3:is_admob3,
					is_admob4:is_admob4,
					is_admob5:is_admob5,
					is_admob6:is_admob6,
					is_admob7:is_admob7,
					is_admob8:is_admob8,
					is_admob9:is_admob9,
					is_admob10:is_admob10,
					is_admob11:is_admob11,
					is_admob12:is_admob12,
					admob1:base64data_admob1,
					admob2:base64data_admob2,
					admob3:base64data_admob3,
					admob4:base64data_admob4,
					admob5:base64data_admob5,
					admob6:base64data_admob6,
					admob7:base64data_admob7,
					admob8:base64data_admob8,
					admob9:base64data_admob9,
					admob10:base64data_admob10,
					admob11:base64data_admob11,
					admob12:base64data_admob12
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
						if(response == 'ok'){							
							popUpToast("success", "Successfully Update.");
						}						
						else{
							popUpToast("warning", "Fail Update.");	
						}   
    					
					}
			});
	});

	$('#user_id').change( function() {
        var user_id = this.value;
        var response = '';

        $.ajax({
            url: base_url+'payment_con/getUserWallet' ,
            type: 'POST',
            data: {id: user_id},
            dataType: 'text',
            async: false,
            success:
                function(data){
                    response = data;
                }
        });
        $("#user_wallet").val(response);
    }).trigger("change");

    $('#payment-form').on('submit', function () {	
    	var userid = $("#user_id").val();    	
    	var user_wallet = $("#user_wallet").val();
    	var user_payvalue = $("#user_payvalue").val();	
    	if (confirm("Really Local Pay?")) {	
		
	    	$.ajax({
					url: base_url + 'payment_con/add',
					type: 'POST',
					data: {
						userid: userid,
						wallet: user_wallet,
						payvalue: user_payvalue					
					},
					dataType: 'text',
					async: false,
					success:
						function (data) {
							response = data;
	    					if(response == 'ok'){							
								popUpToast("success", "Successfully Pay.");
								var delayInMilliseconds = 500; //1 second
								setTimeout(function() {
								 	location.reload();
								}, delayInMilliseconds);
								// location.reload();								
							}						
							else{
								popUpToast("warning", "Fail Pay.");	
							}							
						}
				});
	    }else{

	    }

	});

	 $('#setting-form').on('submit', function () {

	 	var id = $("#settingid").val();  
    	var monthly = $("#monthly").val();    	
    	var yearly = $("#yearly").val();
    	var rate = $("#erate").val();
    	var uinvite = $("#uinvite").val();
    	var cinvite = $("#cinvite").val();	
    	var cemail = $("#email").val();	
    	var cmobile = $("#mobile").val();	
    
    	$.ajax({
				url: base_url + 'setting_con/update',
				type: 'POST',
				data: {
					id : id,
					monthly: monthly,
					yearly: yearly,
					rate: rate,
					uinvite: uinvite,
					cinvite: cinvite,
					cemail: cemail,
					cmobile: cmobile
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;

    					if(response == 'ok'){							
							popUpToast("success", "Successfully Update.");
						}						
						else{
							popUpToast("warning", "Fail Setting Update.");	
						}   
					}
			});

	});



	/*
	*
	* Service
	* */
	//--- Promote Brand ---//
	$('#promote_form').on('submit', function () {
		var market_place = $("#promote_market_place option:selected").html();
		var brand = $('#promote_brand').val();
		var keywords = $('#promote_keywords').val().trim();
		var asin = $('#promote_asin').val();
		var min_price = $('#promote_min_price').val();
		var max_price = $('#promote_max_price').val();

		if ($("#promote_market_place option:selected").val()=='' || brand=='' || keywords=='')
			return;

		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (asin!='' && asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var format2 = /[0-9.]/;
		if ( (min_price!='' && !format2.test(min_price)) || (max_price!='' && !format2.test(max_price)) )
		{
			popUpToast('warning', 'Price must only contain numbers.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/s/ref=nb_sb_noss_2?url=search-alias%3Daps'
						+'&field-keywords='+keywords+'&field-brand='+brand;

		if (asin != '')
			str_url += '&field-asin='+asin;

		if (min_price != '')
			str_url += '&low-price='+min_price;

		if (max_price != '')
			str_url += '&high-price='+max_price;

		$('#promote_url').val(str_url);

		return false;
	});
	
	$('#promote_btn_go').click(function () {

		var str_url = $('#promote_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#promote_btn_copy').click(function () {

		if ($('#promote_url').val() == '')
			return;

		$('#promote_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- ASIN KEYWORD URL ---//
	$('#asin_form').on('submit', function () {
		var market_place = $("#asin_market_place option:selected").html();
		var asin = $('#asin_asin').val();
		var keywords = $('#asin_keywords').val().trim();

		if ($("#asin_market_place option:selected").val()=='' || asin=='' || keywords=='')
			return;

		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/s/?keywords='+keywords+'&ie=UTF8&field-asin='+asin+'&rh=i:aps,ssx:relevance';

		$('#asin_url').val(str_url);

		return false;
	});

	$('#asin_btn_go').click(function () {

		var str_url = $('#asin_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#asin_btn_copy').click(function () {

		if ($('#asin_url').val() == '')
			return;

		$('#asin_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- ASIN KEYWORD URL (SPECIAL) ---//
	$('#asin_special_form').on('submit', function () {
		var market_place = $("#asin_special_market_place option:selected").html();
		var asin = $('#asin_special_asin').val();
		var keywords = $('#asin_special_keywords').val().trim();

		if ($("#asin_special_market_place option:selected").val()=='' || asin=='' || keywords=='')
			return;

		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords='+keywords+'&hidden-keywords='+asin;

		$('#asin_special_url').val(str_url);

		return false;
	});

	$('#asin_special_btn_go').click(function () {

		var str_url = $('#asin_special_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#asin_special_btn_copy').click(function () {

		if ($('#asin_special_url').val() == '')
			return;

		$('#asin_special_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- SEARCH ENGINE AMAZON URL ---//
	$('#search_form').on('submit', function () {
		var market_place = $("#search_market_place option:selected").html();
		var asin = $('#search_asin').val().trim();
		var keyword1 = $('#search_keyword1').val().trim();
		var keyword2 = $('#search_keyword2').val().trim();
		var keyword3 = $('#search_keyword3').val().trim();
		var keyword4 = $('#search_keyword4').val().trim();
		var keyword5 = $('#search_keyword5').val().trim();

		if ($("#search_market_place option:selected").val()=='' || asin=='' || keyword1=='' || keyword2=='' || keyword3=='' || keyword4=='' || keyword5=='')
			return;

		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/'+keyword1+'-'+keyword2+'-'+keyword3+'-'+keyword4+'-'+keyword5+'-'+'/dp/'+asin;

		$('#search_url').val(str_url);

		return false;
	});

	$('#search_btn_go').click(function () {

		var str_url = $('#search_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#search_btn_copy').click(function () {

		if ($('#search_url').val() == '')
			return;

		$('#search_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- ADD TO CART ---//
	$('#cart_form').on('submit', function () {
		var market_place = $("#cart_market_place option:selected").html();
		var asin = $('#cart_asin').val().replace(/\s/g, '');
		var quantity = $('#cart_quantity').val();

		if ($("#cart_market_place option:selected").val()=='' || asin=='' || quantity=='')
			return;

		var format1 = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format1.test(asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var format2 = /[0-9]/;
		if ( !format2.test(quantity) )
		{
			popUpToast('warning', 'Quantity must only contain numbers.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/gp/aws/cart/add.html?ASIN.1='+asin+'&Quantity.1='+quantity;

		$('#cart_url').val(str_url);

		return false;
	});

	$('#cart_btn_go').click(function () {

		var str_url = $('#cart_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#cart_btn_copy').click(function () {

		if ($('#cart_url').val() == '')
			return;

		$('#cart_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- ADD TO CART MULTIPLE ASIN ---//
	$('#cart_multi_form').on('submit', function () {
		var market_place = $("#cart_multi_market_place option:selected").html();
		var asin1 = $('#cart_multi_asin1').val().replace(/\s/g, '');
		var quantity1 = $('#cart_multi_quantity1').val();
		var asin2 = $('#cart_multi_asin2').val().replace(/\s/g, '');
		var quantity2 = $('#cart_multi_quantity2').val();
		var asin3 = $('#cart_multi_asin3').val().replace(/\s/g, '');
		var quantity3 = $('#cart_multi_quantity3').val();
		var asin4 = $('#cart_multi_asin4').val().replace(/\s/g, '');
		var quantity4 = $('#cart_multi_quantity4').val();

		if ($("#cart_multi_market_place option:selected").val()==''
			|| asin1=='' || quantity1==''
			|| asin2=='' || quantity2=='')
			return;
		
		if (asin3 != '' && quantity3=='')
		{
			popUpToast('warning', 'You have to input value in Quantity3 field.');
			return;
		}

		if (asin3=='' && quantity3!='')
		{
			popUpToast('warning', 'You have to input value in ASIN3 field.');
			return;
		}

		if (asin4 != '' && quantity4=='')
		{
			popUpToast('warning', 'You have to input value in Quantity4 field.');
			return;
		}

		if (asin4=='' && quantity4!='')
		{
			popUpToast('warning', 'You have to input value in ASIN4 field.');
			return;
		}

		if (asin3 =='' && asin4!='')
		{
			popUpToast('warning', 'First, you have to fill value in ASIN3 field.');
			return;
		}

		if (asin1.length!=10
			|| asin2.length!=10
			|| (asin3!='' && asin3.length!=10)
			|| (asin4!='' && asin4.length!=10))
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var format1 = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format1.test(asin1)
			|| format1.test(asin2)
			|| (asin3!='' && format1.test(asin3))
			|| (asin4!='' && format1.test(asin4)))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		var format2 = /[0-9]/;

		if ( !format2.test(quantity1)
			|| !format2.test(quantity2)
			|| (quantity3!='' && !format2.test(quantity3))
			|| (quantity4!='' && !format2.test(quantity4)))
		{
			popUpToast('warning', 'Quantity must only contain numbers.');
			return;
		}

		var str_url = 'https://www.'+market_place+'/gp/aws/cart/add.html?ASIN.1='+asin1+'&Quantity.1='+quantity1+'&ASIN.2='+asin2+'&Quantity.2='+quantity2;

		if (asin3 != '')
			str_url += '&ASIN.3='+asin3+'&Quantity.3='+quantity3;

		if (asin4 != '')
			str_url += '&ASIN.4='+asin4+'&Quantity.4='+quantity4;

		console.log(str_url);
		$('#cart_multi_url').val(str_url);

		return false;
	});

	$('#cart_multi_btn_go').click(function () {

		var str_url = $('#cart_multi_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#cart_multi_btn_copy').click(function () {

		if ($('#cart_multi_url').val() == '')
			return;

		$('#cart_multi_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	//--- SEARCH MULTI ASIN ---//
	$('#search_multi_form').on('submit', function () {
		var market_place = $("#search_multi_market_place option:selected").html();
		var first_asin = $('#search_multi_asin1').val();
		var multi_asin = $('#search_multi_text_area').val();

		if ($("#search_multi_market_place option:selected").val()=='' || first_asin=='')
			return;

		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(first_asin) || format.test(multi_asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (first_asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var arr_asin = multi_asin.split('\n');console.log(arr_asin);
		for (var i=0; i<arr_asin.length; i++)
		{
			asin = checkCorrectAsin(arr_asin[i]);
			if (!asin)
			{
				arr_asin.splice(i, 1);
			}
			else
				arr_asin.splice(i, 1, asin);
		}

		var str_url = '';
		if (arr_asin.length == 0) {
			console.log('here');
			str_url = 'https://www.amazon.com/s/?k=' + first_asin + '&ref=nb_sb_noss';
			console.log(''+str_url);
		}
		else
		{
			console.log('there');
			str_url = 'https://www.'+market_place+'/s/?k='+first_asin+'%7C+';
			if (arr_asin.length==1)
			{
				str_url += arr_asin[0] + '&ref=nb_sb_noss';
			}
			else
			{
				for (var j=0; j<arr_asin.length-1; j++){
					str_url += arr_asin[j] + '%7C';
				}
				str_url += '+' + arr_asin[arr_asin.length-1] + '&ref=nb_sb_noss';
			}
		}
		$('#search_multi_url').val(str_url);

		return false;
	});

	$('#search_multi_btn_go').click(function () {

		var str_url = $('#search_multi_url').val();
		if (str_url == '')
			return;

		window.open(str_url, '_blank');
	});

	$('#search_multi_btn_copy').click(function () {

		if ($('#search_multi_url').val() == '')
			return;

		$('#search_multi_url').select();
		document.execCommand("copy");

		alert('Successfully copied.');
	});

	checkCorrectAsin = function(check_asin)
	{
		var asin = check_asin.replace(/\s/g, '');
		if (asin == '')
			return false;
		
		var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format.test(asin))
		{
			return false;
		}

		if (asin.length!=10)
		{
			return false;
		}

		return asin;
	}


	/*
	*
	* Profile Edit & Save
	* */

	$( "#edit_profile" ).click(function() {
		var edit_button_str = $("#edit_profile").text();
		var icon = $('<i class="fa fa-edit m-right-xs"></i>');

		if ( edit_button_str == "Edit Profile " || edit_button_str == "编辑资料 " )
		{
			$('#input-avatar-change').prop("disabled",false);
			$('#div-avatar-change').attr('class', 'view view-first');
			$('#pen-avatar-change').attr('style', 'display: block;');

			if (edit_button_str=="Edit Profile ")
				$('#edit_profile').text('Save ').append(icon);
			else
				$('#edit_profile').text('保存 ').append(icon);

			$('#full_name').removeAttr('readonly');
			$('#email').removeAttr('readonly');
			$('#phone_number').removeAttr('readonly');		
			$('#img_chg_btn_group').attr('style', 'display: inline-block;');
		}
		else
		{
			$('#input-avatar-change').prop("disabled",true);
			$('#div-avatar-change').removeAttr('class');
			$('#pen-avatar-change').attr('style', 'display: none;');

			var username = $("#user_name").val();
			var email = $("#email").val();
			var full_name = $("#full_name").val();
			var phone = $("#phone_number").val();			

			if (username == "" || email == "" || full_name === "" || phone == "") return;

			var response='';
			if (is_change==1)
			{
				var base64data=$("#avatar-img").attr('src');

				$.ajax({
					url:  base_url + 'profile/image_upload',
					method: 'POST',
					data: {image: base64data},
					dataType: 'text',
					async: false,
					success: function(data){
						$("#side_user_avatar").attr('src', base64data);
						$("#top_user_avatar").attr('src', base64data);
						is_change = 0;
					}
				});
			}

			// var response;
			$.ajax({
				url: base_url + 'profile/update',
				type: 'POST',
				data: {
					user_name: username,
					email: email,
					full_name: full_name,
					phone_number: phone				
				},
				dataType: 'text',
				async: false,
				success:
					function (data) {
						response = data;
					}
			});

			var btn_txt='Edit Profile ';
			if (edit_button_str != "Save ")
				btn_txt = '编辑资料 ';

			if (response == "ok")
			{
				form_init(btn_txt, icon);

				popUpToast("success", "Successfully updated.");
			}
			else if (response == "fail") {
				popUpToast("warning", "Update is failed. Try again.");
			}
			else
			{
				form_init(btn_txt, icon);
			}

		}
	});

	form_init = function(btn_txt, icon){

		$("#edit_profile").text(btn_txt).append(icon);

		$('#full_name').attr('readonly', 'readonly');

		$('#email').attr('readonly', 'readonly');
		$('#phone_number').attr('readonly', 'readonly');
		$('#address').attr('readonly', 'readonly');
		$('#market_place').attr('readonly', 'readonly');
		$('#amazon_id').attr('readonly', 'readonly');
		$('#invitation_code').attr('readonly', 'readonly');
		$('#qq').attr('readonly', 'readonly');
		$('#other_service').attr('readonly', 'readonly');
		$('#img_chg_btn_group').attr('style', 'display: none;');
	}

	/*
	*
	* Change Password
	* */
	$('#pass_change_form').on('submit', function () {

		var username = $("#user_name").val();
		var old = $("#old_password").val();
		var new_pass = $("#password").val();
		var confirm_pass = $("#password2").val();

		if (old==new_pass)
		{
			return false;
		}
		if (new_pass!=confirm_pass)
			return false;

		var response;
		$.ajax({
			url: base_url + 'profile/password_update',
			type: 'POST',
			data: {
				user_name: username,
				old_password: old,
				password: new_pass
			},
			dataType: 'text',
			async: false,
			success:
				function (data) {
					response = data;
				}
		});

		if (response == "ok")
		{
			popUpToast("success", "Successfully updated.");

			console.log('ok');
			$("#old_password").val('');
			$("#password").val('');
			$("#password2").val('');

			$('#m_modal_5').modal('hide');

		}
		else {
			popUpToast("warning", "Current password is wrong. Try again.");
		}

		return false;
	});

	/*
	*
	* Manage Membership
	* */
	var membership_id, amount, status;
	$('.membership_row').on('click', '.membership_upgrade', function () {
		membership_id = $(this).attr('id');
		amount = $(this).attr('amount');
		status = $.trim($(this).text());
		$('#payment_modal').modal('show');
	});

	$('#go_pay').on('click', function () {

		var radioValue = $("input[name='payment']:checked").val();
		var user_name = $("#top_user_avatar").attr('alt');

		var pay_id;
		if (radioValue=="Alipay")
		{
			pay_id = 2;
			// window.location.replace("https://login.aliexpress.com/?return_url=https://login.aliexpress.com/ipay_login.htm");
		}
		else
		{
			pay_id = 1;
			// window.location.replace("https://app.walkthechat.com/login");
		}

		// var response;
		$.ajax({
			url: base_url + 'billing/payment',
			type: 'POST',
			data: {
				user_name: user_name,
				member_id: membership_id,
				status: status,
				payment_id: pay_id
			},
			dataType: 'text',
			async: false,
			success:
				function (data) {
					// response = data;
				}
		});

		$('#payment_modal').modal('hide');
		$("#pay_modal_form").attr('action', base_url + 'billing/membership');
		$("#pay_modal_form").submit();
	});

	//--- Common ---//
	function popUpToast(status, message){

		// Counter for dashboard stats
		// $('.counter').counterUp({
		//     delay: 10,
		//     time: 1000
		// });

		// Welcome notification
		toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": false,
			"progressBar": false,
			"positionClass": "toast-top-right",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}
		toastr[status]( message );

		// alert(status+":"+message);
	}


	//FOR TEST
	$('#test_data_submit').on('submit', function () {

		var data1 = $('#data1').val();
		var data2 = $('#data2').val();
		var data3 = $('#data3').val();
		var data4 = $('#data4').val();
		var data5 = $('#data5').val();

		if (data1=='' || data2=='' || data3=='' || data4=='' || data5=='') return false;

		var content = $('#label1').text()+'='+data1+
			', '+$('#label2').text()+'='+data2+
			', '+$('#label3').text()+'='+data3+
			', '+$('#label4').text()+'='+data4+
			', '+$('#label5').text()+'='+data5;

		$.ajax({
			url: base_url + 'services/test_submit',
			type: 'POST',
			data: {service_id: '1', content: content},
			dataType: 'text',
			async: false,
			success:
				function (data) {
					// alert(data);

					if (data=='success')
						popUpToast(data, 'Successfully submitted.');
					else
						popUpToast('waring', 'Failed. Try again.');
				}
		});

	});
});
