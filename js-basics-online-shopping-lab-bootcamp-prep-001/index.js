var cart = [];

function getCart() {
 return cart;
}

function setCart(c) {
  cart = c;
  return cart;
}

function addToCart(item) {
 cart.push( {itemName: item, itemPrice: Math.floor(Math.random() * 100) + 1 } );
 return `${item} has been added to your cart.`
}

function viewCart() {
  var messageText = "In your cart, you have";

  if (cart.length < 1)
  {
    messageText = "Your shopping cart is empty."
  } else {
    for (var i = 0; i < cart.length; i++) {
      if (cart.length === 1) {
        messageText += ` ${cart[i].itemName} at $${cart[i].itemPrice}.`;
      } else if (i === cart.length - 1) {
        messageText += ` and ${cart[i].itemName} at $${cart[i].itemPrice}.`;
      } else {
        messageText += ` ${cart[i].itemName} at $${cart[i].itemPrice},`
      }
    }
  }

  return(messageText);
}

function total() {
  var total = 0;

  for (var i = 0; i < cart.length; i++) {
    total += cart[i].itemPrice;
  }

  return total;
}

function removeFromCart(item) {
  var removed = false;
  var text = "";

  if (cart.length > 1) {
    for (var i = 0; i < cart.length; i++) {
      if (cart[i].itemName === item) {
        cart.splice(i, 1);
        i--;
        removed = true;
      }
    }
  } else {
    text = "That item is not in your cart.";
  }

  if (!removed) {
    text = "That item is not in your cart.";
  }

  return text;
}

function placeOrder(cardNumber) {
  var text = "";

  if (cardNumber) {
    text = `Your total cost is $${total()}, which will be charged to the card ${cardNumber}.`
  } else {
    text = "Sorry, we don't have a credit card on file for you."
    console.log(text);
  }

  cart = [];
  return text;
}
