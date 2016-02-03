describe('PlatformSearchController', function() {

  beforeEach(module('platformSearch'));

  var ctrl;
  describe('on initialise', function() {

    beforeEach(inject(function($controller) {
      ctrl = $controller('trainPlatformSearchController');
    }));

    it('initialises with an empty depart and finish station', function() {
      expect(ctrl.depart).toBeUndefined();
      expect(ctrl.finish).toBeUndefined();
    });
  });

  describe('when entering a start and end station', function(){
    var fakeSearch;

    beforeEach(function() {
      module(function ($provide) {

        fakeSearch = jasmine.createSpyObj('fakeSearchInfo', ['query']);

        $provide.factory('Search', function() {
          return fakeSearch;
        });
      });
    });

    beforeEach(inject(function($q, $rootScope, $controller) {
      scope = $rootScope;
      fakeSearch.query.and.returnValue($q.when({data: {trainServices: 'train'}}));
      ctrl = $controller('trainPlatformSearchController');
    }));

    it('returns search results', function(){
      ctrl.depart = 'CST';
      ctrl.finish = 'LEW';
      ctrl.doSearch();
      scope.$apply();
      expect(ctrl.trainsResult).toEqual('train');
    });
  });
});
