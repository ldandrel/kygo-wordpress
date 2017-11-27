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
        var queryString = 'm-object';
        var observables = Array.from(document.querySelectorAll("." + queryString));

        var options = {
            root: null,
            rootMargin: '0px',
            threshold: []
        };

        var thresholdSets = [];

        for (var i = 0; i <= 1; i += 0.01) {
            thresholdSets.push(i);
        }

        var parallax = function parallax(event, observer) {
            var target = event[0].target;
            var ratio = event[0].intersectionRatio * 40;
            console.log(event[0].intersectionRatio * 40);
            // console.log(event[0].boundingClientRect.y > 0)
            // console.log(ratio)
            if (ratio > 0) {
                target.style.transform = "translateY(" + ratio + "px)";
            }
        };

        observables.forEach(function (observable, i) {
            options.threshold = thresholdSets;
            console.log(options);
            var observer = new IntersectionObserver(parallax, options);
            observer.observe(observable);
        });
    }, {}] }, {}, [1]);