"use strict";

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
            function Map(map) {
                _classCallCheck(this, Map);

                this.init(map);
            }

            /*
             * init()
             * Call in the constructor
             * Init the google map
             */


            _createClass(Map, [{
                key: "init",
                value: function init(map_container) {
                    var restaurant = { lat: parseFloat(map_container.getAttribute('data-lat')), lng: parseFloat(map_container.getAttribute('data-lng')) };
                    var icon = {
                        url: map_container.parentElement.querySelector('#marker').src, // url
                        scaledSize: new google.maps.Size(20, 30), // scaled size
                        origin: new google.maps.Point(0, 0), // origin
                        anchor: new google.maps.Point(0, 0) // anchor
                    };

                    var map = new google.maps.Map(map_container, {
                        zoom: 16,
                        center: restaurant,
                        styles: style,
                        mapTypeControl: false,
                        fullscreenControl: false,
                        streetViewControl: false,
                        zoomControl: false
                    });
                    var marker = new google.maps.Marker({
                        position: restaurant,
                        map: map,
                        icon: icon
                    });
                }
            }]);

            return Map;
        }();

        var map = new Map(document.querySelector('.map'));
    }, {}] }, {}, [1]);