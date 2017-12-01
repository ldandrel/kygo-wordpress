const queryString = 'm-object'
const observables = Array.from(document.querySelectorAll(`.${queryString}`))

requestAnimationFrame(parralax)

function parralax () {
    for (let i = 0; i < observables.length; i++) {
        let ratio_parralax = observables[i].dataset.parralax
        observables[i].style.transform = 'translateY(' + (observables[i].getBoundingClientRect().top / ratio_parralax) + 'px)'
    }
    requestAnimationFrame(parralax)
}



