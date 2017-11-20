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

        /*
        
        
        
        
        function ajaxTourList() {
            let xhr = new XMLHttpRequest();
            let tourList = document.querySelector('.tour-list ul')
        
        
            xhr.open('POST', ajaxurl + '?action=ajax_tour');
            xhr.setRequestHeader("Content-Type", "application/json");
            xhr.onload = function() {
                if (xhr.status === 200) {
                    let response = JSON.parse(this.responseText);
                    changeTourList(response, tourList);
        
                }
                else {
                    console.log('Ajax for tour failed.  Returned status of ' + xhr.status);
                }
            };
            xhr.send();
        }
        /*
        document.addEventListener("DOMContentLoaded", function (event) {
            ajaxTourList();
        });
        
        
        function changeTourList(response, tourList){
        
        
            let randomNumber = [];
            while(randomNumber.length < 3){
                let random = Math.floor(Math.random() * response.length)
                if(randomNumber.indexOf(random) > -1) continue;
                randomNumber[randomNumber.length] = random;
            }
        
        
            let html = '';
            for(let i = 0; i < 3; i++) {
        
        
                html += '<li><h3>'+response[randomNumber[i]].city+'</h3>'+response[randomNumber[i]].date+'</li>'
        
        
            }
        
            tourList.innerHTML = html;
        
        }
        
        setInterval(ajaxTourList, 5000);
        */

    }, {}] }, {}, [1]);