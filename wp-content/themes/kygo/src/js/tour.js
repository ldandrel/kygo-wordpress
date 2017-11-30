/*
 * Tour
 * Search and filter on tour page
 */

class Tour {
    constructor(container) {
        this.$el = {}
        this.$el.list_date =
        this.$el.container = container
        this.$el.search = this.$el.container.querySelector('.tour__search-input input')
        this.$el.filters = this.$el.container.querySelectorAll('.tour__search-filter ul li')


        this.$el.search.addEventListener('input', () => {
            let search = this.$el.search.value


        })
    }
}

let tour = new Tour(
   document.querySelector('.tour__search')
)


