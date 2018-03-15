function toggleLogin() {
  console.log("helllooooooo")
  document.querySelector('.navbar-harvest').classList.toggle('make-navbar-transparent');
  document.querySelector('#invisible-transition-div').classList.toggle('show-page-cover');
  document.querySelector('#site-wrapper').classList.toggle('show-login');
}

var toggleLoginLinks = document.querySelectorAll('.toggle-login');

for (var i = 0; i < toggleLoginLinks.length; i++) {
    toggleLoginLinks[i].addEventListener('click', function(event) {
        event.preventDefault()
        toggleLogin();
    });
}
