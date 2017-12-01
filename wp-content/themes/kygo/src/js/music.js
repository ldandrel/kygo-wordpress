/*
 * Music
 * Page music
 */

class Music {
    constructor(timeline) {
        this.$el            = {}
        this.$el.timeline   = timeline
        this.$el.musicSection = document.querySelectorAll('.music-section')

        const options = {
         root: null,
         rootMargin: '0px',
         threshold: [0],
        }

         const watch = (event, observer) => {
             const target = event[0].target
             this.check_date(target)
         }

        this.$el.musicSection.forEach((observable, i) => {

            let observer = new IntersectionObserver(watch)
            observer.observe(observable)
        })
    }

    check_date(target) {
        console.log(target.dataset.year)
    }
}
let music = new Music(
    document.querySelector('.timeline')
)

