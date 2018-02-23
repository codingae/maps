<?php 
  include_once('koneksi.php');
?>
<!DOCTYPE html>
<html>
  <head>
    <style>
      #map-canvas {
        height: 75%;
        width: 100%
      }
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=KEY"></script>
    <script>
    var marker;
      function initialize() {
        var mapCanvas = document.getElementById('map-canvas');
        var mapOptions = {
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }     
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var infoWindow = new google.maps.InfoWindow;      
        var bounds = new google.maps.LatLngBounds();
 
 
        function bindInfoWindow(marker, map, infoWindow, html) {
          google.maps.event.addListener(marker, 'click', function() {
            infoWindow.setContent(html);
            infoWindow.open(map, marker);
          });
        }
 
        function addMarker(lat, lng, info) {
          var pt = new google.maps.LatLng(lat, lng);
          bounds.extend(pt);
          // setting icon
          var icon = {
              url: "http://www.coop-unina.org/wp-content/uploads/2017/02/Map-Marker.png", // url iconnya
              scaledSize: new google.maps.Size(50, 50), // scaled size
              origin: new google.maps.Point(0,0), // origin
              anchor: new google.maps.Point(0, 0) // anchor
          };
          var marker = new google.maps.Marker({
              map: map,
              // animasi iconnya
              animation:google.maps.Animation.BOUNCE,
              // define icon
              icon:icon,
              position: pt
          });       
          map.fitBounds(bounds);
          bindInfoWindow(marker, map, infoWindow, info);
        }
 
          <?php
            $query = mysql_query("SELECT id_user,nama_toko,latitude,longtitude FROM user WHERE 1");
              while ($data = mysql_fetch_array($query)) {
                $lat = $data['latitude'];
                $lon = $data['longtitude'];
                $nama = $data['nama_toko'];
                // mainkan link url disini
                echo ("addMarker($lat, $lon, '<b>$nama<br> <a href=\'linknya-taro-disini\'>Detail</a></b>');\n");                        
              }
          ?>
        }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>