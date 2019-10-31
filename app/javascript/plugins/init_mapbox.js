import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const setLinkToMarkers = (markers) => {
    markers.forEach((marker) => {
      console.log(marker);
      marker.addListener('click', function() {
        console.log(marker);
      });
    });
  };
  

  // const addMarkersToMap = (map, markers) => {
  //   markers.forEach((marker) => {
  
  //     new mapboxgl.Marker()
  //       .setLngLat([ marker.lng, marker.lat ])
  //       .addTo(map);
  //   });
  // };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      // const el = document.createElement('div');
      // el.className = 'marker';
      // el.setAttribute('href', '/carparks/' + marker.id);

      // el.addEventListener('click', function() {
      //   window.alert(marker.id);
      // });

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
        .setHTML('<strong3>' + marker.address + '</strong><br><a href="/carparks/' + marker.id + '">View this carpark</a>'))
        .addTo(map);
    });
    // addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    // New function here
  }
};

export { initMapbox };