import 'bootstrap/dist/css/bootstrap.css';
import 'app.css';
import angular from 'angular';
import uiRouter from 'angular-ui-router';
import AppComponent from './app.component';
import Home from './home';
import Teams from './teams';
import TeamDetail from './team_detail';
import PlayerDetail from './player_detail';

const root = angular
  .module('sportsApp', [
    Home,
    Teams,
    TeamDetail,
    PlayerDetail,
    uiRouter
  ])
  .config(($locationProvider, $urlRouterProvider) => {
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
    $urlRouterProvider.otherwise('/');
  })
  .component('app', AppComponent)
  .name;

export default root;
