function getFirstSelector(selector) {
  return document.querySelector(selector);
}

function nestedTarget() {
  return getFirstSelector("#nested .target");
}

function deepestChild() {
  let gNode = document.querySelector('#grand-node')
  let nextNode = gNode.children[0];

  while (nextNode) {
    gNode = nextNode;
    nextNode = gNode.children[0];
  }

  return (gNode);
}

function increaseRankBy(n) {
  var list = document.querySelectorAll('ul.ranked-list li');

  for (let i = 0; i < list.length; i++) {
    list[i].innerHTML= parseInt(list[i].innerHTML, 10) + n;
  }
}
