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


// const options = {
//     root: null,
//     rootMargin: '0px',
//     threshold: [],
// }
//
//
// let thresholdSets = []
//
// for (let i=0; i<=1; i+= 0.01) {
//     thresholdSets.push(i)
// }
//
// const parallax = (event, observer) => {
//     const target = event[0].target
//     const ratio = (event[0].boundingClientRect.top / 5)
//
//     console.log(event[0].boundingClientRect.top)
//
//     if(ratio > 0) {
//         target.style.transform = `translateY(${ratio}px)`
//     }
// }
//
//
//
// const parallaxInverse = (event, observer) => {
//     const target = event[0].target
//     const ratio = event[0].intersectionRatio * 40
//     console.log(ratio)
//     if(ratio > 0) {
//         target.style.transform = `translateY(-${ratio}px)`
//     }
//
// }
//
//
//
// observables.forEach((observable, i) => {
//         options.threshold = thresholdSets
//         let observer = ''
//         if (observable.classList.contains(`${queryString}--parallax`)) {
//             observer = new IntersectionObserver(parallax, options)
//         } else if (observable.classList.contains(`${queryString}--parallax-inverse`)) {
//             observer = new IntersectionObserver(parallaxInverse, options)
//         }
//
//
//         observer.observe(observable)
// })
//
//
//
//
