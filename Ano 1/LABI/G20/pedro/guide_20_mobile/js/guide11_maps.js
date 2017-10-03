//Cria o mapa
var map = new L.Map("oMeuMapa", {center: [40.633258,-8.659097],zoom: 15});
var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});

map.addLayer(osm);

//------------------------------------------------------------------------------
//Mostra coornadas quando se cliqua com o botão do rato
map.on("click", mostraCoordenadas);

function mostraCoordenadas(e){
  var s = document.getElementById("coordenadas");
  s.innerHTML = "Latitude, Longitude = "+e.latlng.lat+", "+e.latlng.lng;
}
