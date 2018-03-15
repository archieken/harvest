function toggleNav() {
  console.log("helllooooooo")
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
