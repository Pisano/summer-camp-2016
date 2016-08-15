import appTemplate from 'text!app.html';

const AppController = function() {
  var vm = this;
  vm.header = "Fantasy Football";
}

const AppComponent = {
  controller: AppController,
  template: appTemplate
};

export default AppComponent;
