const queryString = 'm-object'
const observables = Array.from(document.querySelectorAll(`.${queryString}`))

const options = {
    root: null,
    rootMargin: '0px',
    threshold: [],
}


let thresholdSets = []



for (let i=0; i<=1; i+= 0.01) {
    thresholdSets.push(i)
}

const parallax = (event, observer) => {
    const target = event[0].target
    const ratio = event[0].intersectionRatio * 40
    console.log((event[0].intersectionRatio * 40))
    // console.log(event[0].boundingClientRect.y > 0)
   // console.log(ratio)
    if(ratio > 0) {
        target.style.transform = `translateY(${ratio}px)`
    }

}



observables.forEach((observable, i) => {
        options.threshold = thresholdSets
        console.log(options)
        let observer = new IntersectionObserver(parallax, options)
        observer.observe(observable)
})




