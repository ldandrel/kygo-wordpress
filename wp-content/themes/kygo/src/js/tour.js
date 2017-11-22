/*
 * Tour
 * Search and filter on tour page
 */

class Tour {
    constructor(container) {
        this.$el = {}
        this.$el.container = container
        this.$el.search = this.$el.container.querySelector('.tour__search-input input')
        this.$el.filters = this.$el.container.querySelectorAll('.tour__search-filter ul li')


        this.$el.search.addEventListener('input', () => {
            let search = this.$el.search.value
            let searchLenght = search.length

            if(searchLenght > 2 && searchLenght%2 === 0){
                this.ajax()
            }
        })
    }


    /*
     * ajax()
     * Call in the constructor
     * Ajax Call
     */
    ajax() {

       let search = this.$el.search.value

        fetch(ajaxurl + '?action=ajax_search_tour&search=' + search, {
            method: 'post'
        }).then(function(response) {
            console.log(response.json())
        }).catch(function(err) {
           console.log('Error with Ajax Call, sorry');
        });



    }




}

let tour = new Tour(
   document.querySelector('.tour__search')
)


