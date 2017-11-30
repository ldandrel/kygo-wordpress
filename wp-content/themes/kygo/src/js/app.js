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



