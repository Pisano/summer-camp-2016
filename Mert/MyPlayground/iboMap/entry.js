angular.module('mapApp', ['ngMap']);
angular.module('mapApp')
 .controller('MapController', function(NgMap) {
   var vm = this;
   vm.positions = [{lat:37.7699298,lng:-122.4469157}];

   vm.user = {
     loc: {
       lat: 0,
       lng: 0
     }
   }

   vm.center = "Istanbul";
   vm.centerForm = {value: ""};
   vm.focus = function() {
     vm.center = vm.centerForm.value;
     vm.centerForm.value = "";
   }

   var counter =0;
    vm.addMarker = function(event, marker) {
        var ll = event.latLng;
        console.log(ll);
        title: 'marker'+counter;
        counter ++;

        vm.positions.push({lat:ll.lat(), lng: ll.lng()});
    }

    vm.draggedMarker = function(event){
      var ll = event.latLng;
      console.log({lat:ll.lat(), lng: ll.lng()});
    }

    vm.triggerDragEnd = function(event, eventName, marker){
      var ll = event.latLng;
      console.log({lat:ll.lat(), lng: ll.lng()});

    }

    vm.clickOnMarker = function(event, marker){
        var ll = event.latLng;

        console.log({lat:ll.lat(), lng: ll.lng()});
        vm.clickOnMarker = marker;
        console.log(marker.title);
    }

    vm.removeMarker = function(){
      vm.positions = [];
    }

   vm.messages = [];

   vm.messageForm = { value: "" }
   vm.sendMessage = function() {
     if( !vm.messageForm.value || (vm.messageForm.value == "")) return;
     vm.messages.push(vm.messageForm.value);
   }
   NgMap.getMap().then(function(map) {
     vm.map = map;
     vm.setLoc()
   });
   vm.centerChanged = function() {
   }
   vm.ping = function() {
     console.log(vm.user.loct);
   }
   vm.setLoc = function() {
     vm.user.loct = [vm.map.center.lat(), vm.map.center.lng()];
   }
   vm.drop = function() {
     console.log("dropped");
     vm.setLoc()
   }
   vm.dragstart = function() {
     console.log("dragging");
   }
 });

