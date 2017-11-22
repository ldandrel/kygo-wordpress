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
         * Tour
         * Search and filter on tour page
         */

        var Tour = function () {
            function Tour(container) {
                var _this = this;

                _classCallCheck(this, Tour);

                this.$el = {};
                this.$el.container = container;
                this.$el.search = this.$el.container.querySelector('.tour__search-input input');
                this.$el.filters = this.$el.container.querySelectorAll('.tour__search-filter ul li');

                this.$el.search.addEventListener('input', function () {
                    var search = _this.$el.search.value;
                    var searchLenght = search.length;

                    if (searchLenght > 2 && searchLenght % 2 === 0) {
                        _this.ajax();
                    }
                });
            }

            /*
             * ajax()
             * Call in the constructor
             * Ajax Call
             */


            _createClass(Tour, [{
                key: "ajax",
                value: function ajax() {

                    var search = this.$el.search.value;

                    fetch(ajaxurl + '?action=ajax_search_tour&search=' + search, {
                        method: 'post'
                    }).then(function (response) {
                        console.log(response.json());
                    }).catch(function (err) {
                        console.log('Error with Ajax Call, sorry');
                    });
                }
            }]);

            return Tour;
        }();

        var tour = new Tour(document.querySelector('.tour__search'));
    }, {}] }, {}, [1]);