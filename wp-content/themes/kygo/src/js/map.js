/*
 * Map
 * Map for tour page
 */

class Map {
    constructor(map) {

        this.init(map)
    }


    /*
     * init()
     * Call in the constructor
     * Init the google map
     */
    init(map_container) {
        let restaurant = {lat: parseFloat(map_container.getAttribute('data-lat')), lng: parseFloat(map_container.getAttribute('data-lng'))}
        let icon = {
            url: map_container.parentElement.querySelector('#marker').src, // url
            scaledSize: new google.maps.Size(20, 30), // scaled size
            origin: new google.maps.Point(0,0), // origin
            anchor: new google.maps.Point(0, 0) // anchor
        };

        let map = new google.maps.Map(map_container, {
            zoom: 16,
            center: restaurant,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false,
        });
        let marker = new google.maps.Marker({
            position: restaurant,
            map: map,
            icon: icon
        });

    }

}

let map = new Map(
    document.querySelector('.map')
)

