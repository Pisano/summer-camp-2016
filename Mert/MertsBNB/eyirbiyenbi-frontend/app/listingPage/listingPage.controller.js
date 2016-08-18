class ListingPageController{
  constructor($http,ListingModel,$state,$stateParams,$cookieStore, API_URL){
    this.$http = $http;
    this.$state = $state;
    this.$stateParams = $stateParams;
    this.$cookieStore = $cookieStore;
    this.ListingModel = ListingModel;
    this.userCredentials = {
      'user' : {
        'email': null,
        'password':null
      }
    }
    this.url = API_URL + '/listingPage/' ;
  }
  $onInit(){
    console.log(this.$stateParams.id);
    this.listingID = this.$stateParams.id;

    this.ListingModel.getListing(this.listingID).then((response)=>{
      this.listing = response.data;
    });

    this.ListingModel.getUsers().then((response)=>{
      console.log(response.data)
      this.users=response.data;
    })
    console.log(this.$stateParams.id);
    console.log(this.currentUser.id );
    this.currentUser=$cookieStore.get('eyirbiyenbi-token');

  }

  printPhoneNumberOfListing(listing){
    console.log(this.users.filter((user) => listing.user_id == user.id))
    return this.users.filter((user) => listing.user_id == user.id)
  }

  getBedCapacityCount(listing){
    return new Array(listing.bed_capacity);
  }



  loadListingDetails(){

  }


}

ListingPageController.$inject = ['$http','ListingModel','$state','$stateParams','$cookieStore' ,'API_URL'];

export default ListingPageController;
