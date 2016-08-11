import angular from 'angular';
import ListingModel from './listing.service';

const listing = angular
  .module('Listing', [])
  .service('ListingModel', ListingModel)
  .name;

export default listing;
