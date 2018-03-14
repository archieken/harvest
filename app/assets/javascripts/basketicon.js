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

