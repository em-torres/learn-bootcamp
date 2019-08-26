function takeANumber(actQueue, name) {
  actQueue.push(name);
  return `Welcome, ${name}. You are number ${actQueue.length} in line.`
}

function nowServing(actualLine) {
  var nowServed = "";

  if (actualLine.length < 1) {
    nowServed = "There is nobody waiting to be served!";
  } else {
    nowServed = `Currently serving ${actualLine[0]}.`;
    actualLine.shift();
  }

  return nowServed;
}

function currentLine(curLine) {
  var stringCurLine = "The line is currently:";

  if (curLine.length < 1) {
    stringCurLine = "The line is currently empty."
  } else {
    for (var i = 1; i < curLine.length + 1; i++) {
      if (i === curLine.length) {
        stringCurLine += ` ${i}. ${curLine[i-1]}`
      } else {
        stringCurLine += ` ${i}. ${curLine[i-1]},`
      }
    }
  }

  return stringCurLine;
}
