/* 
 */

(function (angular) {
    angular.module("loginApp.service").service("loginService", function ($http) {

        this.authLogin = function (loginData) {
            console.log('Service accessed: ');
            console.log(loginData);

            $http.post('./loginAuth', loginData)
                    .success(function (data, status, headers, config) {
                        console.log('success I guss')
                       
                    })
                    .error(function (data, status, headers, config) {
                        console.log(status + 'failed guss')
                        
                    });
            return '0';
        };
    });
})(angular);