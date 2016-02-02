trainPlatformSearch.factory('Search', ['$http', function($http) {
  var queryUrl = 'https://huxley.apphb.com/departures/';
  return {
    query: function(start, finish) {
      return $http({
        url: queryUrl + start + '/to/' + finish + '/20?accessToken=' + 'e841e6e4-acfb-40bf-8879-53a69322adaa',
        method: 'GET'
      });
    }
  };
}]);
