/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function (angular) {
    angular.module("loginApp.controller").controller("LoginCtrl", function ($scope, $window, loginService) {
        $scope.formData = {
            registrationNo: "default",
            password: "default"
        };

        $scope.loginSubmit = function () {
            $scope.formData = $scope.form;
            console.log('Submit received: ');
            console.log($scope.formData);
            var authResponse = loginService.authLogin($scope.formData);
            console.log(authResponse);
            $window.location.href = './messenger';
        };
    });
})(angular);
  