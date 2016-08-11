import angular from 'angular';
import uiRouter from 'angular-ui-router';
import HomeComponent from './home.component';

const home = angular
  .module('home', [
    uiRouter
  ])
  .config(($stateProvider, $urlRouterProvider) => {
    $stateProvider
      .state('home', {
        url: '/',
        template: '<home />'
      });
    $urlRouterProvider.otherwise('/');
  })
  .component('home', HomeComponent)
  .name;

export default home;
