class LoginPageController{
  constructor($http,$state,$stateParams,$cookieStore, API_URL){
    this.$http = $http;
    this.$state = $state;
    this.$stateParams = $stateParams;
    this.$cookieStore = $cookieStore;
    this.userCredentials = {
      'user' : {
        'email': null,
        'password':null
      }
    }
    this.url = API_URL + '/users/login'
  }

  $onInit(){
  }
  login(){
    //Some http request
    this.$http.post(this.url,this.userCredentials)
      .then((response) => {
        this.$cookieStore.put('eyirbiyenbi-token',response.data);
        this.$state.go('home')
      })
  }
}

LoginPageController.$inject = ['$http','$state','$stateParams','$cookieStore' ,'API_URL'];

export default LoginPageController;
