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

        var close_alert_button = document.querySelector('.header__alert-close');

        //close alert band in header
        function closeAlert() {
            document.querySelector('.header').classList.remove('alert');
        }

        //calling on click the function to close alert band in header
        close_alert_button.addEventListener('click', function () {
            closeAlert();
        });

        //close Popup on map page
        function closePopup() {
            document.querySelector('.popup-map').classList.remove('is-active');
        }
    }, {}] }, {}, [1]);