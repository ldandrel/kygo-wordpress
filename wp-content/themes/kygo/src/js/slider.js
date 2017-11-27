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
        this.$el.slides = this.$el.slider.querySelectorAll('.slider__wrapper')
        this.$el.current = this.$el.controls.querySelector('.slider__controls-number strong')
        this.$el.next = this.$el.controls.querySelector('.slider__next')
        this.$el.prev = this.$el.controls.querySelector('.slider__prev')
        this.$el.timeline = this.$el.controls.querySelector('.slider__timeline')
        this.$el.timeline_progress = this.$el.timeline.querySelector('.slider__timeline--progress')
        this.current_slide = 0
        this.slide_width = this.$el.slider.offsetWidth
        this.direction = ''

        //Start timebar animation
        this.$el.timeline_progress.style.transition = 'transform 3s cubic-bezier(.6,.0,.4,1)'
        this.$el.timeline_progress.style.transformOrigin = '0 50%'
        this.$el.timeline_progress.style.transform = 'scale(1, 1)'

        //Set interval for next slide
        this.slider_interval = setInterval(() => {
            this.next()
        }, 3000)

        //On click reset interval for next slide
        this.$el.next.addEventListener('click', () => {
            clearInterval(this.slider_interval)
            this.slider_interval = setInterval(() => {
                this.next()
            }, 3000)
           this.next()
        })

        //On click reset interval for prev slide
        this.$el.prev.addEventListener('click', () => {
            clearInterval(this.slider_interval)
            this.slider_interval = setInterval(() => {
                this.next()
            }, 3000)
            this.prev()
        })

    }


    /*
    * ()
    * update_control_before
    * Called on click on next and with setinterval
    * Next slide
    */
    update_control_before() {
        for(let [index, slide] of this.$el.slides.entries()) {
            slide.classList.remove('before')
        }
        this.$el.slides[this.current_slide].classList.add('before')
    }

    /*
    * next()
    * Called on click on next and with setinterval
    * update controls before changing the index of the current slide
    */
    next(){
        this.update_control_before()

        if(this.current_slide < this.$el.slides.length - 1) {
            this.current_slide++
        } else if (this.current_slide = this.$el.slides.length - 1) {
            this.current_slide = 0
        }

        this.direction = 'next'
        this.update_controls()
    }

    /*
     * prev()
     * Called on click on prev
     * Prev slide
     */
    prev(){
        this.update_control_before()

        if(this.current_slide > 0) {
            this.current_slide--
        } else {
            this.current_slide = this.$el.slides.length - 1
        }
        
        this.direction = 'prev'
        this.update_controls()
    }

    /*
     * update_controls()
     * Called after next or prev action
     * Update all controls (timeline + current slide), and update class (prev, is-active, next)
     */
    update_controls() {

        //Remove all class before update class
        for(let [index, slide] of this.$el.slides.entries()) {
            slide.classList.remove('prev')
            slide.classList.remove('active')
            slide.classList.remove('next')
            slide.classList.remove('active-next')
            slide.classList.remove('active-prev')
        }

        //Add prev class for prev slide
        if(this.current_slide - 1 >= 0){
            this.$el.slides[this.current_slide - 1].classList.add('prev')
        } else {
            this.$el.slides[this.$el.slides.length - 1].classList.add('prev')
        }

        //Add active-direction class for current slide
        if(this.direction === 'prev') {
            this.$el.slides[this.current_slide].classList.add('active-prev')
        } else {
            this.$el.slides[this.current_slide].classList.add('active-next')
        }

        //Add is active class for current slide
        this.$el.slides[this.current_slide].classList.add('active')

        //Add next class for next slide
        if(this.current_slide + 1 === this.$el.slides.length) {
            this.$el.slides[0].classList.add('next')
        } else {
            this.$el.slides[this.current_slide + 1].classList.add('next')
        }

        //Set timbar animation
        this.$el.timeline_progress.style.transition = 'transform 0.5s cubic-bezier(.6,.0,.4,.1)'
        this.$el.timeline_progress.style.transformOrigin = '100%'
        this.$el.timeline_progress.style.transform = 'scale(0, 1)'
        setTimeout(()  => {
            this.$el.timeline_progress.style.transition = 'transform 2.5s cubic-bezier(.6,.0,.4,1)'
            this.$el.timeline_progress.style.transformOrigin = '0 50%'
            this.$el.timeline_progress.style.transform = 'scale(1, 1)'
        }, 500)

        this.$el.current.innerHTML = pad(this.current_slide + 1)

    }
}


function pad(n) {
    return (n < 10) ? ("0" + n) : n;
}

let slider = new Slider(
    document.querySelector('.slider'),
    document.querySelector('.slider__controls')
)
