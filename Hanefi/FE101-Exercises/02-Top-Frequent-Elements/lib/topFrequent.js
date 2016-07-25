//creates an object storing the frequencies of elements
var findFrequencies = (array) => {
  var frequencies = {}

  array.forEach((elem) => {
    //if this is the first occurence, set the frequency to zero
    if (isNaN(frequencies[elem])) {
      frequencies[elem] = 0;
    }
    //increment the frequency
    frequencies[elem]++;
  })

  return frequencies;
}

var topFrequent = (array,k) => {

  var occurenceCounts = findFrequencies(array);
  var pairs = [];

  //create a multidimensional array from the frequency object
  //now list object is structured as [[freq1,elem1],[freq2,elem2]...]
  list = Object.keys(occurenceCounts).map((num) => [occurenceCounts[num],num])

  //sort the pairs according to their frequencies
  occurenceCountsSorted = list.sort((pair1,pair2) => pair1[0]-pair2[0]);

  //take the most frequent k elements
  bestK = occurenceCountsSorted.splice(-k).map((pair) => pair[1]);

  //parse the values into integers and sort the values
  return bestK.map((elem)=>parseInt(elem)).sort();
}

Array.prototype.topFrequent = function(k) {
  return topFrequent(this,k);
}

module.exports = topFrequent; // DO NOT CHANGE THIS
