//Cria o mapa
var map = new L.Map("oMeuMapa", {center: [40.633258,-8.659097],zoom: 15});
var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});

map.addLayer(osm);

//------------------------------------------------------------------------------
//Mostra coornadas quando se cliqua com o butão do rato
map.on("click", mostraCoordenadas);

function mostraCoordenadas(e){
  var s = document.getElementById("coordenadas");
  s.innerHTML = "Latitude, Longitude = "+e.latlng.lat+", "+e.latlng.lng;
}

//------------------------------------------------------------------------------
//Define pontos
var iconeUA = L.icon({ iconUrl: "http://xcoa.av.it.pt/ua.png" });   //Imagem para o local UA
var pontos = [
  L.marker([40.633258, -8.659097], {icon: iconeUA}).bindPopup("LABI@DETI"),   //bindPopup mostra texto quando se clica no ponto
  L.marker([40.642729, -8.747899])
];

//Adiciona pontos ao mapa
for(i in pontos) {
  pontos[i].addTo(map);
}

//Ajusta a vista do mapa para se ver todos os pontos
var grupo = new L.featureGroup(pontos);
map.fitBounds(grupo.getBounds());

//------------------------------------------------------------------------------
//Desenha um polígono em volta do local da reitoria
var reitoria = L.polygon(
  [
    [40.63102, -8.65793], [40.63149, -8.65731], [40.63126, -8.65699], [40.63078, -8.65759]
  ], { color: "red" } );
reitoria.addTo(map);

var deti = L.polygon(
[ [40.63277, -8.65907], [40.63319, -8.65908], [40.63323, -8.65944], [40.63348, -8.65945], [40.63348, -8.65962], [40.63306, -8.65961], [40.63304, -8.65925], [40.63277, -8.65924] ], { color: "blue" } );
deti.addTo(map);
