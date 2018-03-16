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
var quant = document.getElementsByClass("qty");
quant.innerHTML = parseInt(quant.innerHTML) + 1;
var total = document.getElementsByClass("product-card-price");
total.innerHTML =  parseInt(document.getElementsByClass("unitprice")) * parseInt(document.getElementByClass("qty"));
}

function removeQuantity() {
var quant = document.getElementsByClass("qty");
if (parseInt(quant.innerHTML) > 0) {
quant.innerHTML = parseInt(quant.innerHTML) - 1;
var total = document.getElementsByClass("product-card-price");
total.innerHTML =  parseInt(document.getElementsByClass("unitprice")) * parseInt(document.getElementByClass("qty"));

}
else { alert("cannot have a quantity of 0")}
}
