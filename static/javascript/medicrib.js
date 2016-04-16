(function () {
	'use strict';

	angular
		.module('medicrib', [
			'medicrib.config',
			'medicrib.routes',
			'medicrib.authentication'
		]);

	angular
		.module('medicrib.config', []);	


	angular
  		.module('medicrib.routes', ['ngRoute']);

  	angular
  		.module('medicrib')
  		.run(run);

  	run.$inject	= ['$http'];

  	/**
	* @name run
	* @desc Update xsrf $http headers to align with Django's defaults
	*/

	function run($http) {
		$http.defaults.xsrfHeaderName = 'X-CSRFToken';
		$http.defaults.xsrfCookieName = 'csrftoken';
	}
  		
	
})();