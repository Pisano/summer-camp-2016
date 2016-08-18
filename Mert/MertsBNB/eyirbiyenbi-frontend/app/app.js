import 'bootstrap/dist/css/bootstrap.css';
import 'app.css';

import angular from 'angular';
import uiRouter from 'angular-ui-router';
import ngCookies from 'angular-cookies';
import AppComponent from './app.component';
import Home from './home';
import Listing from './models/listing';
import ListingPage from './listingPage';
import LoginPage from './loginPage';
import UserDetails from './userDetails';

const root = angular
  .module('eyirbiyenbiApp', [
    Home,
    uiRouter,
    ngCookies,
    ListingPage,
    Listing,
    UserDetails,
    LoginPage,
    'ngMap'
  ])
  .config(($locationProvider, $urlRouterProvider) => {
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
    $urlRouterProvider.otherwise('/');
  })
  .constant('API_URL', 'http://localhost:3000')
  .constant('ROOT_URL','http://localhost:8080')

  .component('app', AppComponent)
  .name;

export default root;
