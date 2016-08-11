import angular from 'angular';
import uiRouter from 'angular-ui-router';
import TeamsComponent from './teams.component';

const teams = angular
  .module('teams', [
    uiRouter
  ])
  .config(($stateProvider, $urlRouterProvider) => {
    $stateProvider
      .state('teams', {
        url: '/teams',
        template: '<teams />'
      });
    $urlRouterProvider.otherwise('/');
  })
  .component('teams', TeamsComponent)
  .name;

export default teams;
