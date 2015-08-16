<%-- 
    Document   : chat
    Created on : Aug 12, 2015, 3:50:46 AM
    Author     : SHAFIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>SustCHAT | WebMessenger</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <!-- Latest compiled and minified CSS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="./resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="./resources/css/skins/_all-skins.css" rel="stylesheet" type="text/css" />
        <link href="./resources/css/style.css" rel="stylesheet" type="text/css" />

    <body class="skin-green" ng-app="chatApp">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo"><b>Sust</b>CHAT</a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="./resources/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Shafin Mahmud</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">

                        <!--  Online availabe list -->
                        <li><a href="#"><i class="fa fa-circle-o text-warning"></i>Nur Uddin</a></li>      
                        <li><a href="#"><i class="fa fa-circle-o text-warning"></i>Mizanul Hoque</a></li>
                        <!--  Online availabe list -->
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        WebMessenger
                        <small>Version 1.0</small>
                    </h1>

                </section>

                <!-- Main content -->
                <section class="content">
                    <div class='row'>
                        <div ng-controller="ChatCtrl" class='col-md-10'>
                            <!-- DIRECT CHAT -->

                            <div id="myDirectChat" class="box box-warning direct-chat direct-chat-warning">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Sarah Bullock</h3>
                                    <div class="box-tools pull-right">
                                        <span data-toggle="tooltip" title="3 New Messages" class='badge bg-yellow'>3</span>
                                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle"><i class="fa fa-comments"></i></button>
                                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <!-- Conversations are loaded here -->
                                    <div class="direct-chat-messages">
                                        <!-- Message. Default to the left -->
                                        <div class="direct-chat-msg" ng-repeat="message in messages| orderBy:'time':true">
                                            <div class='direct-chat-info clearfix'>
                                                <span class='direct-chat-name pull-left'>Shafin Mahmud</span>
                                                <span class='direct-chat-timestamp pull-right'> 
                                                    <time>{{message.time| date:'medium'}}</time>
                                                </span>
                                            </div>
                                            <img class="direct-chat-img" src="./resources/img/user2-160x160.jpg" alt="message user image" /><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                <span ng-class="{self: message.self}">{{message.message}}</span>
                                            </div><!-- /.direct-chat-text -->
                                        </div>

                                        <div class="direct-chat-msg">
                                            <div class='direct-chat-info clearfix'>
                                                <span class='direct-chat-name pull-left'>Shafin Mahmud</span>
                                                <span class='direct-chat-timestamp pull-right'>23 Jan 2:00 pm</span>
                                            </div><!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="./resources/pp/2011331001_160x160.jpg" alt="message user image" /><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                Is this template really for free? That's unbelievable!
                                            </div><!-- /.direct-chat-text -->
                                        </div><!-- /.direct-chat-msg -->

                                        <!-- Message to the right -->
                                        <div class="direct-chat-msg right">
                                            <div class='direct-chat-info clearfix'>
                                                <span class='direct-chat-name pull-right'>Sarah Bullock</span>
                                                <span class='direct-chat-timestamp pull-left'>23 Jan 2:05 pm</span>
                                            </div><!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="./resources/pp/2011331046_160x160.jpg" alt="message user image" /><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                You better believe it!
                                            </div><!-- /.direct-chat-text -->
                                        </div><!-- /.direct-chat-msg -->
                                    </div><!--/.direct-chat-messages-->

                                </div><!-- /.box-body -->
                                <div class="box-footer">
                                    <form ng-submit="addMessage()" name="messageForm">
                                        <input type="text" placeholder="Compose a new message..." ng-model="message" />
                                        <div class="info">
                                            <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
                                            <button ng-disabled="message.length > max || message.length === 0">Send</button>
                                        </div>
                                    </form>
                                </div><!-- /.box-footer-->
                            </div><!--/.direct-chat -->

                        </div><!-- /.col -->
                    </div><!-- /.row -->

                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->

            <!-- <footer class="main-footer">
                 <div class="pull-right hidden-xs">
                     <b>Version</b> 2.0
                 </div>
                 <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
             </footer>-->

        </div><!-- ./wrapper -->

        <!-- AdminLTE for demo purposes
        <script src="dist/js/demo.js" type="text/javascript"></script> -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.min.js"></script>

        <script src="./resources/app/app.js" type="text/javascript"></script>
        <script src="./resources/app/controllers.js" type="text/javascript"></script>
        <script src="./resources/app/services.js" type="text/javascript"></script>
    </head>
</body>
</html>