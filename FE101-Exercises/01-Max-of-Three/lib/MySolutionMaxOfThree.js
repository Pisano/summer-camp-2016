var maxOfThree=(a,b,c)=>{
  var max=a;

  if(b>max){
    max=b;
  }

  if(c>max){
    max=c;
  }
  return max;
}
// TODO: Implement the maxOfThree function

module.exports = maxOfThree; // DO NOT CHANGE THIS



//1#
function maxOfThree(arr) {

  var max = arr[0];

  arr.forEach(function (elm) {
    max = elm > max ? elm : max;
  })

  return max;
}

//2#

function maxOfThree2(arr) {
  var max = arr[0];

  for(var i=0;i<arr.length;i++) {
    max = arr[i] > max ? arr[i] : max;
  }

  return max;
}
