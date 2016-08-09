angular.module('navigationApp',[])
.controller('NavigationController',function(){
  var vm = this;
  vm.active ='';
  vm.active = function(code){
    vm.active=code;
  }
})
