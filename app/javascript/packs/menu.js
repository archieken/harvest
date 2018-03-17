function toggleNav() {
  document.querySelector('.navbar-harvest').classList.toggle('make-navbar-transparent');
  document.querySelector('#invisible-transition-div').classList.toggle('show-page-cover');
  document.querySelector('#site-wrapper').classList.toggle('show-nav');
}

var toggleNavLinks = document.querySelectorAll('.toggle-nav');

for (var i = 0; i < toggleNavLinks.length; i++) {
    toggleNavLinks[i].addEventListener('click', function(event) {
        event.preventDefault()
        toggleNav();
    });
}

function toggleCheckout() {
  document.querySelector('#basket-items').classList.toggle('basket-items-switch');
  document.querySelector('#checkout').classList.toggle('checkout-switch');
  document.querySelector('#hide-button').classList.toggle('hide-button');
  document.querySelector('#hide-back').classList.toggle('hide-button');
  document.querySelector('#hide-spacer').classList.toggle('hide-button');
}

var toggleCheckoutLinks = document.querySelectorAll('.toggle-checkout');

for (var i = 0; i < toggleCheckoutLinks.length; i++) {
    toggleCheckoutLinks[i].addEventListener('click', function(event) {
        event.preventDefault()
        toggleCheckout();
    });
}
