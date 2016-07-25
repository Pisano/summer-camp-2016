# Specs

Consider the following code:

```javascript
var buttons = document.getElementsByTagName('button');
for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', () => {
    console.log('You clicked button #' + i);
  });
}
```

What will be printed on the console if a user clicks the **first** and the **fourth** button in the list? Why ?

***

Write the program that prints the right result on the console.

**Example:**

* When we click second button, it should write `You clicked button #1`
* When we click third button, it should write `You clicked button #2`

# Test

When you think you are good, type `jasmine` in your terminal. Results must be
checked manually for this exercise.
