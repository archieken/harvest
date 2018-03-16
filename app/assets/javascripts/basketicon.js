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


function addQuantity(quant) {
quant.parentNode.value = parseInt(quant.name) + 1;

}

function removeQuantity(quant) {
if (parseInt(quant.parentNode.value) > 1) {
quant.parentNode.value = parseInt(quant.parentNode.value) - 1;

}
else { alert("cannot have a quantity of 0")}
}
