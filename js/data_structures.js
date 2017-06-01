var colors = ["red", "blue", "green", "cucumber"];
var horseNames = ["Sparkle Mane", "Mildew", "Rainshine", "Mug"];

colors.push("Sunset Blue");
horseNames.push("Ed");

// console.log(colors);
// console.log(horseNames);

function objectMaker(array1, array2) {
  var newObject = {};
  if (array1.length == array2.length){
    // New object, horseNames = keys, colors = values
    for (var i = array1.length - 1; i >= 0; i--){
      newObject[array1[i]] = array2[i];
    }
  }
  return newObject
}

console.log(objectMaker(horseNames, colors));
