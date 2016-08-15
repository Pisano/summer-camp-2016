import angular from 'angular';
import uiRouter from 'angular-ui-router';
import TeamDetailComponent from './team_detail.component';

const team_detail = angular
  .module('team_detail', [
    uiRouter
  ])
  .config(($stateProvider, $urlRouterProvider) => {
    $stateProvider
      .state('team_detail', {
        url: '/teams/:id',
        template: '<team-detail />'
      });
    $urlRouterProvider.otherwise('/');
  })
  .component('teamDetail', TeamDetailComponent)
  .name;

export default team_detail;

