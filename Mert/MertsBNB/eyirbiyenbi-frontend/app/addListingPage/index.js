import angular from 'angular';
import uiRouter from 'angular-ui-router';
import AddListingPageComponent from './addListingPage.component';
import ngCookies from 'angular-cookies';
// import ngMap from './ng-map.min';

const addListingPage = angular
.module('addListingPage', [
      uiRouter,
  ngCookies
   ])
 .config(($stateProvider, $urlRouterProvider) => {
     $stateProvider
       .state('addListingPage', {
           url: '/addListingPage/:id',
           template: '<add-listing-page />'
       });
     $urlRouterProvider.otherwise('/');
 })
 .component('addListingPage', AddListingPageComponent)
 .name;

export default addListingPage;
