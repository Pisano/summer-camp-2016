class ListingModel {
  constructor($http ,API_URL) {
    this.$http = $http;
    this.API_URL = API_URL;
  }

  query() {
    return this.$http.get(this.API_URL + '/listings' );
  }
  getUserOfListing (listing) {
    return this.$http.get(this.API_URL + '/users/' + listing.user_id)
  }
  getUsers (){
    return this.$http.get(this.API_URL + '/users')
  }
}

ListingModel.$inject = ['$http', 'API_URL'];

export default ListingModel;
