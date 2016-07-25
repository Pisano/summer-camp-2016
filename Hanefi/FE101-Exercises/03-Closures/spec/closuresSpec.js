
describe("closures", function() {
  var execSync = require('child_process').execSync;

  it("is opened on browser, check manually", function() {
    console.log("Check manually from browser.");
    execSync('open spec/test.html');
  });
});
