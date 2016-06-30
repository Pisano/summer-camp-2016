# Specs

Define a function `topFrequent()` that takes *an array* and *an integer k* as
arguments and returns the *k* most frequent elements.

**Example:**

```javascript
var res = topFrequent([1, 1, 1, 2, 2, 3], 2);
console.log(res); // [1, 2]
```

***

Can you make that function a function of `Array` type? It won't be tested,
take it as a challenge.

**Example:**

```javascript
var res = [1, 1, 1, 2, 2, 3].topFrequent(2);
console.log(res); // [1, 2]
```

***

**Note:**

* Your code's time complexity *must not* exceed `O(n log n)`.
* You may assume k is always valid, *1 ≤ k ≤ number of unique elements*.

# Test

When you think you are good, type `jasmine` in your terminal, all tests must be
green. Ideally you should not have any style offense.
