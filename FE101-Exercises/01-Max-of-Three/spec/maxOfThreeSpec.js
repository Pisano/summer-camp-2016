describe("maxOfThree", function() {
  var maxOfThree = require('../lib/maxOfThree');

  it("should be defined", function(){
    expect(maxOfThree).toBeDefined();
  });

  it("should return 10 when 5,3,10 given as parameters", function() {
    expect(maxOfThree(5,3,10)).toEqual(10);
  });


  it("should return 1 when 1,-1,0 given as parameters", function() {
    expect(maxOfThree(1,-1,0)).toEqual(1);
  });
});
