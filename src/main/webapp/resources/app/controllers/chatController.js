(function(angular) {
 
  angular.module("chatApp.controller").controller("ChatCtrl", function($scope, chatService) {
    $scope.messages = [];
    $scope.message = "";
    $scope.max = 140;
    
    $scope.addMessage = function() {
      chatService.send($scope.message);
      $scope.message = "";
      //alert("alert");
    };
    
    chatService.receive().then(null, null, function(message) {
      $scope.messages.push(message);
    });
  });
})(angular);