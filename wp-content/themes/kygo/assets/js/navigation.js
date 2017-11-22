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
         * Navigation
         * Global navigation on website
         */

        var Navigation = function () {
            function Navigation(navigation, button) {
                var _this = this;

                _classCallCheck(this, Navigation);

                this.$el = {};
                this.$el.navigation = navigation;
                this.$el.button = button;
                this.$el.close = close;
                this.opened = false;
                this.startScrolling = false;
                this.scrollY = window.scrollY;
                this.windowWith = window.innerWidth;

                this.$el.button.addEventListener('click', function (event) {
                    event.preventDefault();

                    if (!_this.opened) {
                        _this.open();
                    } else {
                        _this.close();
                    }
                });

                window.addEventListener('scroll', function () {
                    _this.scrollY = window.scrollY;

                    if (!_this.$el.navigation.classList.contains('header--scrolling') && !_this.startScrolling || _this.scrollY === 0) {
                        _this.scrolling();
                    }
                });

                window.addEventListener('resize', function () {
                    _this.windowWith = window.innerWidth;
                    if (_this.windowWith > 960 && _this.$el.navigation.classList.contains('header--navigation-expanded')) {
                        _this.close();
                    }
                });
            }

            /*
             * open()
             * Called on click if navigation is closed
             * Open the global navigation
             */


            _createClass(Navigation, [{
                key: "open",
                value: function open() {
                    this.opened = true;
                    this.$el.navigation.classList.add('header--navigation-expanded');
                    this.$el.button.classList.add('is-active');

                    if (this.$el.navigation.classList.contains('header--scrolling')) {
                        console.log('scrool');
                        this.$el.navigation.classList.remove('header--scrolling');
                    }
                }

                /*
                 * close()
                 * Called on click if navigation is opened
                 * Close the global navigation
                 */

            }, {
                key: "close",
                value: function close() {
                    this.opened = false;
                    this.$el.navigation.classList.remove('header--navigation-expanded');
                    this.$el.button.classList.remove('is-active');

                    this.scrolling();
                }

                /*
                 * scrolling()
                 * Called on start scroll
                 * Add a box shadow on the header
                 */

            }, {
                key: "scrolling",
                value: function scrolling() {
                    if (this.scrollY === 0) {
                        this.startScrolling = false;
                        this.$el.navigation.classList.remove('header--scrolling');
                    } else {
                        this.startScrolling = true;
                        this.$el.navigation.classList.add('header--scrolling');
                    }
                }
            }]);

            return Navigation;
        }();

        var navigation = new Navigation(document.querySelector('.header'), document.querySelector('.header__toggle-nav'));
    }, {}] }, {}, [1]);