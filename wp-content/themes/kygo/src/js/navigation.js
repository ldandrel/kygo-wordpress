/*
 * Navigation
 * Global navigation on website
 */

class Navigation {
    constructor(navigation, button) {
        this.$el            = {}
        this.$el.navigation = navigation
        this.$el.button     = button
        this.$el.close      = close
        this.opened         = false
        this.startScrolling = false
        this.scrollY        = window.scrollY
        this.windowWith     = window.innerWidth

        this.$el.button.addEventListener('click', (event) => {
            event.preventDefault()


            if(!this.opened) {
                this.open()
            }

            else {
                this.close()
            }
        })

        window.addEventListener('scroll', () => {
            this.scrollY = window.scrollY

            if((!this.$el.navigation.classList.contains('header--scrolling') && !this.startScrolling) || this.scrollY === 0){
                this.scrolling()
            }
        })

        window.addEventListener('resize', () => {
            this.windowWith     = window.innerWidth
            if(this.windowWith > 960 &&  this.$el.navigation.classList.contains('header--navigation-expanded')){
                this.close()
            }

        })

    }


    /*
     * open()
     * Called on click if navigation is closed
     * Open the global navigation
     */
    open() {
        this.opened = true
        this.$el.navigation.classList.add('header--navigation-expanded')
        this.$el.button.classList.add('is-active')

        if(this.$el.navigation.classList.contains('header--scrolling')){
            console.log('scrool');
            this.$el.navigation.classList.remove('header--scrolling')
        }

    }


    /*
     * close()
     * Called on click if navigation is opened
     * Close the global navigation
     */
    close() {
        this.opened = false
        this.$el.navigation.classList.remove('header--navigation-expanded')
        this.$el.button.classList.remove('is-active')

        this.scrolling();

    }

    /*
     * scrolling()
     * Called on start scroll
     * Add a box shadow on the header
     */


    scrolling() {
        if(this.scrollY === 0){
            this.startScrolling = false
            this.$el.navigation.classList.remove('header--scrolling')
        } else {
            this.startScrolling = true
            this.$el.navigation.classList.add('header--scrolling')
        }
    }
}

let navigation = new Navigation(
    document.querySelector('.header'),
    document.querySelector('.header__toggle-nav'),
)

