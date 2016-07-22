<?php echo $tempheader; ?>  
    <!-- Start Menu -->
    <div class="sidebar" data-background-color="black" data-active-color="danger">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://localhost/thaiassign/" class="simple-text">ThaiAssign</a>
            </div>
            <ul class="nav">
                <li class="active">
                    <a href="index.html">
                        <i class="ti-home"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li>
                    <a href="project.html">
                        <i class="ti-star"></i>
                        <p>Project</p>
                    </a>
                </li>
                <li>
                    <a href="myjobs.html">
                        <i class="ti-user"></i>
                        <p>MY JOBS</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="ti-pencil"></i>
                        <p>Leave</p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="ti-shopping-cart"></i>
                        <p>Expense</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="ti-user"></i>
                        <p>Member</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
    <!-- End Menu -->
    <!-- Start Main panel -->
    <div class="main-panel"> 
        <!-- Start Nav -->
        <nav class="navbar navbar-default ">
            <div class="container-fluid "> 
                <div class="navbar-header ">
                    <button type="button" class="navbar-toggle ">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">Home</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
								<p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <p class="notification">5</p>
									<p>Notifications</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li> 
                              </ul>
                        </li>
						<li>
                            <a href="#">
								<i class="ti-settings"></i>
								<p>Settings</p>
                            </a>
                        </li>
                    </ul> 
                </div>
            </div>
        </nav>
    <!-- End Nav -->
    <!-- Start  content -->
        <div class="content" > 
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Project Status</h4><hr/>
                            </div>
                            <div class="content">
                                <div id="chartProject" class="ct-chart ct-perfect-fourth"></div>
                                <div class="footer">
                                    <div class="chart-legend">
                                        <i class="fa fa-circle text-info"></i> Thainology
                                        <i class="fa fa-circle text-danger"></i> VANDA
                                        <i class="fa fa-circle text-warning"></i> CHUPHOTIC
                                    </div>
                                    <hr>
                                    <div class="stats">
                                        <i class="ti-timer"></i> On Time
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Project Status</h4><hr/>
                            </div>
                            <div class="content">
                                <div id="chartTodo" class="ct-chart ct-perfect-fourth"></div>
                                <div class="footer">
                                    <div class="chart-legend">
                                        <i class="fa fa-circle text-info"></i> Thainology
                                        <i class="fa fa-circle text-danger"></i> VANDA
                                        <i class="fa fa-circle text-warning"></i> CHUPHOTIC
                                    </div>
                                    <hr>
                                    <div class="stats">
                                        <i class="ti-timer"></i> On Time
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">  
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="content"> 
                                <div class="row"> 
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-left">
                                            <i class="ti-pulse"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7"> 
                                        <div class="numbers"> 
                                        <p>My Jobs</p>
                                        34
                                        </div>
                                    </div>
                                </div>
                                <div class="row"> 
                                <hr/> 
                                    <div class="col-xs-7 text-left"> 
                                        <p>Todo</p>
                                        <p>Doing</p>
                                        <p>Done</p>
                                        <p>Testing</p>
                                        <p>closed</p>
                                    </div>
                                    <div class="col-xs-5 text-right">  
                                        <p>23</p>
                                        <p>2</p>
                                        <p>5</p>
                                        <p>2</p>
                                        <p>2</p> 
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <a href="#"><i class="ti-plus"></i> New Todo</a><br/>
                                        <a href="#"><i class="ti-list"></i> List Todo</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="content"> 
                                <div class="row"> 
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-left">
                                            <i class="ti-pulse"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7"> 
                                        <div class="numbers"> 
                                        <p>Leave</p>
                                        3
                                        </div>
                                    </div>
                                </div>
                                <div class="row"> 
                                <hr/> 
                                    <div class="col-xs-7 text-left">  
                                        <p>รออนุมัติ</p> 
                                        <p>อนุมัติแล้ว</p>
                                        <p>ไม่อนุมัติ</p> 
                                    </div>
                                    <div class="col-xs-5 text-right">  
                                        <p>1</p> 
                                        <p>2</p> 
                                        <p>0</p>  
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <a href="#"><i class="ti-plus"></i> New Todo</a><br/>
                                        <a href="#"><i class="ti-list"></i> List Todo</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="content"> 
                                <div class="row"> 
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-left">
                                            <i class="ti-pulse"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7"> 
                                        <div class="numbers"> 
                                        <p>Expense</p>
                                        2
                                        </div>
                                    </div>
                                </div>
                                <div class="row"> 
                                <hr/> 
                                    <div class="col-xs-7 text-left"> 
                                        <p>รออนุมัติ</p>
                                        <p>อนุมัติจ่าย</p>
                                        <p>ไม่อนุมัติ</p> 
                                    </div>
                                    <div class="col-xs-5 text-right">  
                                        <p>2</p>
                                        <p>3</p>
                                        <p>0</p>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <a href="#"><i class="ti-plus"></i> New Todo</a><br/>
                                        <a href="#"><i class="ti-list"></i> List Todo</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     
                </div> 
            </div>
        </div> 
    <!-- End  content -->

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="http://www.thainology.com">Thainology.com</a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.thainology.com">Thainology Dev.</a>
                </div>
            </div>
        </footer>

    </div>
</div> 
</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
 
    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){ 
        	demo.initChartist(); 
        //  $.notify({
        //      icon: 'ti-gift',
        //      message: "Welcome to Thai Assign"
        //  },{
        //      type: 'success',
        //      timer: 4000
        //  });

    	});
	</script>

</html>
