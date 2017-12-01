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

        requestAnimationFrame(parralax);

        function parralax() {
            for (var i = 0; i < observables.length; i++) {
                var ratio_parralax = observables[i].dataset.parralax;
                observables[i].style.transform = 'translateY(' + observables[i].getBoundingClientRect().top / ratio_parralax + 'px)';
            }
            requestAnimationFrame(parralax);
        }
    }, {}] }, {}, [1]);