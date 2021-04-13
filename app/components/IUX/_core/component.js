import('./stylesheets/core.css');

/*
sanitize
microtip
daterange
selecttize
*/

// https://github.com/jaywcjlove/hotkeys
import hotkeys from './hotkeys.js'
// import * as moment from './moment.min.js';
// window.moment = moment

/*
var inputs = document.querySelectorAll("input,select,textarea");
for (var i = 0 ; i < inputs.length; i++) {
  console.log("ADDING LISTENER");
   inputs[i].addEventListener("keypress", function(event){
      if (event.keyCode === 13) {
        console.log('go')
        event.preventDefault()
        const inputs =
            Array.prototype.slice.call(document.querySelectorAll("input,select,textarea"))
        const index =
            (inputs.indexOf(document.activeElement) + 1) % inputs.length
        const input = inputs[index]
        input.focus()
        input.select()
    }
   })
}
*/