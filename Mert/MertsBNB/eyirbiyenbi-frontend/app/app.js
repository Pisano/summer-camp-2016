import 'bootstrap/dist/css/bootstrap.css';
import 'app.css';

import angular from 'angular';
import uiRouter from 'angular-ui-router';

import AppComponent from './app.component';
import Home from './home';
import Listing from './models/listing';

const root = angular
  .module('eyirbiyenbiApp', [
    Home,
    uiRouter,
    Listing
  ])
  .config(($locationProvider, $urlRouterProvider) => {
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
    $urlRouterProvider.otherwise('/');
  })
  .constant('API_URL', 'http://localhost:3000')
  .component('app', AppComponent)
  .name;

export default root;
