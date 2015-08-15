
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
        <link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body ng-app="chatApp">
        <div ng-controller="ChatCtrl" class="container">
            <form ng-submit="addMessage()" name="messageForm">
                <input type="text" placeholder="Compose a new message..." ng-model="message" />
                <div class="info">
                    <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
                    <button ng-disabled="message.length > max || message.length === 0">Send</button>
                </div>
            </form>
            <hr />
            <p ng-repeat="message in messages| orderBy:'time':true" class="message">
                <time>{{message.time| date:'HH:mm'}}</time>
                <span ng-class="{self: message.self}">{{message.message}}</span>
            </p>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.min.js"></script>
        <script src="./resources/app/app.js" type="text/javascript"></script>
        <script src="./resources/app/controllers.js" type="text/javascript"></script>
        <script src="./resources/app/services.js" type="text/javascript"></script>
    </body>
</html>
