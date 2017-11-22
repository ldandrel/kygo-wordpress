"use strict";

var _slicedToArray = function () { function sliceIterator(arr, i) { var _arr = []; var _n = true; var _d = false; var _e = undefined; try { for (var _i = arr[Symbol.iterator](), _s; !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i["return"]) _i["return"](); } finally { if (_d) throw _e; } } return _arr; } return function (arr, i) { if (Array.isArray(arr)) { return arr; } else if (Symbol.iterator in Object(arr)) { return sliceIterator(arr, i); } else { throw new TypeError("Invalid attempt to destructure non-iterable instance"); } }; }();

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

(function e(t, n, r) {
  function s(o, u) {
    if (!n[o]) {
      if (!t[o]) {
        var a = typeof require == "function" && require;if (!u && a) return a(o, !0);if (i) return i(o, !0);throw new Error("Cannot find module '" + o + "'");
      }var f = n[o] = { exports: {} };t[o][0].call(f.exports, function (e) {
        var n = t[o][1][e];return s(n ? n : e);
      }, f, f.exports, e, t, n, r);
    }return n[o].exports;
  }var i = typeof require == "function" && require;for (var o = 0; o < r.length; o++) {
    s(r[o]);
  }return s;
})({ 1: [function (require, module, exports) {
    /*
     * Map
     * Map for tour page
     */

    var Map = function () {
      function Map(map, markers) {
        var _this = this;

        _classCallCheck(this, Map);

        this.$el = {};
        this.$el.map = map;
        this.$el.mapContainer = this.$el.map.parentElement;
        this.$el.popup = this.$el.mapContainer.querySelector('.popup-map');
        this.$el.closePopup = this.$el.popup.querySelector('.popup__close img');
        this.markers = [];

        this.icon = {
          url: this.$el.mapContainer.querySelector('#marker').src

        };

        this.iconActive = {
          url: this.$el.mapContainer.querySelector('#marker-active').src
        };

        this.init(map, markers);

        this.$el.closePopup.addEventListener('click', function () {
          _this.closePopup();
        });
      }

      /*
       * init()
       * Call in the constructor
       * Init the google map
       */


      _createClass(Map, [{
        key: "init",
        value: function init(map_container, markers) {
          var _this2 = this;

          var style = require('./map.json');

          var map = new google.maps.Map(map_container, {
            center: new google.maps.LatLng(0, 0),
            zoom: 4,
            styles: style,
            mapTypeControl: false,
            fullscreenControl: false,
            streetViewControl: false,
            zoomControl: false
          });

          map.addListener('click', function () {
            _this2.$el.popup.classList.remove('is-active');
            _this2.markers.forEach(function (marker) {
              marker.setIcon(_this2.icon);
            });
          });

          var _iteratorNormalCompletion = true;
          var _didIteratorError = false;
          var _iteratorError = undefined;

          try {
            for (var _iterator = markers.entries()[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
              var _step$value = _slicedToArray(_step.value, 2),
                  index = _step$value[0],
                  marker = _step$value[1];

              this.addMarker(marker, map);
            }
          } catch (err) {
            _didIteratorError = true;
            _iteratorError = err;
          } finally {
            try {
              if (!_iteratorNormalCompletion && _iterator.return) {
                _iterator.return();
              }
            } finally {
              if (_didIteratorError) {
                throw _iteratorError;
              }
            }
          }

          this.centerMap(map);
        }

        /*
         * addMarker()
         * Call in init
         * Create all marker
         */

      }, {
        key: "addMarker",
        value: function addMarker($marker, map) {
          var _this3 = this;

          var latlng = new google.maps.LatLng(parseFloat($marker.getAttribute('data-lat')), parseFloat($marker.getAttribute('data-lng')));

          var marker = new google.maps.Marker({
            position: latlng,
            map: map,
            icon: this.icon
          });

          this.markers.push(marker);

          if ($marker.innerHTML) {
            var popup = this.$el.popup;

            google.maps.event.addListener(marker, 'click', function () {

              _this3.markers.forEach(function (marker) {
                marker.setIcon(_this3.icon);
              });

              popup.classList.add('is-active');
              popup.querySelector('.popup__content').innerHTML = $marker.innerHTML;
              marker.setIcon(_this3.iconActive);
            });
          }
        }

        /*
         * closePopup()
         * Call in click arrow for close popup
         * Remove class active of popup and set default icon marker map
         */

      }, {
        key: "closePopup",
        value: function closePopup() {
          var _this4 = this;

          this.$el.popup.classList.remove('is-active');
          this.markers.forEach(function (marker) {
            marker.setIcon(_this4.icon);
          });
        }

        /*
         * closePopup()
         * Call in init map
         * Center map for display all marker
         */

      }, {
        key: "centerMap",
        value: function centerMap(map) {
          var bounds = new google.maps.LatLngBounds();

          this.markers.forEach(function (marker) {
            var latlng = new google.maps.LatLng(marker.position.lat(), marker.position.lng());
            bounds.extend(latlng);
          });

          if (this.markers.length === 1) {
            map.setCenter(bounds.getCenter());
            map.setZoom(4);
          } else {
            map.fitBounds(bounds);
          }
        }
      }]);

      return Map;
    }();

    var map = new Map(document.querySelector('.map-container .map'), document.querySelectorAll('.marker'));
  }, { "./map.json": 2 }], 2: [function (require, module, exports) {
    module.exports = [{
      "elementType": "geometry",
      "stylers": [{
        "color": "#f5f5f5"
      }]
    }, {
      "elementType": "labels.icon",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#616161"
      }]
    }, {
      "elementType": "labels.text.stroke",
      "stylers": [{
        "color": "#f5f5f5"
      }]
    }, {
      "featureType": "administrative",
      "elementType": "geometry",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "administrative.land_parcel",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "administrative.land_parcel",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#bdbdbd"
      }]
    }, {
      "featureType": "administrative.neighborhood",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "poi",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "poi",
      "elementType": "geometry",
      "stylers": [{
        "color": "#eeeeee"
      }]
    }, {
      "featureType": "poi",
      "elementType": "labels.text",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "poi",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#757575"
      }]
    }, {
      "featureType": "poi.park",
      "elementType": "geometry",
      "stylers": [{
        "color": "#e5e5e5"
      }]
    }, {
      "featureType": "poi.park",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#9e9e9e"
      }]
    }, {
      "featureType": "road",
      "elementType": "geometry",
      "stylers": [{
        "color": "#ffffff"
      }]
    }, {
      "featureType": "road",
      "elementType": "labels",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "road",
      "elementType": "labels.icon",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "road.arterial",
      "elementType": "labels",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "road.arterial",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#757575"
      }]
    }, {
      "featureType": "road.highway",
      "elementType": "geometry",
      "stylers": [{
        "color": "#dadada"
      }]
    }, {
      "featureType": "road.highway",
      "elementType": "labels",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "road.highway",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#616161"
      }]
    }, {
      "featureType": "road.local",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "road.local",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#9e9e9e"
      }]
    }, {
      "featureType": "transit",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "transit.line",
      "elementType": "geometry",
      "stylers": [{
        "color": "#e5e5e5"
      }]
    }, {
      "featureType": "transit.station",
      "elementType": "geometry",
      "stylers": [{
        "color": "#eeeeee"
      }]
    }, {
      "featureType": "water",
      "elementType": "geometry",
      "stylers": [{
        "color": "#c9c9c9"
      }]
    }, {
      "featureType": "water",
      "elementType": "labels.text",
      "stylers": [{
        "visibility": "off"
      }]
    }, {
      "featureType": "water",
      "elementType": "labels.text.fill",
      "stylers": [{
        "color": "#9e9e9e"
      }]
    }];
  }, {}] }, {}, [1]);