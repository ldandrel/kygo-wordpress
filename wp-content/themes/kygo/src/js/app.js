const close_alert_button = document.querySelector('.header__alert-close')

//close alert band in header
function closeAlert() {
    document.querySelector('.header').classList.remove('alert')
}

//calling on click the function to close alert band in header
close_alert_button.addEventListener('click', () => {
    closeAlert();
});

//close Popup on map page
function closePopup(){
    document.querySelector('.popup-map').classList.remove('is-active')
}
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



