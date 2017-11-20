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

        for(let [index, marker] of markers.entries()) {
            this.addMarker(marker)
        }

        let style = require('./map.json')



        let map = new google.maps.Map(map_container, {
            zoom: 16,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false,
        });


    }


    /*
     * addMarker()
     * Call in init
     * Create all marker
     */
    addMarker($marker){

        let latlng =  new google.maps.LatLng(parseFloat($marker.getAttribute('data-lat')), parseFloat($marker.getAttribute('data-lng')));

        let marker = new google.maps.Marker({
            position: latlng,
            map: map
        });


    }

}

let map = new Map(
    document.querySelector('.map'),
    document.querySelectorAll('.marker')
)


