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
                this.$el.musicSection = document.querySelectorAll('.music-section');

                var options = {
                    root: null,
                    rootMargin: '0px',
                    threshold: [0]
                };

                var watch = function watch(event, observer) {
                    var target = event[0].target;
                    _this.check_date(target);
                };

                this.$el.musicSection.forEach(function (observable, i) {

                    var observer = new IntersectionObserver(watch);
                    observer.observe(observable);
                });
            }

            _createClass(Music, [{
                key: "check_date",
                value: function check_date(target) {
                    console.log(target.dataset.year);
                }
            }]);

            return Music;
        }();

        var music = new Music(document.querySelector('.timeline'));
    }, {}] }, {}, [1]);