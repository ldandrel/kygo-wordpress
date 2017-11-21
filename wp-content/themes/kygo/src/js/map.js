/*
 * Map
 * Map for tour page
 */

class Map {
    constructor(map, markers) {

        this.init(map, markers)
    }


    /*
     * init()
     * Call in the constructor
     * Init the google map
     */
    init(map_container, markers) {



        let style = require('./map.json')


        let map = new google.maps.Map(map_container, {
            center: new google.maps.LatLng(37.4419, -122.1419),
            zoom: 4,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false
        });

        for(let [index, marker] of markers.entries()) {
            console.log(marker.innerHTML)
            this.addMarker(marker, map)
        }




    }


    /*
     * addMarker()
     * Call in init
     * Create all marker
     */
    addMarker($marker, map) {

        let latlng =  new google.maps.LatLng(parseFloat($marker.getAttribute('data-lat')), parseFloat($marker.getAttribute('data-lng')));


        let marker = new google.maps.Marker({
            position: latlng,
            map: map
        });



        if( $marker.innerHTML )
        {
            // create info window
            var infowindow = new google.maps.InfoWindow({
                content		: $marker.innerHTML
            });

            // show info window when marker is clicked
            google.maps.event.addListener(marker, 'click', function() {

                infowindow.open( map, marker );

            });
        }


    }

}

let map = new Map(
    document.querySelector('.map'),
    document.querySelectorAll('.marker')
)


