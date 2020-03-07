<style>

	.chart-legend li span{
		display: inline-block;
		width: 12px;
		height: 12px;
		margin-right: 5px;
	}

	.chart-legend{
		height:250px;
		overflow:auto;
	}

	.chart-legend ul{
		list-style-type: none;
		padding-inline-start: 0px;
	}

	.chart-legend li{
		cursor:pointer;
		margin-top: 10px;
		margin-bottom: 14px;
		font-size: 12px;
	}

	.strike{
		text-decoration: line-through !important;
	}
    .dashboard-stat {
        display: block;
        padding: 30px 15px;
        text-align: right;
        position: relative;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
        border-radius: 4px;
    }
    .bg-primary {
        background-color: #3498db;
        border-color: #3498db;
        color: #fff !important;
    }
    .bg-danger {
        background-color: #e74c3c;
        border-color: #e74c3c;
        color: #fff !important;
    }
    .bg-warning {
        background-color: #f39c12;
        border-color: #f39c12;
        color: #fff !important;
    }
    .bg-success {
        background-color: #27ae60;
        border-color: #27ae60;
        color: #fff !important;
    }
    .dashboard-stat .number {
        font-size: 28px;
        display: block;
    }
    .fa {
        display: inline-block;
        font: normal normal normal 14px/1 FontAwesome;
        font-size: inherit;
        text-rendering: auto;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
    .dashboard-stat .bg-icon {
        position: absolute;
        font-size: 80px;
        opacity: 0.4;
        left: 5px;
        bottom: 0;
    }

</style>
<!-- page content -->
<div class="right_col" role="main">

    <div class="row">
         <section class="section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat bg-primary">

                            <span class="number counter"><?php echo $user_num;?></span>
                            <span class="name">Registered Users</span>
                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                        </a>
                        <!-- /.dashboard-stat -->
                    </div>
                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat bg-danger">

                            <span class="number counter"><?php echo $group_num;?></span>
                            <span class="name">Registered Restaurants</span>
                            <span class="bg-icon"><i class="fa fa-ticket"></i></span>
                        </a>
                        <!-- /.dashboard-stat -->
                    </div>
                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat bg-warning">

                            <span class="number counter"><?php echo $exercise_num;?></span>
                            <span class="name">Registered Foods</span>
                            <span class="bg-icon"><i class="fa fa-bank"></i></span>
                        </a>
                        <!-- /.dashboard-stat -->
                    </div>
                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat bg-success">

                            <span class="number counter"><?php echo $schedule_num;?></span>
                            <span class="name">New Message</span>
                            <span class="bg-icon"><i class="fa fa-file-text"></i></span>
                        </a>
                        <!-- /.dashboard-stat -->
                    </div>
                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        
    </div>

</div>
<!-- /page content -->
