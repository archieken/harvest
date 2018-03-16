function toggleSignup() {
  console.log("helllooooooo")
  document.querySelector('.navbar-harvest').classList.toggle('make-navbar-transparent');
  document.querySelector('#invisible-transition-div').classList.toggle('show-page-cover');
  document.querySelector('#signup-wrapper').classList.toggle('show-signup');
}

var toggleSignupLinks = document.querySelectorAll('.toggle-signup');

for (var i = 0; i < toggleSignupLinks.length; i++) {
    toggleSignupLinks[i].addEventListener('click', function(event) {
        event.preventDefault()
        toggleSignup();
    });
}
