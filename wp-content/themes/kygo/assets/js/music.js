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
         * Music
         * Page music
         */

        var Music = function () {
            function Music(timeline) {
                var _this = this;

                _classCallCheck(this, Music);

                this.$el = {};
                this.$el.timeline = timeline;

                var io = new IntersectionObserver(function (entries) {
                    if (entries[0].intersectionRatio !== 0) {
                        _this.fixeTimeline();
                    }
                });

                io.observe(this.$el.timeline);

                window.addEventListener('scroll', function () {
                    _this.scrollY = window.scrollY;

                    if (!_this.$el.navigation.classList.contains('header--scrolling') && !_this.startScrolling || _this.scrollY === 0) {
                        _this.scrolling();
                    }
                });
            }

            /*
             * fixeTimeline()
             * Called on scroll to fix timeline
             * Fixe timeline
             */


            _createClass(Music, [{
                key: "fixeTimeline",
                value: function fixeTimeline() {}
            }]);

            return Music;
        }();

        var music = new Music(document.querySelector('.timeline'));
    }, {}] }, {}, [1]);