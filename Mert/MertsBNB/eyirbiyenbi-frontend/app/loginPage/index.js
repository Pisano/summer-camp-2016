import angular from 'angular';
import uiRouter from 'angular-ui-router';
import LoginPageComponent from './loginPage.component';
import ngCookies from 'angular-cookies';

const loginPage = angular
 .module('loginPage', [
    uiRouter,
    ngCookies
 ])
 .config(($stateProvider, $urlRouterProvider) => {
   $stateProvider
     .state('loginPage', {
       url: '/loginPage',
       template: '<login-page />'
     });
   $urlRouterProvider.otherwise('/');
 })
 .component('loginPage', LoginPageComponent)
 .name;

export default loginPage;
