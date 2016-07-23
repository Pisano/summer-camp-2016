var maxOfThree = (a,b,c) => {

  //find the bigger one of the two variables
  if (a > b) {
    temp = a;
  } else {
    temp = b;
  }

  //compare the previous biggest number to the third number
  //and return the biggest value
  if (c > temp) {
    return c;
  } else {
    return temp;
  }
};

module.exports = maxOfThree; // DO NOT CHANGE THIS
