function toggleProduct() {
  console.log("it works");
  document.querySelector('#product-modal').classList.toggle('show-product');
  console.log("it works #2");
}

var toggleProductLinks = document.querySelectorAll('.toggle-product');

for (var i = 0; i < toggleProductLinks.length; i++) {
    toggleProductLinks[i].addEventListener('click', function(event) {
        event.preventDefault()
        toggleProduct();
    });
}


