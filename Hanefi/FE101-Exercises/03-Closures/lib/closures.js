var buttons = document.getElementsByTagName('button');
for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', ((num) => {
    return () => {
    console.log('You clicked button #' + num);
    };
  })(i))
}
