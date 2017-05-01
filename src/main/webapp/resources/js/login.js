angular.module("login", ['ngRoute'])
.config(function($httpProvider) {
	$httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
})
.controller("loginController", function($rootScope, $http, $location, $route) {
	var self = this;
	var authenticate = function(credentials, callback) {
		
		var headers = credentials ? {authorization : "Basic "
	        + btoa(credentials.username + ":" + credentials.password)
	    } : {};
		
		$http.get('user', {
			headers: headers
		}).then(function(response) {
			if(response.data.name) {
				$rootScope.authenticated = true;
			} else {
				$rootScope.authenticated = false;
			}
			callback && callback($rootScope.authenticated);
		}, function() {
			$rootScope.authenticated = false;
			callback && callback(false);
		});
	}
	
	authenticate();
	
	self.credentials = {};
	self.login = function() {
		console.log(self.credentials.username + " " + self.credentials.password);
		authenticate(self.credentials, function(authenticated) {
			if(authenticated) {
				console.log("Login succeeded");
				$location.path("/");
				self.error = false;
			} else {
				console.log("Login failed");
				$location.path("/");
				self.error = true;
			}
		})
	};
	
	self.logout = function() {
		$http.post('logout', {}).finally(function() {
			$rootScope.authenticated = false;
			$location.path("/login");
		});
	}
});