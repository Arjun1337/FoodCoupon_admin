$(document).ready(function () {

    var table_pending = $('#table_pending').DataTable();
    var table_complete = $('#table_complete').DataTable();

    $(function () {
        draw_pending_table();
        draw_complete_table();
        $('#task_stauts').attr('style', 'display:none;');
    });

    $('#table_pending tbody').on('click', 'tr', function () {

        var totalRecords =$("#table_pending").DataTable().page.info().recordsTotal;
        if (totalRecords!==0)
        {
            $('#task_stauts').removeAttr('style');

            var data = table_pending.row( this ).data();

            var task_id = data[0];
            $('#task_id').val(task_id);

            $('#task_id').text(task_id);
            $('#service_name').text(data[2]);
            $('#after_time').text('Time since submitted : '+data[3]);
            $('#title_status').text('( '+data[4]+' )');

            $('#table_pending tr.odd').css('background-color', '#f9f9f9');
            $('#table_pending tr.even').css('background-color', 'White');
            $(this).css('background-color', '#e2e5ec');

            $('#table_complete tr.odd').css('background-color', '#f9f9f9');
            $('#table_complete tr.even').css('background-color', 'White');

            make_task_content(task_id, 'pending');

        }

    } );

    $('#table_complete tbody').on('click', 'tr', function () {

        var totalRecords =$("#table_complete").DataTable().page.info().recordsTotal;
        if (totalRecords!==0) {

            $('#task_stauts').removeAttr('style');

            var data = table_complete.row(this).data();
            var task_id = data[0];

            $('#task_id').text(task_id);
            $('#service_name').text(data[2]);
            $('#after_time').text('Completed during : ' + data[3]);
            $('#title_status').text('( ' + data[6] + ' )');

            $('#table_complete tr.odd').css('background-color', '#f9f9f9');
            $('#table_complete tr.even').css('background-color', 'White');
            $(this).css('background-color', '#e2e5ec');

            $('#table_pending tr.odd').css('background-color', '#f9f9f9');
            $('#table_pending tr.even').css('background-color', 'White');

            make_task_content(task_id, 'complete');
        }
    } );

    make_task_content = function(task_id, status) {

        var response='';
        $.ajax({
            url: base_url + 'employee/pending',
            type: 'POST',
            data: {
                id: task_id,
                status: status
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                console.log(data);

                    var cur_status = data['status'];
                    if (cur_status=='pending')
                    {
                        $('#btn_start_working').attr('style', 'display: block');
                        $('#div_btn_complete').attr('style', 'display: none');
                    }
                    else if (cur_status=='working')
                    {
                        $('#btn_start_working').attr('style', 'display: none');
                        $('#div_btn_complete').attr('style', 'display: block; margin-top: 20px;');

                        $('#file_export_task_data').attr('href', base_url+'csv_export/service_bigdata_sample.csv');
                    }
                    else if (cur_status=='complete')
                    {
                        $('#btn_start_working').attr('style', 'display: none');
                        $('#div_btn_complete').attr('style', 'display: none');
                    }

                    if (data['own']=='other')
                    {
                        $('#btn_start_working').attr('style', 'display: none');
                        $('#div_btn_complete').attr('style', 'display: none');
                    }

                    $('#after_time').text(data['time']);
                    response = data['content'];
                }
        });

        $('#task_stauts_body').html(response);

    }

    $('#btn_start_working').on('click', function () {

        var task_id = $('#task_id').val();;
        $.ajax({
            url: base_url + 'employee/start_working',
            type: 'POST',
            data: {id: task_id},
            dataType: 'text',
            async: false,
            success:
                function (data) {

                    if (data=='success')
                    {
                        $('#btn_start_working').attr('style', 'display: none');
                        $('#div_btn_complete').attr('style', 'display: block');

                        popUpToast(data, 'Working started!!!');
                    }
                    else if (data=='already')
                    {
                        // $('#btn_start_working').attr('style', 'display: none');

                        popUpToast('warning', 'You already started other task.\n First, please complete it.');
                    }
                    else {
                        popUpToast('warning', 'You can\'t start working now. Please try again.')
                    }
                }
        });
    });

    $('#btn_finish').on('click', function () {

		var task_id = $('#task_id').val().replace('Ticket', '');
        var file_data = $('#file_load').prop('files')[0];

		if(file_data != undefined) {
			var form_data = new FormData();
			form_data.append('file', file_data);
			form_data.append('id', task_id);

			$.ajax({
				type: 'POST',
				url: base_url + 'employee/tasks/complete_task',
				contentType: false,
				processData: false,
				dataType: 'text',
				data: form_data,
				success:function(response) {
					console.log(response);
					if (response=='success')
					{
						$('#div_btn_complete').attr('style', 'display: none');

						$('#file_load').val('');
						draw_complete_table();
						draw_pending_table();
						make_task_content(task_id, 'complete');
						popUpToast('success', 'Task completed!!!');
					}
					else if (response=='incorrect_file')
					{
						popUpToast('warning', 'Please check file content.')
					}
					else if (response=='no_file')
					{
						popUpToast('warning', 'Please upload result csv file, to complete this task.');
					}
					else
					{
						popUpToast('warning', 'You can\'t complete task now. Please try again.')
					}
				}
			});
		}
		return false;

    });

    //--- Change Password---//
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

        var response='';
        $.ajax({
            url: base_url + 'employee/password_update',
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

            $("#old_password").val('');
            $("#password").val('');
            $("#password2").val('');

            $('#change_pass_employee').modal('hide');

        }
        else {
            popUpToast("warning", "Current password is wrong. Try again.");
        }

        return false;
    });

    setInterval(function () {

        draw_pending_table();
        draw_complete_table();
    }, 10000);

    draw_pending_table = function(){

        $.ajax({
            url: base_url + 'employee/pending_table',
            type: 'POST',
            data: {},
            dataType: 'json',
            async: false,
            success:
                function (data) {
                    table_pending.clear().draw();
                    $.each(data, function (index, value) {
                        var table_row = table_pending.row.add(['Ticket'+value['id'], value['client_name'], value['service'], correct_time(value['after_time']), value['status'] ]).draw(false);

                        if ($('#task_id')=='Ticket'+value['id']){

                            table_row.nodes().to$().css('background-color', '#e2e5ec');

                            $('#after_time').text('Time since submitted : '+correct_time(value['after_time']));
                        }

                    });
                }
        });
    };

    draw_complete_table = function(){

        $.ajax({
            url: base_url + 'employee/complete_table',
            type: 'POST',
            data: {},
            dataType: 'json',
            async: false,
            success:
                function (data) {
                    // alert(data);
                    table_complete.clear().draw();
                    $.each(data, function (index, value) {
                        table_complete.row.add(['Ticket'+value['id'], value['client_name'], value['service'], value['request_time'], value['start_time'], value['end_time'], value['status'] ]).draw(false);

                    });
                }
        });
    };

    correct_time = function (time) {
        var arr = time.split(":");

        var str='';
        var day = Math.floor(arr[0]/24);
        var h = arr[0]-day*24;
        var min = arr[1];

        if (day==1)
            str += day+'day ';
        else if (day>1)
            str += day+'days ';

        if (h!=0)
            str += h+"h ";

        if (min!=0)
            str += min+"m";

        return str;
    }

    //--- Common ---//
    function popUpToast(status, message){

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

    }

});
