/*
 * Navigation
 * Global navigation on website
 */

class Navigation {
    constructor(navigation, button) {
        this.$el            = {}
        this.$el.navigation = navigation
        this.$el.button     = button
        this.$el.close      = close
        this.opened         = false
        this.startScrolling = false
        this.scrollY        = window.scrollY
        this.windowWith     = window.innerWidth

        this.$el.button.addEventListener('click', (event) => {
            event.preventDefault()


            if(!this.opened) {
                this.open()
            }

            else {
                this.close()
            }
        })

        window.addEventListener('scroll', () => {
            this.scrollY = window.scrollY

            if((!this.$el.navigation.classList.contains('header--scrolling') && !this.startScrolling) || this.scrollY === 0){
                this.scrolling()
            }
        })

        window.addEventListener('resize', () => {
            this.windowWith     = window.innerWidth
            if(this.windowWith > 960 &&  this.$el.navigation.classList.contains('header--navigation-expanded')){
                this.close()
            }

        })

    }


    /*
     * open()
     * Called on click if navigation is closed
     * Open the global navigation
     */
    open() {
        this.opened = true
        this.$el.navigation.classList.add('header--navigation-expanded')
        this.$el.button.classList.add('is-active')

        if(this.$el.navigation.classList.contains('header--scrolling')){
            console.log('scrool');
            this.$el.navigation.classList.remove('header--scrolling')
        }

    }


    /*
     * close()
     * Called on click if navigation is opened
     * Close the global navigation
     */
    close() {
        this.opened = false
        this.$el.navigation.classList.remove('header--navigation-expanded')
        this.$el.button.classList.remove('is-active')

        this.scrolling();

    }

    /*
     * scrolling()
     * Called on start scroll
     * Add a box shadow on the header
     */


    scrolling() {
        if(this.scrollY === 0){
            this.startScrolling = false
            this.$el.navigation.classList.remove('header--scrolling')
        } else {
            this.startScrolling = true
            this.$el.navigation.classList.add('header--scrolling')
        }
    }

}

let navigation = new Navigation(
    document.querySelector('.header'),
    document.querySelector('.header__toggle-nav'),
)






























/*




function ajaxTourList() {
    let xhr = new XMLHttpRequest();
    let tourList = document.querySelector('.tour-list ul')


    xhr.open('POST', ajaxurl + '?action=ajax_tour');
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onload = function() {
        if (xhr.status === 200) {
            let response = JSON.parse(this.responseText);
            changeTourList(response, tourList);

        }
        else {
            console.log('Ajax for tour failed.  Returned status of ' + xhr.status);
        }
    };
    xhr.send();
}
/*
document.addEventListener("DOMContentLoaded", function (event) {
    ajaxTourList();
});


function changeTourList(response, tourList){


    let randomNumber = [];
    while(randomNumber.length < 3){
        let random = Math.floor(Math.random() * response.length)
        if(randomNumber.indexOf(random) > -1) continue;
        randomNumber[randomNumber.length] = random;
    }


    let html = '';
    for(let i = 0; i < 3; i++) {


        html += '<li><h3>'+response[randomNumber[i]].city+'</h3>'+response[randomNumber[i]].date+'</li>'


    }

    tourList.innerHTML = html;

}

setInterval(ajaxTourList, 5000);
*/





(function($) {

    /*
     *  new_map
     *
     *  This function will render a Google Map onto the selected jQuery element
     *
     *  @type	function
     *  @date	8/11/2013
     *  @since	4.3.0
     *
     *  @param	$el (jQuery element)
     *  @return	n/a
     */

    function new_map( $el ) {

        // var
        var $markers = $el.find('.marker');


        // vars
        var args = {
            zoom		: 12,
            scaleControl: false,
            scrollwheel: false,
            disableDoubleClickZoom: true,
            streetViewControl: false,
            mapTypeControl: false,
            center		: new google.maps.LatLng(0, 0),
            mapTypeId	: google.maps.MapTypeId.ROADMAP,
            styles       :  [
                {
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#212121"
                        }
                    ]
                },
                {
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "color": "#212121"
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "administrative.country",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                },
                {
                    "featureType": "administrative.land_parcel",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "administrative.locality",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#bdbdbd"
                        }
                    ]
                },
                {
                    "featureType": "administrative.neighborhood",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.text",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "poi.business",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#181818"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#616161"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "color": "#1b1b1b"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#2c2c2c"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#8a8a8a"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#373737"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#3c3c3c"
                        }
                    ]
                },
                {
                    "featureType": "road.highway.controlled_access",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#4e4e4e"
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#616161"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#000000"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#3d3d3d"
                        }
                    ]
                }
            ]
        };



        // create map
        var map = new google.maps.Map( $el[0], args);



        // add a markers reference
        map.markers = [];


        // add markers
        $markers.each(function(){

            add_marker( $(this), map );

        });




        // center map
        center_map( map );


        // return
        return map;

    }

    /*
     *  add_marker
     *
     *  This function will add a marker to the selected Google Map
     *
     *  @type	function
     *  @date	8/11/2013
     *  @since	4.3.0
     *
     *  @param	$marker (jQuery element)
     *  @param	map (Google Map object)
     *  @return	n/a
     */

    function add_marker( $marker, map ) {

        // var
        var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );




        // create marker
        var marker = new google.maps.Marker({
            position	: latlng,
            map			: map,
        });


        marker.addListener('click', function() {
            map.setZoom(8);
            map.setCenter(marker.getPosition());
            console.log(marker.getPosition());
        });

        // add to array
        map.markers.push( marker );

        // if marker contains HTML, add it to an infoWindow
        if( $marker.html() )
        {
            // create info window
            var infowindow = new SnazzyInfoWindow({
                marker: marker,
                content: 'Snazzy!'
            });


            // show info window when marker is clicked
            google.maps.event.addListener(marker, 'click', function() {

                infowindow.open( map, marker );

            });
        }

    }

    /*
     *  center_map
     *
     *  This function will center the map, showing all markers attached to this map
     *
     *  @type	function
     *  @date	8/11/2013
     *  @since	4.3.0
     *
     *  @param	map (Google Map object)
     *  @return	n/a
     */

    function center_map( map ) {

        // vars
        var bounds = new google.maps.LatLngBounds();

        // loop through all markers and create bounds
        $.each( map.markers, function( i, marker ){

            var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );

            bounds.extend( latlng );

        });

        // only 1 marker?
        if( map.markers.length == 1 )
        {
            // set center of map
            map.setCenter( bounds.getCenter() );
            map.setZoom( 16 );
        }
        else
        {
            // fit to bounds
            map.fitBounds( bounds );
        }

    }

    /*
     *  document ready
     *
     *  This function will render each map when the document is ready (page has loaded)
     *
     *  @type	function
     *  @date	8/11/2013
     *  @since	5.0.0
     *
     *  @param	n/a
     *  @return	n/a
     */
// global var
    var map = null;

    $(document).ready(function(){

        $('.acf-map').each(function(){

            // create map
            map = new_map( $(this) );

        });

    });

})(jQuery);