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
         * Slider
         * Slider on homepage
         */

        var Slider = function () {
            function Slider(slider, controls) {
                var _this = this;

                _classCallCheck(this, Slider);

                this.$el = {};
                this.$el.window = window;
                this.$el.slider = slider;
                this.$el.controls = controls;
                this.$el.slides = this.$el.slider.querySelectorAll('.slider__wrapper');
                this.$el.current = this.$el.controls.querySelector('p strong');
                this.$el.next = this.$el.controls.querySelector('.slider__next');
                this.$el.prev = this.$el.controls.querySelector('.slider__prev');
                this.$el.timeline = this.$el.controls.querySelector('.slider__timeline');
                this.$el.timeline_progress = this.$el.timeline.querySelector('.slider__timeline--progress');
                this.current_slide = 0;
                this.slide_width = this.$el.slider.offsetWidth;

                this.$el.next.addEventListener('click', function () {
                    _this.next();
                });

                this.$el.prev.addEventListener('click', function () {
                    _this.prev();
                });

                this.init();
            }

            _createClass(Slider, [{
                key: "init",
                value: function init() {}

                /*
                * Next()
                * Called on click on next and with setinterval
                * Next slide
                */

            }, {
                key: "next",
                value: function next() {

                    if (this.current_slide < this.$el.slides.length - 1) {
                        this.current_slide++;
                    } else if (this.current_slide = this.$el.slides.length - 1) {
                        this.current_slide = 0;
                    }

                    this.update_controls();
                }

                /*
                 * prev()
                 * Called on click on prev and with setinterval
                 * Prev slide
                 */

            }, {
                key: "prev",
                value: function prev() {
                    if (this.current_slide > 0) {
                        this.current_slide--;
                    } else {
                        this.current_slide = this.$el.slides.length - 1;
                    }

                    this.update_controls();
                }

                /*
                 * update_controls()
                 * Called after next or prev action
                 * Update all controls (timeline + current slide), and update class (prev, is-active, next)
                 */

            }, {
                key: "update_controls",
                value: function update_controls() {
                    var _this2 = this;

                    //Remove all class before update class
                    var _iteratorNormalCompletion = true;
                    var _didIteratorError = false;
                    var _iteratorError = undefined;

                    try {
                        for (var _iterator = this.$el.slides.entries()[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
                            var _step$value = _slicedToArray(_step.value, 2),
                                index = _step$value[0],
                                slide = _step$value[1];

                            slide.classList.remove('prev');
                            slide.classList.remove('active');
                            slide.classList.remove('next');
                        }

                        //Add prev class for prev slide
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

                    if (this.current_slide - 1 >= 0) {
                        this.$el.slides[this.current_slide - 1].classList.add('prev');
                    } else {
                        this.$el.slides[this.$el.slides.length - 1].classList.add('prev');
                    }

                    //Add is active class for current slide
                    this.$el.slides[this.current_slide].classList.add('active');

                    //Add next class for next slide
                    if (this.current_slide + 1 === this.$el.slides.length) {
                        this.$el.slides[0].classList.add('next');
                    } else {
                        this.$el.slides[this.current_slide + 1].classList.add('next');
                    }

                    this.$el.timeline_progress.style.transformOrigin = '0 50%';
                    this.$el.timeline_progress.style.transform = 'scale(1, 1)';
                    setTimeout(function () {
                        _this2.$el.timeline_progress.style.transformOrigin = '100%';
                        _this2.$el.timeline_progress.style.transform = 'scale(0, 1)';
                    }, 1000);

                    this.$el.current.innerHTML = pad(this.current_slide + 1);
                }
            }]);

            return Slider;
        }();

        function pad(n) {
            return n < 10 ? "0" + n : n;
        }

        var slider = new Slider(document.querySelector('.slider'), document.querySelector('.slider__controls'));

        setInterval(function () {
            slider.next();
        }, 3000);
    }, {}] }, {}, [1]);