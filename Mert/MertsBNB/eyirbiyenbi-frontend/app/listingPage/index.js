import angular from 'angular';
import uiRouter from 'angular-ui-router';
import ListingPageComponent from './listingPage.component';
import ngCookies from 'angular-cookies';
// import ngMap from './ng-map.min';

const listingPage = angular
.module('listingPage', [
      uiRouter,
  ngCookies
   ])
 .config(($stateProvider, $urlRouterProvider) => {
     $stateProvider
       .state('listingPage', {
           url: '/listingPage/:id',
           template: '<listing-page />'
       });
     $urlRouterProvider.otherwise('/');
 })
 .component('listingPage', ListingPageComponent)
 .name;

export default listingPage;
