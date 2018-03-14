function addToBasket() {
var basket = document.getElementById("demo");
basket.innerHTML = parseInt(basket.innerHTML) + 1;
}

function removeFromBasket() {
var basket = document.getElementById("demo");
if (parseInt(basket.innerHTML) > 0) {
basket.innerHTML = parseInt(basket.innerHTML) - 1;
}
else { alert("cannot have a quantity of 0")}
}




function addQuantity() {
var quant = document.getElementByClass("qty");
quant.innerHTML = parseInt(quant.innerHTML) + 1;
}

function removeQuantity() {
var quant = document.getElementByClass("qty");
if (parseInt(quant.innerHTML) > 0) {
quant.innerHTML = parseInt(quant.innerHTML) - 1;
}
else { alert("cannot have a quantity of 0")}
}
