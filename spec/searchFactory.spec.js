describe('Search Factory', function() {

  var search;

  beforeEach(module('platformSearch'));

  beforeEach(inject(function(Search, $httpBackend) {
    search = Search;
    httpBackend = $httpBackend;
    httpBackend
      .when("GET", 'https://huxley.apphb.com/departures/CST/to/LEW/20?accessToken=e841e6e4-acfb-40bf-8879-53a69322adaa')
      .respond(
        { trains: "trains" }
      );
  }));

  it('responds to query', function() {
      expect(search.query).toBeDefined();
  });

  it('returns search results', function() {
    search.query('CST', 'LEW')
      .then(function(responce) {
        expect(responce.data.trains).toEqual("trains");
      });
      httpBackend.flush();
  });

});
