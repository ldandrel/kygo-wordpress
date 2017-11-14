'use strict';

var _slicedToArray = function () { function sliceIterator(arr, i) { var _arr = []; var _n = true; var _d = false; var _e = undefined; try { for (var _i = arr[Symbol.iterator](), _s; !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i["return"]) _i["return"](); } finally { if (_d) throw _e; } } return _arr; } return function (arr, i) { if (Array.isArray(arr)) { return arr; } else if (Symbol.iterator in Object(arr)) { return sliceIterator(arr, i); } else { throw new TypeError("Invalid attempt to destructure non-iterable instance"); } }; }();

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

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
        this.$el.wrapper = this.$el.slider.querySelector('.slider__wrapper');
        this.$el.slides = this.$el.wrapper.querySelectorAll('img');
        this.$el.current = this.$el.controls.querySelector('p strong');
        this.$el.next = this.$el.controls.querySelector('.slider__next');
        this.$el.prev = this.$el.controls.querySelector('.slider__prev');
        this.$el.timeline = this.$el.controls.querySelector('.slider__timeline');
        this.$el.timeline_progress = this.$el.timeline.querySelector('.slider__timeline--progress');
        this.current_slide = 0;
        this.slide_width = this.$el.slider.offsetWidth;

        this.init();

        this.$el.next.addEventListener('click', function () {
            _this.next();
        });

        this.$el.prev.addEventListener('click', function () {
            _this.prev();
        });
    }

    _createClass(Slider, [{
        key: 'init',
        value: function init() {
            var _this2 = this;

            var _iteratorNormalCompletion = true;
            var _didIteratorError = false;
            var _iteratorError = undefined;

            try {
                var _loop = function _loop() {
                    var _step$value = _slicedToArray(_step.value, 2),
                        index = _step$value[0],
                        child = _step$value[1];

                    var translate = -1 * _this2.slide_width;

                    if (index === 0) {
                        translate = 0;
                    }

                    child.style.transform = 'translateX(' + translate + 'px)';

                    setTimeout(function () {
                        child.style.zIndex = 'inherit';
                    }, 1000);
                };

                for (var _iterator = this.$el.slides.entries()[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
                    _loop();
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
        }

        /*
        * Next()
        * Called on click on next and with setinterval
        * Next slide
        */

    }, {
        key: 'next',
        value: function next() {
            if (this.current_slide < this.$el.slides.length - 1) {
                this.current_slide++;
            } else if (this.current_slide = this.$el.slides.length - 1) {
                this.current_slide = 0;
            }

            var _iteratorNormalCompletion2 = true;
            var _didIteratorError2 = false;
            var _iteratorError2 = undefined;

            try {
                for (var _iterator2 = this.$el.slides.entries()[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
                    var _step2$value = _slicedToArray(_step2.value, 2),
                        index = _step2$value[0],
                        slide = _step2$value[1];

                    slide.classList.remove('is-active');
                }
            } catch (err) {
                _didIteratorError2 = true;
                _iteratorError2 = err;
            } finally {
                try {
                    if (!_iteratorNormalCompletion2 && _iterator2.return) {
                        _iterator2.return();
                    }
                } finally {
                    if (_didIteratorError2) {
                        throw _iteratorError2;
                    }
                }
            }

            this.$el.slides[this.current_slide].classList.add('is-active');

            var translate = 0;

            this.$el.slides[this.current_slide].style.transform = 'translateX(' + translate + 'px)';

            if (this.current_slide === this.$el.slides.length - 1) {
                var _iteratorNormalCompletion3 = true;
                var _didIteratorError3 = false;
                var _iteratorError3 = undefined;

                try {
                    for (var _iterator3 = this.$el.slides.entries()[Symbol.iterator](), _step3; !(_iteratorNormalCompletion3 = (_step3 = _iterator3.next()).done); _iteratorNormalCompletion3 = true) {
                        var _step3$value = _slicedToArray(_step3.value, 2),
                            index = _step3$value[0],
                            _child = _step3$value[1];

                        if (!_child.classList.contains('is-active')) {
                            var _translate = -1 * this.slide_width;
                            _child.style.transform = 'translateX(' + _translate + 'px)';
                        }
                    }
                } catch (err) {
                    _didIteratorError3 = true;
                    _iteratorError3 = err;
                } finally {
                    try {
                        if (!_iteratorNormalCompletion3 && _iterator3.return) {
                            _iterator3.return();
                        }
                    } finally {
                        if (_didIteratorError3) {
                            throw _iteratorError3;
                        }
                    }
                }
            }

            /*
             let i = 0;
            while (i++ < this.$el.slides.length) {
                if ((i > this.current_slide + 1) && !this.$el.slider.classList.contains('is-active')){
                     let position = this.$el.slides[i - 1].getAttribute('data-position')
                     let translate = -1 * ((this.$el.slider.offsetWidth * position) - (this.$el.slider.offsetWidth * (position - 1)))
                     this.$el.slider.classList.add('is-active')
                    this.$el.slides[i - 1].style.transform = `translateX(${translate}px)`
                     this.$el.slides[i - 1].addEventListener('transitionend', () => {
                        this.$el.slider.classList.remove('is-active')
                     })
                  }
              }*/

            this.update_controls();
        }

        /*
         * prev()
         * Called on click on prev and with setinterval
         * Prev slide
         */

    }, {
        key: 'prev',
        value: function prev() {
            if (this.current_slide > 0) {
                this.current_slide--;
            } else {
                this.current_slide = this.$el.slides.length - 1;
            }

            this.update_controls();
        }
    }, {
        key: 'update_controls',
        value: function update_controls() {
            var _this3 = this;

            this.$el.timeline_progress.style.transformOrigin = '0 50%';
            this.$el.timeline_progress.style.transform = 'scale(1, 1)';
            setTimeout(function () {
                _this3.$el.timeline_progress.style.transformOrigin = '100%';
                _this3.$el.timeline_progress.style.transform = 'scale(0, 1)';
            }, 1000);

            this.$el.current.innerHTML = pad(this.current_slide + 1);
        }
    }]);

    return Slider;
}();

var slider = new Slider(document.querySelector('.slider'), document.querySelector('.slider__controls'));

function pad(n) {
    return n < 10 ? "0" + n : n;
}