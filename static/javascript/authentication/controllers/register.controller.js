/**
* Register controller
* @namespace medicrib.authentication.controllers
*/

(function () {
	'use strict';

	angular
		.module('medicrib.authentication.controllers')
		.controller('RegisterController', RegisterController);

		RegisterController.$inject = ['$location', '$scope', 'Authentication'];
	
		/**
  		* @namespace RegisterController
  		*/	
  		function RegisterController($location, $scope, Authentication) {
  			var vm = this;

  			vm.register = register;

  		/**
   		* @name register
    	* @desc Register a new user
    	* @memberOf medicrib.authentication.controllers.RegisterController
    	*/
    	function register() {
    		Authentication.register(vm.email, vm.password, vm.username);
    	}
  	}
})();