(function () {
	'use strict';

	angular
		.module('medicrib.authentication', [
			'medicrib.authentication.controllers',
			'medicrib.authentication.services'	
		]);

	angular
		.module('medicrib.authentication.controllers', []);

	angular
		.module('medicrib.authentication.services', ['ngCookies']);		
})();