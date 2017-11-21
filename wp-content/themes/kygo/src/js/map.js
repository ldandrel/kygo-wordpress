/*
 * Map
 * Map for tour page
 */

class Map {
    constructor(map, markers) {
        this.$el = {}
        this.$el.map = map
        this.$el.popup = this.$el.map.parentElement.querySelector('.popup-map')
        this.$el.closePopup = this.$el.popup.querySelector('.popup__close')


        //this.init(map, markers)

        this.$el.closePopup.addEventListener('click', () => {
            this.$el.popup.classList.remove('is-active')
        })

    }


    /*
     * init()
     * Call in the constructor
     * Init the google map
     */
    init(map_container, markers) {



        let style = require('./map.json')


        let map = new google.maps.Map(map_container, {
            center: new google.maps.LatLng(48.157841, 2.526855),
            zoom: 4,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false
        });

        for(let [index, marker] of markers.entries()) {
            this.addMarker(marker, map)
        }




    }


    /*
     * addMarker()
     * Call in init
     * Create all marker
     */
    addMarker($marker, map) {

        let latlng =  new google.maps.LatLng(parseFloat($marker.getAttribute('data-lat')), parseFloat($marker.getAttribute('data-lng')))


        let marker = new google.maps.Marker({
            position: latlng,
            map: map
        });



        if( $marker.innerHTML )
        {
            let popup = this.$el.popup

            google.maps.event.addListener(marker, 'click', () => {
                popup.classList.add('is-active')
                popup.innerHTML = $marker.innerHTML;

            })
        }


    }

}

let map = new Map(
    document.querySelector('.map-container .map'),
    document.querySelectorAll('.marker')
)


