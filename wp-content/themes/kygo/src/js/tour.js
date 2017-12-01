/*
 * Tour
 * Search and filter on tour page
 */



class Tour {
    constructor(container, tourResults) {
        this.$el = {}
        this.$el.list_date = tourResults
        this.$el.container = container
        this.$el.search = this.$el.container.querySelector('.tour__search-input input')
        this.$el.filters = this.$el.container.querySelectorAll('.tour__search-filter ul li')
        this.$el.json = JSON.parse(data)

        console.log(this.$el.json)


        this.$el.filters.forEach((filter) => {
            filter.addEventListener('click', (e) => {
                this.filter(e.target)
            })
        })




        this.$el.search.addEventListener('input', () => {
            let search = this.$el.search.value
            let searchLenght = search.length

            if(searchLenght > 2 && searchLenght%2 === 0){
                this.search(search)
            } else if(searchLenght === 0){
                this.displayAll()
            }

        })

    }

    search(search) {
        const JsSearch = require('js-search')

        let searchJson = new JsSearch.Search('city')
        searchJson.addIndex('city')


        searchJson.addDocuments(this.$el.json)

        let results = searchJson.search(search)
        console.log(results)

        if(results.length > 0){
            this.$el.list_date.innerHTML = ''
        }

        results.forEach((result) => {
            result.show.forEach((show) => {
                this.update(show)
            })

        })




    }

    filter(target, displayAll){

        this.$el.filters.forEach((filter) => {
            filter.classList.remove('active')
        })

        target.classList.add('active')

        let filter = target.getAttribute('data-filter')
        this.$el.list_date.innerHTML = ''

        this.$el.json.forEach((data) => {
            let html = '';
            if(filter === data.type || filter === 'all' || displayAll){

                data.show.forEach((date) => {
                    this.update(date)

                })
            }
        })
    }

    displayAll(){
        this.$el.json.forEach((data) => {
            data.show.forEach((show) => {
                this.update(show)
            })

        })
    }

    update(date){
        let ticket =  ''
        if(date.sold_out){
            ticket = '<span id="sold_out">Sold out</span>'
        } else {
            ticket = '<a href="'+date.link+'" class="btn-kygo">Buy Tickets</a>'
        }
        let html = '<div class="list__date">'+
            '<span>'+date.city+'</span>'+
            '<p>'+date.date+'</p>'+
            '<p id="theater">'+date.theather+'</p>'+
            ticket +
            '</div>'

        this.$el.list_date.innerHTML += html
    }


}



let tour = new Tour(
   document.querySelector('.tour__search'),
    document.querySelector('.tour__results')
)


