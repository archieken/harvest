// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var address = document.getElementById('address');

    if (address) {
      var autocomplete = new google.maps.places.Autocomplete(address, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(address, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
