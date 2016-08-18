import angular from 'angular';
import uiRouter from 'angular-ui-router';
import HomeComponent from './home.component';
import LoginPage from '../loginPage';

const home = angular
  .module('home', [
    uiRouter,
    LoginPage,
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
