describe('Platform Search finder', function() {
  it('has a title', function() {
    browser.get('http://localhost:8080');

    expect(browser.getTitle()).toEqual('Platformation');
  });

  it('adds entry station', function ()
    var first = element.all(by.css('.list li')).first();

    element(by.id('entryStation')).sendKeys('Abbey Wood');
    element(by.id('exitStation')).sendKeys('Lewisham');
    element(by.id('searchBtn')).click();
    first.click();
    element(by.id('numberInput')).sendKeys('07943699606');
    element(by.id('submitBtn')).click();

    expect(by.id('txtNotification').getText()).toEqual("Thanks. We'll text you when the platform information for your train is ready!");
  });
});
