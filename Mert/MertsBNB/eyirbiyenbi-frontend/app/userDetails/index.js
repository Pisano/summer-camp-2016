import angular from 'angular';
import uiRouter from 'angular-ui-router';
import UserDetailsComponent from './userDetails.component';
import ngCookies from 'angular-cookies';

const userDetails = angular
 .module('userDetails', [
    uiRouter,
    ngCookies
 ])
 .config(($stateProvider, $urlRouterProvider) => {
   $stateProvider
     .state('userDetails', {
       url: '/userDetails/:id',
       template: '<user-page />'
     });
   $urlRouterProvider.otherwise('/');
 })
 .component('userDetails', UserDetailsComponent)
 .name;

export default userDetails;
