angular.module("home", ['ngRoute'])
.config(function($routeProvider, $httpProvider) {
	$routeProvider
	.when('/publisher', {
		templateUrl: 'publisher.jsp',
		controller: 'publisherController',
		controllerAs: 'publisherCtrl'
	})
	.when('/page2', {
		templateUrl: 'page2.jsp',
		controller: 'page2Controller',
		controllerAs: 'page2Ctrl'
	})
})
.controller("homeController", function($scope) {
	$scope.logout = function() {
		
	}
});