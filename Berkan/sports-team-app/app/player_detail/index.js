import angular from 'angular';
import uiRouter from 'angular-ui-router';
import PlayerDetailComponent from './player_detail.component';

const player_detail = angular
  .module('player_detail', [
    uiRouter
  ])
  .config(($stateProvider, $urlRouterProvider) => {
    $stateProvider
      .state('player_detail', {
        url: '/player/:id',
        template: '<player-detail />'
      });
    $urlRouterProvider.otherwise('/');
  })
  .component('playerDetail', PlayerDetailComponent)
  .name;

export default player_detail;
