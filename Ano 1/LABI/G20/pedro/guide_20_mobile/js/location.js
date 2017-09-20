function showPosition(position){
    $("#location").html(position.coords.latitude+" "+position.coords.longitude);
}

$(document).ready(function() {
    navigator.geolocation.getCurrentPosition(showPosition);
});