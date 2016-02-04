trainPlatformSearch.controller('trainPlatformSearchController', ['Search', function(Search) {

  this.stations = list;
  var self = this;

  self.doSearch = function() {
    Search.query(self.depart, self.finish)
      .then(function(responce) {
        self.trainsResult = responce.data.trainServices;
      });
  };

  self.setsSelectedTrain = function(time) {
    self.trainTime = time;
    self.showMobile = true;
  };

  self.setStations = function(depart, finish) {
    self.depart = depart;
    self.finish = finish;
    self.doSearch();
  }

}]);
