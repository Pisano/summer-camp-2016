class ListingPageController{
  constructor($http,ListingModel,$state,$stateParams,$cookieStore, API_URL){
    this.$http = $http;
    this.$state = $state;
    this.$stateParams = $stateParams;
    this.$cookieStore = $cookieStore;
    this.ListingModel = ListingModel;
    this.currentUser = $cookieStore.get('eyirbiyenbi-token');
    this.newListing = {
      'listing':{
        'image_url' :null,
        'user_id': this.currentUser.id,
        'location_name': null,
        'title': null,
        'daily_price': null,
        'bed_capacity':null,
        'guest_capacity': null
      }
    }



    this.url = API_URL + '/listings?token='+this.$cookieStore.get('eyirbiyenbi-token').token ;
  }
  $onInit(){

       console.log(this.currentUser);
  }

  submitListing(newListing){
    console.log(newListing);
    this.$http.post(this.url,newListing)
      .then((response) => {
        this.$state.go('home')
      })

  }

}

ListingPageController.$inject = ['$http','ListingModel','$state','$stateParams','$cookieStore' ,'API_URL'];

export default ListingPageController;
