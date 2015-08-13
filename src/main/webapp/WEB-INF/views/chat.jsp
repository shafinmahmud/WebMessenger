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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="./resources/core/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="./resources/core/css/skins/_all-skins.css" rel="stylesheet" type="text/css" />

        <!-- stomp client -->
        <script src="./resources/core/js/sockjs-0.3.4.js"></script>
        <script src="./resources/core/js/stomp.js"></script>
        <script src="./resources/core/js/chat.js"></script>

    </head>
    <body class="skin-green">
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
                            <img src="./resources/core/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
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
                        <div class='col-md-10'>
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
                                        <div class="direct-chat-msg">
                                            <div class='direct-chat-info clearfix'>
                                                <span class='direct-chat-name pull-left'>Shafin Mahmud</span>
                                                <span class='direct-chat-timestamp pull-right'>23 Jan 2:00 pm</span>
                                            </div><!-- /.direct-chat-info -->
                                            <img class="direct-chat-img" src="./resources/core/img/user2-160x160.jpg" alt="message user image" /><!-- /.direct-chat-img -->
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
                                            <img class="direct-chat-img" src="./resources/core/img/user7-128x128.jpg" alt="message user image" /><!-- /.direct-chat-img -->
                                            <div class="direct-chat-text">
                                                You better believe it!
                                            </div><!-- /.direct-chat-text -->
                                        </div><!-- /.direct-chat-msg -->
                                    </div><!--/.direct-chat-messages-->

                                </div><!-- /.box-body -->
                                <div class="box-footer">
                                    <form action="#" method="post">
                                        <div class="input-group">
                                            <input type="text" name="message" placeholder="Type Message ..." class="form-control"/>
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-warning btn-flat">Send</button>
                                            </span>
                                        </div>
                                    </form>
                                </div><!-- /.box-footer-->
                            </div><!--/.direct-chat -->


                            <div>
                                <button id="connect" onclick="connect();">Connect</button>
                                <button id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button>
                            </div>
                            <div id="conversationDiv">
                                <label>What is your name?</label><input type="text" id="name" />
                                <button id="sendName" onclick="sendName();">Send</button>
                                <p id="response"></p>
                            </div>




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



        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js" type="text/javascript"></script>
    </body>
</html>