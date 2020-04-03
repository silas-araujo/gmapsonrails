// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function initMap(lat, lng) {
 var myCoords = new google.maps.LatLng(lat, lng);
  var mapOptions = {
  center: myCoords, zoom: 12  };
 var map = new google.maps.Map(document.getElementById('map'), mapOptions);

 //Carregando GeoJSON.
        map.data.loadGeoJson(
            '/limitebairro.json')
         
         
            map.data.setStyle(function(feature) {
              
                          
                           var NUMBER_CASES= 15;//virá do banco, falta implementar
                           
                
                          /** Acessando propriedade GID de /limitesbairros.json  
                            */
                             var GID = feature.getProperty('GID');
                          //console.log(GID);
                
                           /*
                           Verificando se GID do arquivo json=GID do BD & número de casos > x.
                           Verdadeiro= poligono vermelho
                           Falso= poligono azul
                          */
                         
                         /*Tá faltando terminar essa parte*/
                             var color = GID===GID_BANCO & NUMBER_CASES > 5 ? 'red' : 'blue';
                 
                            return {
                               fillColor: color,//Cor do poligono
                               strokeWeight: 1//largura da linha
                           }})

                                
}

