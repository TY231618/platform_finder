// trainPlatformSearch.controller('trainPlatformSearchController', ['Search', function(Search) {
//
//   var self = this;
//
//   self.doSearch = function() {
//     Search.query(self.depart, self.finish)
//       .then(function(responce) {
//         self.trainsResult = responce.data.trainServices;
//       });
//   };
//
//   self.setsSelectedTrain = function(time) {
//     self.trainTime = time;
//     self.showMobile = true;
//   };
//
// }]);

trainPlatformSearch.controller('trainPlatformSearchController', ['$scope', function ($scope) {
  $scope.stations = list;

  $scope.doSearch = function() {
    Search.query($scope.depart, $scope.finish)
      .then(function(responce) {
        $scope.trainsResult = responce.data.trainServices;
      });
  };

  $scope.setsSelectedTrain = function(time) {
    $scope.trainTime = time;
    $scope.showMobile = true;
  };
}]);
