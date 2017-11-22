/*
 * Map
 * Map for tour page
 */

class Map {
    constructor(map, markers) {
        this.$el = {}
        this.$el.map = map
        this.$el.mapContainer = this.$el.map.parentElement
        this.$el.popup = this.$el.mapContainer.querySelector('.popup-map')
        this.$el.closePopup = this.$el.popup.querySelector('.popup__close img')
        this.markers = []

        this.icon = {
            url: this.$el.mapContainer.querySelector('#marker').src

        }

        this.iconActive = {
            url: this.$el.mapContainer.querySelector('#marker-active').src
        }



        this.init(map, markers)

        this.$el.closePopup.addEventListener('click', () => {
           this.closePopup()
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
            center: new google.maps.LatLng(0, 0),
            zoom: 4,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false
        })

        map.addListener('click', () => {
            this.$el.popup.classList.remove('is-active')
            this.markers.forEach((marker) => {
                marker.setIcon(this.icon);
            })
        })


        for(let [index, marker] of markers.entries()) {
            this.addMarker(marker, map)
        }

        this.centerMap(map)



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
            map: map,
            icon: this.icon
        })

        this.markers.push(marker)

        if( $marker.innerHTML )
        {
            let popup = this.$el.popup

            google.maps.event.addListener(marker, 'click', () => {

                this.markers.forEach((marker) => {
                    marker.setIcon(this.icon);
                })

                popup.classList.add('is-active')
                popup.querySelector('.popup__content').innerHTML = $marker.innerHTML;
                marker.setIcon(this.iconActive)

            })
        }
    }

    /*
     * closePopup()
     * Call in click arrow for close popup
     * Remove class active of popup and set default icon marker map
     */

    closePopup(){
        this.$el.popup.classList.remove('is-active')
        this.markers.forEach((marker) => {
            marker.setIcon(this.icon);
        })
    }

    /*
     * closePopup()
     * Call in init map
     * Center map for display all marker
     */
    centerMap(map){
        let bounds = new google.maps.LatLngBounds()

        this.markers.forEach((marker) => {
            let latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
            bounds.extend( latlng );
        })

        if( this.markers.length === 1 )
        {
            map.setCenter( bounds.getCenter() );
            map.setZoom( 4 );
        }
        else
        {
            map.fitBounds( bounds );
        }

    }


}

let map = new Map(
    document.querySelector('.map-container .map'),
    document.querySelectorAll('.marker')
)


