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

        var io = new IntersectionObserver(function (entries) {
            if (entries[0].intersectionRatio !== 0) {
                ajaxNews();
            }
        });
        var footer = document.querySelector('footer');
        io.observe(footer);

        var page = 1;

        function ajaxNews() {
            var lastRequest = false;

            console.log(lastRequest);

            if (!lastRequest) {
                page++;
                var loader = document.querySelector('.loader-container');
                loader.style.display = 'inherit';

                //var check if it's the last ajax request
                fetch(ajaxurl + '?action=ajax_news&page=' + page, {
                    method: 'get',
                    headers: {
                        'Accept': 'application/json, text/plain, */*',
                        'Content-Type': 'application/json'
                    }
                }).then(function (response) {
                    loader.style.display = 'none';
                    return response.json().then(function (json) {
                        var grid = document.querySelector('.news-list');
                        if (json.length < 10) {
                            lastRequest = true;
                        }
                        json.forEach(function (data) {
                            var newCard = '<li class="new__cards">' + '<div class="card" data-src="' + data.link + '">' + '<div class="new__img" style="background-image: url(' + data.thumbmail + ')"></div>' + '<div class="new__content">' + '<div class="new__date date">' + data.date + '</div>' + '<h3 class="new__title">' + data.title + '</h3>' + '<p class="new__description">' + data.description + '</p>' + '<a class="new__more btn-kygo" href="' + data.link + '">Read more</a>' + '</div>' + '</div>' + '</li>';

                            grid.innerHTML += newCard;
                        });
                    });
                }).catch(function (err) {
                    console.log('Error with Ajax Call, sorry');
                });
            }
        }
    }, {}] }, {}, [1]);