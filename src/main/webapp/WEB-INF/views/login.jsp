<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>SustCHAT | Log in</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <!-- Latest compiled and minified CSS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="./resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- iCheck 
        <link href="../../plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />-->

    </head>
    <body class="login-page" ng-app="loginApp">
        <div class="login-box">
            <div class="login-logo">
                <a href="./"><b>Sust</b>Chat</a>
            </div><!-- /.login-logo -->
            <div class="login-box-body" ng-controller="LoginCtrl">
                <p class="login-box-msg">Sign in to start your session</p>
                <form  ng-submit="loginSubmit()" method="post">
                    <div class="form-group has-feedback">
                        <input ng-model="form.registrationNo" required type="text" class="form-control" placeholder="Registration No"/>
                        <span class="glyphicon glyphicon-alert form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input ng-model="form.password" required type="password" class="form-control" placeholder="Password"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <!--<div class="col-xs-8">    
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox"> Remember Me
                                </label>
                            </div>                        
                        </div><!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-block">Sign In</button>                    
                        </div><!-- /.col -->
                    </div>
                </form>

                <!--  <div class="social-auth-links text-center">
                      <p>- OR -</p>
                      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
                      <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
                  </div><!-- /.social-auth-links -->
                <div>
                    <br>
                    <a href="#">I forgot my password</a><br>
                </div>


            </div><!-- /.login-box-body -->
        </div><!-- /.login-box -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.min.js"></script>

        <script src="./resources/app/loginApp.js" type="text/javascript"></script>
        <script src="./resources/app/controllers/loginController.js" type="text/javascript"></script>
        <script src="./resources/app/services/loginService.js" type="text/javascript"></script>
    </body>
</html>