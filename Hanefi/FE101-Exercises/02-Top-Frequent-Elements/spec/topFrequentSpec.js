describe("topFrequent", function() {
  var topFrequent = require('../lib/topFrequent');

  it("should exist", function() {
    expect(topFrequent).toBeDefined();
  });

  // multiple frequent numbers case
  it("should return '[1,2]' when '[1,2,1,2,3,1], 2' given as parameters", function() {
    expect(topFrequent([1, 2, 1, 2, 3, 1], 2)).toEqual([1, 2]);
  });

  // same frequency test
  it("should return '[1,2]' when '[1,2,1,2,2,1,3], 2' given as parameters", function() {
    expect(topFrequent([1, 2, 1, 2, 2, 1, 3], 2)).toEqual([1, 2]);
  });

  // 1 frequent number case
  it("should return '[1]' when '[1,1,1,2,2,3], 1' given as parameters", function() {
    expect(topFrequent([1, 1, 1, 2, 2, 3], 1)).toEqual([1]);
  });

  // empty array case
  it("should return '[]' when given array is empty", function() {
    expect(topFrequent([], 1)).toEqual([]);
    expect(topFrequent([], 5)).toEqual([]);
  });
});
