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
        this.$el.current = this.$el.controls.querySelector('p strong')
        this.$el.next = this.$el.controls.querySelector('.slider__next')
        this.$el.prev = this.$el.controls.querySelector('.slider__prev')
        this.$el.timeline = this.$el.controls.querySelector('.slider__timeline')
        this.$el.timeline_progress = this.$el.timeline.querySelector('.slider__timeline--progress')
        this.current_slide = 0
        this.slide_width = this.$el.slider.offsetWidth



        this.$el.next.addEventListener('click', () => {
           this.next()
        })


        this.$el.prev.addEventListener('click', () => {
            this.prev()
        })

        this.init()
    }


    init(){

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

    /*
     * update_controls()
     * Called after next or prev action
     * Update all controls (timeline + current slide), and update class (prev, is-active, next)
     */
    update_controls(){

        //Remove all class before update class
        for(let [index, slide] of this.$el.slides.entries()) {
            slide.classList.remove('prev')
            slide.classList.remove('active')
            slide.classList.remove('next')

        }

        //Add prev class for prev slide
        if(this.current_slide - 1 >= 0){
            this.$el.slides[this.current_slide - 1].classList.add('prev')
        } else {
            this.$el.slides[this.$el.slides.length - 1].classList.add('prev')
        }

        //Add is active class for current slide
        this.$el.slides[this.current_slide].classList.add('active')

        //Add next class for next slide
        if(this.current_slide + 1 === this.$el.slides.length) {
            this.$el.slides[0].classList.add('next')
        } else {
            this.$el.slides[this.current_slide + 1].classList.add('next')
        }

        this.$el.timeline_progress.style.transformOrigin = '0 50%'
        this.$el.timeline_progress.style.transform = 'scale(1, 1)'
        setTimeout(()  => {
            this.$el.timeline_progress.style.transformOrigin = '100%'
            this.$el.timeline_progress.style.transform = 'scale(0, 1)'
        }, 1000)



        this.$el.current.innerHTML = pad(this.current_slide + 1)


    }
}


function pad(n) {
    return (n < 10) ? ("0" + n) : n;
}


export default Slider;
