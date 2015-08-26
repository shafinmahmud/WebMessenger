/* 
 */

(function (angular) {
    angular.module("loginApp.service").service("loginService", function ($http) {

        this.authLogin = function (loginData) {

            $http.post('./loginAuth', loginData)
                    .success(function (data, status, headers, config) {
                        console.log(data);
                        return data;
                    })
                    .error(function (data, status, headers, config) {
                        console.log(data);
                    });
        };
    });
})(angular);