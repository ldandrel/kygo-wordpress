/*
 * Slider
 * Slider on homepage
 */

class Slider {
    constructor(slider, controls) {
        this.$el = {}
        this.$el.window = window
        this.$el.slider = slider
        this.$el.controls = controls
        this.$el.wrapper = this.$el.slider.querySelector('.slider__wrapper')
        this.$el.slides = this.$el.wrapper.querySelectorAll('img')
        this.$el.current = this.$el.controls.querySelector('p strong')
        this.$el.next = this.$el.controls.querySelector('.slider__next')
        this.$el.prev = this.$el.controls.querySelector('.slider__prev')
        this.$el.timeline = this.$el.controls.querySelector('.slider__timeline')
        this.$el.timeline_progress = this.$el.timeline.querySelector('.slider__timeline--progress')
        this.current_slide = 0
        this.slide_width = this.$el.slider.offsetWidth




        this.init()


        this.$el.next.addEventListener('click', () => {
           this.next()
        })


        this.$el.prev.addEventListener('click', () => {
            this.prev()
        })

    }


    init(){
        for(let [index, child] of this.$el.slides.entries()) {

            let translate = -1 * this.slide_width

            if(index === 0) {
                translate = 0
            }

            child.style.transform = `translateX(${translate}px)`

            setTimeout(()  => {
                child.style.zIndex = `inherit`
            }, 1000)

        }
    }

    /*
    * Next()
    * Called on click on next and with setinterval
    * Next slide
    */
    next(){
        if(this.current_slide < this.$el.slides.length - 1) {
            this.current_slide++
        } else if (this.current_slide = this.$el.slides.length - 1) {
            this.current_slide = 0
        }


        for(let [index, slide] of this.$el.slides.entries()) {
            slide.classList.remove('is-active')
        }

        this.$el.slides[this.current_slide].classList.add('is-active')


        let translate = 0

        this.$el.slides[this.current_slide].style.transform = `translateX(${translate}px)`

        if(this.current_slide === this.$el.slides.length - 1){
            for(let [index, child] of this.$el.slides.entries()) {
                if(!child.classList.contains('is-active')){
                    let translate = -1 * this.slide_width
                    child.style.transform = `translateX(${translate}px)`

                }
            }
        }


        /*

        let i = 0;
        while (i++ < this.$el.slides.length) {
            if ((i > this.current_slide + 1) && !this.$el.slider.classList.contains('is-active')){

                let position = this.$el.slides[i - 1].getAttribute('data-position')

                let translate = -1 * ((this.$el.slider.offsetWidth * position) - (this.$el.slider.offsetWidth * (position - 1)))

                this.$el.slider.classList.add('is-active')
                this.$el.slides[i - 1].style.transform = `translateX(${translate}px)`

                this.$el.slides[i - 1].addEventListener('transitionend', () => {
                    this.$el.slider.classList.remove('is-active')

                })


            }
          }*/

    this.update_controls()

    }

    /*
     * prev()
     * Called on click on prev and with setinterval
     * Prev slide
     */
    prev(){
        if(this.current_slide > 0) {
            this.current_slide--
        } else {
            this.current_slide = this.$el.slides.length - 1
        }

        this.update_controls()

    }

    update_controls(){

        this.$el.timeline_progress.style.transformOrigin = '0 50%'
        this.$el.timeline_progress.style.transform = 'scale(1, 1)'
        setTimeout(()  => {
            this.$el.timeline_progress.style.transformOrigin = '100%'
            this.$el.timeline_progress.style.transform = 'scale(0, 1)'
        }, 1000)



        this.$el.current.innerHTML = pad(this.current_slide + 1)


    }
}

let slider = new Slider(
    document.querySelector('.slider'),
    document.querySelector('.slider__controls')
)


function pad(n) {
    return (n < 10) ? ("0" + n) : n;
}