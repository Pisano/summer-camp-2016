class HomeController {
  constructor($http, ListingModel, API_URL ,$state) {
    this.$state= $state;
    this.$http = $http;
    this.API_URL = API_URL;
    this.ListingModel = ListingModel;
    //console.log(ListingModel.getGreeting());
  }

  $onInit() {
    console.log(this.API_URL);

    this.ListingModel.query().then((response) => {
      //console.log(response.data);
      this.listings= response.data;

    })
    this.ListingModel.getUsers().then((response)=>{
      console.log(response.data)
      this.users=response.data;
    })
  }

  printPhoneNumberOfListing(listing){
    console.log(this.users.filter((user) => listing.user_id == user.id))
    return this.users.filter((user) => listing.user_id == user.id)
  }

  getBedCapacityCount(listing){
    return new Array(listing.bed_capacity);
  }

  goToHome(){
    this.$state.go('home')
  }

  goToLogin(){
    this.$state.go('loginPage');

  }

  goToAddListing(){
    this.$state.go('addListingPage');
  }

  goToListing(listing){
    this.$state.go(listing.id);
  }

}




HomeController.$inject = ['$http', 'ListingModel', 'API_URL' ,'$state'];

export default HomeController;
