"use strict";

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
        var tour_dates = document.querySelectorAll('.tour__date');
        var current_index = 1;

        //init slider for tour dates
        function tour_init() {
            for (var i = 0; i < 3; i++) {
                tour_dates[i].classList.add('active');
                tour_dates[i].classList.add('active-' + (i + 1));
            }
            if (window.innerWidth < 960) {
                setInterval(function () {
                    change_date();
                }, 1000);
            } else {
                setInterval(function () {
                    change_date();
                }, 3000);
            }

            window.addEventListener('resize', function () {
                if (window.innerWidth < 960) {
                    setInterval(function () {
                        change_date();
                    }, 1000);
                } else {
                    setInterval(function () {
                        change_date();
                    }, 3000);
                }
            });
        }

        tour_init();

        //change each date in slider for tour dates
        function change_date() {
            var former_date = document.querySelector('.active-' + current_index);
            var former_index = former_date.dataset.index;

            former_date.classList.remove('active');
            former_date.classList.remove('active-' + current_index);

            if (former_index > tour_dates.length - 4) {
                former_index = former_index - 5;
            }

            tour_dates[parseInt(former_index) + 3].classList.add('active');
            tour_dates[parseInt(former_index) + 3].classList.add('active-' + current_index);
            current_index++;
            if (current_index == 4) {
                current_index = 1;
            }
        }
    }, {}] }, {}, [1]);