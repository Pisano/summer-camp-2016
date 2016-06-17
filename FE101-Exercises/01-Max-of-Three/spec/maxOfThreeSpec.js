describe("maxOfThree", function() {
  var maxOfThree = require('../lib/maxOfThree');

  it("should return 10 when 5,3,10 given as parameters", function() {
    expect(maxOfThree).toBeDefined();
    expect(maxOfThree(5,3,10)).toEqual(10);
  });
});
