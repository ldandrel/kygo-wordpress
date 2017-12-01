/*
 * Music
 * Page music
 */

class Music {
    constructor(timeline) {
        this.$el            = {}
        this.$el.timeline   = timeline

        const io = new IntersectionObserver(entries => {
            if(entries[0].intersectionRatio !== 0) {
                this.fixeTimeline()
            }
        })

        io.observe(this.$el.timeline)


        window.addEventListener('scroll', () => {
            this.scrollY = window.scrollY

            if((!this.$el.navigation.classList.contains('header--scrolling') && !this.startScrolling) || this.scrollY === 0){
                this.scrolling()
            }
        })


    }


    /*
     * fixeTimeline()
     * Called on scroll to fix timeline
     * Fixe timeline
     */
    fixeTimeline() {


    }


}

let music = new Music(
    document.querySelector('.timeline')
)

