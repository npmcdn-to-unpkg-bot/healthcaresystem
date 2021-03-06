(function () {
	'use strict';

	angular
		.module('medicrib.routes')
		.config(config);

	config.$inject = ['$routeProvider'];
	
	/**
  	* @name config
  	* @desc Define valid application routes
  	*/	

  	function config($routeProvider) {
  		$routeProvider.when('/register', {
  			controller: 'RegisterController', 
  			controllerAs: 'vm',
  			templateUrl: '/static/templates/authentication/register.html'
  		}).otherwise('/');
  	}
})();