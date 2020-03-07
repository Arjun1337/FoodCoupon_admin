$(document).ready(function () {

    var arr_service_permission = new Array();

    $(function () {

        var arr;
        if (isRealValue($('#service_permission_text')))
        {
            var str_service_permission = $('#service_permission_text').val();
            if (str_service_permission!='')
                arr = str_service_permission.split(",");

            jQuery.each(arr, function (i, val) {
                $('.lbl_service_permission').each(function (j, element) {

                    var str = $(this).text().trim();
                    if (val == str)
                    {
                        $(this).find('input.service_permission_btn').trigger('click');
                    }
                });
            });
        }
    });

    var table_employee = $('#table_employee_mng').DataTable();
    $('#table_employee_history').DataTable();
    $('#datatable_session').DataTable();
    var table_pending = $('#admin_table_pending').DataTable();
    var table_complete = $('#admin_table_complete').DataTable();
    var table_client_info = $('#table_client_info').DataTable();

    $(function () {


        var d = new Date();
        var month = d.getMonth()+1;
        var day = d.getDate();
        var today = d.getFullYear() + '-' + (month<10 ? '0' : '') + month + '-' + (day<10 ? '0' : '') + day;

        var day_before_month = getBeforeMonth();

        export_client_info(day_before_month+' 00:00:00', today+' 23:59:59');
        export_employee_info(day_before_month+' 00:00:00', today+' 23:59:59');
        export_task_overview(today+' 00:00:00', today+' 23:59:59');
        export_employee_session();

        {
            var response='';
            $.ajax({
                url: base_url+'admin/getServiceName' ,
                type: 'POST',
                data: {},
                success:
                    function(data){
                        console.log(data);
                        response = data;
                    }
            });

            //Load Service
            $('input[name="planets"]').amsifySuggestags({
                type : 'amsify',
                suggestions : ['Marketing URL Generator', 'Reserve Search', 'Related Keywords', 'Keyword Rank Tracking', 'Listing Opimization', 'Big Data', 'Image Hosting', 'FBA Replenishment Tool'],
                whiteList: true
            });
        }
    });

    make_date_range_picker = function(obj){

        obj.dateRangePicker({
                shortcuts : null,
                startOfWeek: 'sunday',
                language:'en',
                customArrowPrevSymbol: '<i class="fa fa-arrow-circle-left"></i>',
                customArrowNextSymbol: '<i class="fa fa-arrow-circle-right"></i>',
                separator : ' ~ ',
                autoClose: true,
                showShortcuts: true,
                customShortcuts:
                [
                    {
                        name: 'Today',
                        dates : function()
                        {
                            var start = moment().toDate();
                            var end = moment().toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    },
                    {
                        name: 'Yesterday',
                        dates : function()
                        {
                            var start = moment().subtract(1, 'days').toDate();
                            var end = moment().subtract(1, 'days').toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    },
                    {
                        name: 'Week to date',
                        dates : function()
                        {
                            var start = moment().subtract(6, 'days').toDate();
                            var end = moment().toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    },
                    {
                        name: 'Month to date',
                        dates : function()
                        {
                            var start = moment().subtract(29, 'days').toDate();
                            var end = moment().toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    },
                    {
                        name: 'Previous month',
                        dates : function()
                        {
                            var start = moment().subtract(1, "month").startOf("month").toDate();
                            var end = moment().subtract(1, "month").endOf("month").toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    },
                    {
                        name: 'Year to date',
                        dates : function()
                        {
                            var start = moment().subtract(1, 'year').toDate();
                            var end = moment().toDate();
                            // start.setDate(1);
                            // end.setDate(30);
                            return [start,end];
                        }
                    }
                ]
            }
        );

    }

    function isRealValue(obj)
    {
        return obj && obj !== 'null' && obj !== 'undefined' && obj.length > 0;
    }

    $(function() {

        //DateRange-Client
        var daterange_client_info = $('#daterange_client_info');
        if (isRealValue(daterange_client_info))
        {
            make_date_range_picker(daterange_client_info);
            daterange_client_info.val(moment(moment().subtract(29, 'days').toDate()).format('YYYY-MM-DD')+' ~ '+moment(moment().toDate()).format('YYYY-MM-DD'));

        }

        var daterange_client_function = $('#daterange_client_function');
        if (isRealValue(daterange_client_function))
        {
            make_date_range_picker(daterange_client_function);
            daterange_client_function.val(moment(moment().subtract(29, 'days').toDate()).format('YYYY-MM-DD')+' ~ '+moment(moment().toDate()).format('YYYY-MM-DD'));

        }

        //DateRange-Employee
        var daterange_employee = $('#daterange_employee');
        if (isRealValue(daterange_employee))
        {
            make_date_range_picker(daterange_employee);
            daterange_employee.val(moment(moment().subtract(29, 'days').toDate()).format('YYYY-MM-DD')+' ~ '+moment(moment().toDate()).format('YYYY-MM-DD'));

        }

        //DateRange-Task_Overview
        var daterange_task_overview = $('#daterange_task_overview');
        if (isRealValue(daterange_task_overview)) {
            make_date_range_picker(daterange_task_overview);
            daterange_task_overview.val(moment(moment().toDate()).format('YYYY-MM-DD') + ' ~ ' + moment(moment().toDate()).format('YYYY-MM-DD'));
        }

        //DateRange-Task_Pending
        var reportrange_task_pending = $('#reportrange_task_pending');
        if (isRealValue(reportrange_task_pending)) {
            make_date_range_picker(reportrange_task_pending);
            reportrange_task_pending.val(moment(moment().toDate()).format('YYYY-MM-DD') + ' ~ ' + moment(moment().toDate()).format('YYYY-MM-DD'));
        }

        //DateRange-Task_Completion
        var daterange_task_completion = $('#daterange_task_completion');
        if (isRealValue(daterange_task_completion)) {
            make_date_range_picker(daterange_task_completion);
            daterange_task_completion.val(moment(moment().toDate()).format('YYYY-MM-DD') + ' ~ ' + moment(moment().toDate()).format('YYYY-MM-DD'));
        }
    });

    //----- Table-Client-Management ----//
    $('#table_client_info').on('click', '.client_delete', function () {

        var del_id = $(this).attr("id");

        if (confirm("Are you sure you want to delete this client?")) {

            $.ajax({
                url: base_url+'admin/client_delete' ,
                type: 'POST',
                data: {id: del_id},
                success:
                    function(data){

                        if (data == "success")
                            location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });

    //Edit Client
    $('#form_client_info_update').on('submit', function () {
        var client_id = $('#user_id').val();
        var membership = $('#membership_status').val();
        var cur_status = $('#current_status').val();
        var cur_credit = $('#current_credit').val();

        if (current_credit=='')
            return false;

        $.ajax({
            url: base_url+'admin/client_update' ,
            type: 'POST',
            data: {
                id: client_id,
                membership_id: membership,
                allow_status: cur_status,
                current_credit: cur_credit
            },
            success:
                function(data){

                    if (data == "success")
                        popUpToast('success', 'Successfully updated.');
                    else if (data == "fail")
                        popUpToast('warning', 'Failed. Try again.');
                }
        });
    });

    $('#daterange_client_info').on('datepicker-change',function(event,obj){

        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        $.ajax({
            url: base_url + 'admin/client_info_period',
            type: 'POST',
            data: {
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                    var cnt=1, str_table_body='';
                    table_pending.clear().draw();
                    $.each(data, function (index, value) {

                        var status = value['allow_status'];
                        if (status=='0') status = 'Pending';
                        else if (status=='0') status = 'Approved';
                        else if (status=='0') status = 'Cancelled';
                        else if (status=='0') status = 'Balance Overdue';

                        var total_amount = '0';
                        if (value['total_spent_amount'])
                            total_amount = value['total_spent_amount'];

                        var part_amount = '0';
                        if (value['part_amount'])
                            part_amount = value['part_amount'];

                        str_table_body += '<tr>\n';
                        str_table_body += ' <td class="td_no">'+cnt+'</td>';
                        str_table_body += ' <td class="td_name">'+value['user_name']+'</td>';
                        str_table_body += ' <td class="td_email">'+value['email']+'</td>';
                        str_table_body += ' <td class="td_phone">'+value['phone_number']+'</td>';
                        str_table_body += ' <td class="td_market">'+value['market_place']+'</td>';
                        str_table_body += ' <td class="td_amazon">'+value['amazon_id']+'</td>';
                        str_table_body += ' <td class="td_invitation">'+value['invitation_code']+'</td>';
                        str_table_body += ' <td class="td_qq">'+value['qq']+'</td>';
                        str_table_body += ' <td class="td_membership">'+value['membership']+'</td>';
                        str_table_body += ' <td class="td_total">'+total_amount+'</td>';
                        str_table_body += ' <td class="td_part">'+part_amount+'</td>';
                        str_table_body += ' <td class="td_status">'+status+'</td>';
                        str_table_body += ' <td class="td_credits">'+value['current_credit']+'</td>';
                        str_table_body += ' <td class="td_action">';
                        str_table_body += '    <a href="'+base_url+'admin/client_edit?id='+value['id']+'"><i class="fa fa-edit client_edit" style="color: #1ABB9C" title="View Information"></i></a> &nbsp;';
                        str_table_body += '    <a href="javascript:void(0)"><i class="fa fa-trash client_delete" id="'+value['id']+'" style="color: #ff7474" title="Delete Client"></i> </a>';
                        str_table_body += ' </td>';
                        str_table_body += '</tr>';

                        cnt++;
                    });
                    $('#tbody_client_info').html(str_table_body);

                    check_table_hide_status();
                }
        });

        export_client_info(startDate, endDate);

    });

    check_table_hide_status = function(){

        if (!$('#btn_hide_email').is(':checked'))
            $('.td_email').addClass('hidden');

        if (!$('#btn_hide_phone').is(':checked'))
            $('.td_phone').addClass('hidden');


        if (!$('#btn_hide_market').is(':checked'))
            $('.td_market').addClass('hidden');

        if (!$('#btn_hide_amazon').is(':checked'))
            $('.td_amazon').addClass('hidden');

        if (!$('#btn_hide_invitation').is(':checked'))
            $('.td_invitation').addClass('hidden');

        if (!$('#btn_hide_qq').is(':checked'))
            $('.td_qq').addClass('hidden');

        if (!$('#btn_hide_membership').is(':checked'))
            $('.td_membership').addClass('hidden');

        if (!$('#btn_hide_total').is(':checked'))
            $('.td_total').addClass('hidden');

        if (!$('#btn_hide_part').is(':checked'))
            $('.td_part').addClass('hidden');

        if (!$('#btn_hide_status').is(':checked'))
            $('.td_status').addClass('hidden');

        if (!$('#btn_hide_credits').is(':checked'))
            $('.td_credits').addClass('hidden');

        if (!$('#btn_hide_actions').is(':checked'))
            $('.td_action').addClass('hidden');
    }

    $('#daterange_client_function').on('datepicker-change',function(event,obj){

        var client_id = $('#user_id').val();
        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        $.ajax({
            url: base_url + 'admin/client_function_period',
            type: 'POST',
            data: {
                id: client_id,
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                console.log("DATA:"+data);
                    var table_overview = $('#table_client_function').DataTable();
                    table_overview.clear().draw();
                    $.each(data, function (index, value) {
                        var table_row = table_overview.row.add(
                            [
                                index+1,
                                value['name'],
                                value['times']!=null?value['times']:"0"
                            ]
                        ).draw(false);
                    });

                    table_overview.destroy();
                }
        });

        export_task_overview(startDate, endDate);

    });

    //Client Info Field Show/Hide
    $('.show_hide_btn').click(function () {

        if(this.checked) {
            //Do stuff
            var id = $(this).attr('id');

            if (id=='btn_hide_email')
                $('.td_email').removeClass('hidden');
            else if (id=='btn_hide_phone')
                $('.td_phone').removeClass('hidden');
            else if (id=='btn_hide_market')
                $('.td_market').removeClass('hidden');
            else if (id=='btn_hide_amazon')
                $('.td_amazon').removeClass('hidden');
            else if (id=='btn_hide_invitation')
                $('.td_invitation').removeClass('hidden');
            else if (id=='btn_hide_qq')
                $('.td_qq').removeClass('hidden');
            else if (id=='btn_hide_membership')
                $('.td_membership').removeClass('hidden');
            else if (id=='btn_hide_total')
                $('.td_total').removeClass('hidden');
            else if (id=='btn_hide_part')
                $('.td_part').removeClass('hidden');
            else if (id=='btn_hide_status')
                $('.td_status').removeClass('hidden');
            else if (id=='btn_hide_credits')
                $('.td_credits').removeClass('hidden');
            else if (id=='btn_hide_actions')
                $('.td_action').removeClass('hidden');
        }
        else if (!this.checked)
        {
            var id = $(this).attr('id');

            if (id=='btn_hide_email')
                $('.td_email').addClass('hidden');
            else if (id=='btn_hide_phone')
                $('.td_phone').addClass('hidden');
            else if (id=='btn_hide_market')
                $('.td_market').addClass('hidden');
            else if (id=='btn_hide_amazon')
                $('.td_amazon').addClass('hidden');
            else if (id=='btn_hide_invitation')
                $('.td_invitation').addClass('hidden');
            else if (id=='btn_hide_qq')
                $('.td_qq').addClass('hidden');
            else if (id=='btn_hide_membership')
                $('.td_membership').addClass('hidden');
            else if (id=='btn_hide_total')
                $('.td_total').addClass('hidden');
            else if (id=='btn_hide_part')
                $('.td_part').addClass('hidden');
            else if (id=='btn_hide_status')
                $('.td_status').addClass('hidden');
            else if (id=='btn_hide_credits')
                $('.td_credits').addClass('hidden');
            else if (id=='btn_hide_actions')
                $('.td_action').addClass('hidden');
        }
    });

    //Export Client Info.
    export_client_info = function (start, end){

        var myTableArray = [];

        $("table#table_client_info tr").each(function() {
            var arrayOfThisRow = [];
            var tableData = $(this).find('td');
            if (tableData.length > 0) {
                tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                myTableArray.push(arrayOfThisRow);
            }
        });

        $.ajax({
            url: base_url+'admin/export_client_info' ,
            type: 'POST',
            data: {myTableArray, start: start, end: end},
            success:
                function(data){
                    $('#file_export_client').attr('href', base_url+data);
                }
        });
    }

    //------ Table-employee-Management ------//
    $('.disable_check_btn').click(function(e) {

        var emp_id = $(this).attr("id");

        switch_click(e, this.checked, emp_id);
    });

    switch_click = function(e, status, emp_id){

        if(status) {
            //Do stuff

            var returnVal = confirm("Are you sure(enable)?");
            // $(this).attr("checked", returnVal);

            if (returnVal)
            {
                change_enable_status(emp_id, 1);
            }
            else
            {
                e.preventDefault();
            }
        }
        else if (!status)
        {
            var returnVal = confirm("Are you sure(disable)?");

            if (returnVal)
            {
                change_enable_status(emp_id, 0);
            }
            else
            {
                e.preventDefault();
            }
        }
    };

    change_enable_status = function(id, status){

        // alert('id:'+id+', status:'+status);

        $.ajax({
            url: base_url+'admin/employee_enable_status' ,
            type: 'POST',
            data: {id: id, status: status},
            success:
                function(data){
                    // alert(data);
                    console.log('employee_enable:'+data);
                }
        });
    }


    $('#table_employee_mng').on('click', '.employee_delete', function () {

        var del_id = $(this).attr("id");
        var emp_id = $(this).attr("emp_id");

        var query_str="Are you sure you want to delete this employee?";
        if (emp_id=="1")
            query_str="This employee is working the task now.\n So are you sure you want to delete this employee?";


        if (confirm(query_str)) {

            $.ajax({
                url: base_url+'admin/employee_delete' ,
                type: 'POST',
                data: {id: del_id},
                success:
                    function(data){

                        if (data == "success")
                            location.reload();
                    }
            });
        } else {
            // Do nothing!
        }
    });

    $('#employee_new').on('click', function () {

        $('#edit_id').val('0');
        $('#emp_name').val('');
        $('#emp_password').val('');
        $('#title_employee_dialog').text('Create New Employee');

        $('#modal_employee_add').modal('show');
    });

    $('#create_emp_form').on('submit', function () {

        var id = $("#edit_id").val();
        var name = $("#emp_name").val();
        var password = $("#emp_password").val();

        if ( name=='' || password=='' ) return false;

        var response='';

        $.ajax({
            url: base_url + 'admin/employee_create',
            type: 'POST',
            data: {
                id: id,
                name: name,
                password: password
            },
            dataType: 'text',
            async: false,
            success:
                function (data) {
                    response = data;
                }
        });

        console.log(response);

        if (response == "ok_create")
        {
            popUpToast("success", "Successfully created.");

            $('#edit_id').val('0');
            $('#emp_name').val('');
            $('#emp_password').val('');

            $('#modal_employee_add').modal('hide');

            window.location.reload();
        }
        else if (response == "ok_update")
        {
            popUpToast("success", "Successfully updated.");
            //
            // $('#edit_id').val('0');
            // $('#emp_name').val('');
            // $('#emp_password').val('');
            //
            // $('#modal_employee_add').modal('hide');

            window.location.reload();
        }
        else if (response=="already")
        {
            popUpToast("warning", "Already existed. Try again.");
        }
        else {
            popUpToast("warning", "Fail. Try again.");
        }

        return false;
    });

    $('#daterange_employee').on('datepicker-change',function(event,obj){

        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        make_employee_main_table(startDate, endDate);
    });

    make_employee_main_table = function(startDate, endDate)
    {

        $.ajax({
            url: base_url + 'admin/employee_period',
            type: 'POST',
            data: {
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                    var cnt=0, str_table_body='';
                    var table_employee = $('#table_employee_mng').DataTable();
                    table_employee.clear().draw();
                    $.each(data, function (index, value) {

                        var enable_status = '';
                        if (value['enable_status']=='1')
                            enable_status = 'checked';

                        var cur_status = 'Idle';
                        if (value['current_working_status']!="0")
                            cur_status = 'Working';

                        var service_permission = '';
                        if (value['service_permission'])
                            service_permission = value['service_permission'];

                        var completion_task = '0';
                        if (value['completion_count'])
                            completion_task = value['completion_count'];

                        str_table_body += '<tr>\n';
                        str_table_body += ' <td>'+cnt+'</td>';
                        str_table_body += ' <td>'+value['name']+'</td>';
                        str_table_body += ' <td>'+value['password']+'</td>';
                        str_table_body += ' <td>'+correct_time(value['completion_avg_time'])+'</td>';
                        str_table_body += ' <td>'+completion_task+'</td>';
                        str_table_body += ' <td>'+cur_status+'</td>';
                        str_table_body += ' <td>'+service_permission+'</td>';
                        str_table_body += ' <td>';
                        str_table_body += '    <label id="enable_checkbox">';
                        str_table_body += '        <input type="checkbox" class="js-switch disable_check_btn" id="'+value['id']+'" '+enable_status+' />';
                        str_table_body += '    </label>';
                        str_table_body += ' </td>';
                        str_table_body += ' <td>';
                        str_table_body += '    <a href="'+base_url+'admin/employee_edit?id='+value['id']+'"><i class="fa fa-edit" style="color: #1ABB9C" title="Edit Employee"></i> </a> &nbsp;';
                        str_table_body += '    <a href="javascript:void(0)"><i class="fa fa-trash employee_delete" emp_id="'+value['current_working_status']+'"  id="'+value['id']+'" style="color: #ff7474" title="Delete Employee"></i> </a>';
                        str_table_body += ' </td>';
                        str_table_body += '</tr>';
                        cnt++;
                    });

                    $('#tbody_employee').html(str_table_body);

                    if ($(".js-switch")[0]) {
                        var a = Array.prototype.slice.call(document.querySelectorAll(".js-switch"));
                        a.forEach(function (a) {
                            new Switchery(a, {color: "#26B99A"})
                        })
                    }

                    $(".disable_check_btn").off('click');
                    $(".disable_check_btn").on('click', function (e) {
                        switch_click(e);
                    });

                    $('#table_employee_mng').DataTable();
                }
        });

        export_employee_info(startDate, endDate);
    }

    //Edit Employee
    $('#form_employee_info_update').on('submit', function () {

        var emp_id = $('#emp_id').val();
        var emp_name = $('#emp_name').val();
        var emp_password = $('#emp_password').val();
        var emp_service_permission = arr_service_permission.toString();
        // var emp_enable = $('#emp_enable_check').val();

        if (emp_name=='' || emp_password=='' || emp_service_permission=='')
            return false;

        $.ajax({
            url: base_url+'admin/employee_update' ,
            type: 'POST',
            data: {
                id: emp_id,
                name: emp_name,
                password: emp_password,
                service_permission: emp_service_permission
            },
            success:
                function(data){

                    if (data == "success")
                        popUpToast('success', 'Successfully updated.');
                    else if (data == "fail")
                        popUpToast('warning', 'Failed. Try again.');
                }
        });
    });

    $('.service_permission_btn').click(function () {

        var txtPermission = $(this).parent().text().trim();

        if(this.checked) {
            //Do stuff
            arr_service_permission.push(txtPermission);
        }
        else if (!this.checked)
        {
            arr_service_permission.splice($.inArray(txtPermission, arr_service_permission),1);
        }
        console.log("array:"+arr_service_permission);
    });


    //Export Employee Info.
    export_employee_info = function(start, end){

        var myTableArray = [];

        $("table#table_employee_mng tr").each(function() {
            var arrayOfThisRow = [];
            var tableData = $(this).find('td');
            if (tableData.length > 0) {
                tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                myTableArray.push(arrayOfThisRow);
            }
        });

        $.ajax({
            url: base_url+'admin/export_employee_info' ,
            type: 'POST',
            data: {myTableArray, start: start, end: end},
            success:
                function(data){
                    $('#file_export_employee_info').attr('href', base_url+data);
                }
        });
    }

    //Export Employee Session.
    export_employee_session = function(){

        var myTableArray = [];

        $("table#datatable_session tr").each(function() {
            var arrayOfThisRow = [];
            var tableData = $(this).find('td');
            if (tableData.length > 0) {
                tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                myTableArray.push(arrayOfThisRow);
            }
        });

        $.ajax({
            url: base_url+'admin/export_employee_session' ,
            type: 'POST',
            data: {myTableArray},
            success:
                function(data){
                    $('#file_export_employee_session').attr('href', base_url+data);
                }
        });
    }

    //--- Task Management ---//

    $('#reportrange_task_pending').on('datepicker-change',function(event,obj){

        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        $.ajax({
            url: base_url + 'admin/task_pending',
            type: 'POST',
            data: {
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                    var cnt=0;
                    table_pending.clear().draw();
                    $.each(data, function (index, value) {
                        var table_row = table_pending.row.add(
                            [
                                'Ticket'+value['id'],
                                value['client_name'],
                                value['service'],
                                correct_time(value['after_time']),
                                value['status'],
                                value['employee_name']
                            ]
                        ).draw(false);
                        cnt++;
                    });

                    $('#badge_pending').text(cnt);
                }
        });

    });

    $('#daterange_task_completion').on('datepicker-change',function(event,obj){

        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        $.ajax({
            url: base_url + 'admin/task_complete',
            type: 'POST',
            data: {
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {

                    var cnt=0;
                    table_complete.clear().draw();
                    $.each(data, function (index, value) {
                        var table_row = table_complete.row.add(
                            [
                                'Ticket'+value['id'],
                                value['client_name'],
                                value['service'],
                                value['start_time'],
                                value['end_time'],
                                correct_time(value['completion_time']),
                                value['employee_name'],
                                value['status']
                            ]
                        ).draw(false);
                        cnt++;
                    });

                    $('#badge_complete').text(cnt);
                }
        });

    });

    $('#daterange_task_overview').on('datepicker-change',function(event,obj){

        var startDate = moment(obj.date1).format('YYYY-MM-DD 00:00:00');
        var endDate = moment(obj.date2).format('YYYY-MM-DD 23:59:59');

        $.ajax({
            url: base_url + 'admin/task_over_period',
            type: 'POST',
            data: {
                start_time: startDate,
                end_time: endDate
            },
            dataType: 'json',
            async: false,
            success:
                function (data) {
                    console.log(data);
                    var table_overview = $('#table_task_overview').DataTable();
                    table_overview.clear().draw();
                    $.each(data, function (index, value) {
                        var table_row = table_overview.row.add(
                            [
                                index+1,
                                value['name'],
                                value['times']!=null?value['times']:"0"
                            ]
                        ).draw(false);
                    });

                    table_overview.destroy();
                }
        });

        export_task_overview(startDate, endDate);

    });

    //Export Task Overview.
     export_task_overview = function(start, end){

         var myTableArray = [];

        $('#table_task_overview').DataTable();
        $("table#table_task_overview tr").each(function() {
            var arrayOfThisRow = [];
            var tableData = $(this).find('td');
            if (tableData.length > 0) {
                tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                myTableArray.push(arrayOfThisRow);
            }
        });

        $.ajax({
            url: base_url+'admin/export_task_overview' ,
            type: 'POST',
            data: {myTableArray, start: start, end: end},
            success:
                function(data){
                    $('#file_export_task_overview').attr('href', base_url+data);
                }
        });

        $('#table_task_overview').DataTable().destroy();
    }


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
            url: base_url + 'admin/change_password',
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

    correct_time = function (time) {

        var str='';

        if (time!=null){
            var arr = time.split(":");

            var day = Math.floor(arr[0]/24);
            var h = arr[0]-day*24;
            var min = arr[1];
            var sec = arr[2];

            if (day==1)
                str += day+'day ';
            else if (day>1)
                str += day+'days ';

            if (h!=0)
                str += h+"h ";

            if (min!=0)
                str += min+"m ";

            if (sec!=0)
                str += sec+"s";

        }
        else
            str = '00:00:00';

        return str;
    }

    getBeforeMonth = function () {

        var d = new Date();
        var year = d.getFullYear();
        var month = d.getMonth();
        var day = d.getDate();

        if (day==31)
        {
            if (month==1)
            {
                year -= 1;
                month = 12;
            }
            day = 1;
        }
        else
        {
            day++;
        }

        var date = year + '-' + month + '-' + day;

        return date;
    }

});
