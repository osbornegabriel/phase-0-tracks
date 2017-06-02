// Write a function that returns longest phrase in array
// var = ""
// build loop that iterates through entire array, and provides index-counter
// if array[indexCounter].length is > var.length
// var = array[indexCounter]

function longestWord(array){
  var longWord = "";
  for (i = 0; i < array.length; i++){
    if (array[i].length > longWord.length) {longWord = array[i];}
  }
  return longWord;
}

var jazz = ["Bird", "Dizzy", "Monk"];
var blues = ["Robert Johnson", "Muddy Waters", "BB King"];

console.log(longestWord(jazz));
console.log(longestWord(blues));


// n algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair.
//matchMade = false
//hashOne.each |:key, value|
//if hashTwo[:key] == value
// then matchMade = true

function matchMaker(object1, object2){
  matchMade = false;
  for (var [key, value] of Object.entries(object1)){
    if (object2[key] == value) {matchMade = true;}
  }
  return matchMade;
}

var bebop = {bird: 'saxophone', dizzy: 'trumpet', monk: 'piano'};
var trumpetPlayers = {freddie: 'trumpet', morgan: 'trumpet', dizzy: 'trumpet'};
var trombonePlayers = {johnson: 'trombone', rosolino: 'trombone', fontana: 'trombone'};

console.log(matchMaker(bebop, trumpetPlayers));
console.log(matchMaker(trumpetPlayers, trombonePlayers));

// write random word generator
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
// have alphabetArray (all twenty six letters)
// function random(integer)
//  newArray = []
//  integer.times
//    random(1..10).times
// newArray[integer] += alphabetArray.random