console.log("The Script is running");

var texts = document.getElementsByTagName('h3');
var text = texts[0];
text.style.fontFamily = "Comic Sans MS";


function makeLame(){
  var jones = document.getElementById("Jones");
  jones.style.color = "pink";
}

var jones = document.getElementById("Jones");
jones.addEventListener("mouseover", makeLame);