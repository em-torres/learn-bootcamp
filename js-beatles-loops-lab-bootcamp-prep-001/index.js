function theBeatlesPlay(musicians, instruments) {
  var temp = [];

  for (var i = 0; i < musicians.length; i++) {
    temp.push(`${musicians[i]} plays ${instruments[i]}`);
  }

  return temp;
}

function johnLennonFacts(facts) {
  var facto = facts.slice();

  for (var i = 0; i < facto.length; i++) {
    facto[i] = `${facto[i]}!!!`;
  }

  return facto;
}

function iLoveTheBeatles(n) {
  var myArray = [];

  do {
    myArray.push("I love the Beatles!");
    n += 1;
  } while (n < 15);

  return myArray;
}
