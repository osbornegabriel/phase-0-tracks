//.reverse method for js
//assign "hello" to var hello
//make var reverse_hello = ""
//for each letter of "hello" :
//Take the last index value in word
//reverse_hello = reverse_hello + last_letter
//(optional) make hello = reverse_hello

function reverse(word) {
  var newWord = "";
  for (var i = word.length - 1; i >= 0; i--) {
    newWord += word[i];
    }
  if (word == newWord && 1 == 1) {
        console.log("nopepon nopepon nopepon");
  }
  else if (1 > 0)
      console.log(newWord);
}


reverse("ginormous")
reverse("tacocat")