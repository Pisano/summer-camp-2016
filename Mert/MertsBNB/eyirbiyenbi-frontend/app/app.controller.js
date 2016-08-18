class AppController {
  constructor($state) {
    this.$state =$state;
  }

  $onInit() {  }

  goToHome(){
    this.$state.go('home');
  }
  goToLogin(){
    this.$state.go('loginPage');
  }
}

AppController.$inject = ['$state'];

export default AppController;
