const io = new IntersectionObserver(entries => {
    if(entries[0].intersectionRatio !== 0) {
        ajaxNews()
    }
})
const footer = document.querySelector('footer')
io.observe(footer)

let page = 1
let lastRequest = false
function ajaxNews() {

    console.log(lastRequest)

    if(!lastRequest) {
        page++
        const loader = document.querySelector('.loader-container')
        loader.style.display = 'inherit'

        //var check if it's the last ajax request
        fetch(ajaxurl + '?action=ajax_news&page=' + page, {
            method: 'get',
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
            }
        }).then((response) => {
            loader.style.display = 'none'
            return response.json().then((json) => {
                let grid = document.querySelector('.news-list')
                console.log(json.length < 10)
                if (json.length < 10) {
                    lastRequest = true
                }
                json.forEach((data) => {
                    let newCard = '<li class="new__cards">' +
                        '<div class="card" data-src="' + data.link + '">' +
                        '<div class="new__img" style="background-image: url(' + data.thumbmail + ')"></div>' +
                        '<div class="new__content">' +
                        '<div class="new__date date">' + data.date + '</div>' +
                        '<h3 class="new__title">' + data.title + '</h3>' +
                        '<p class="new__description">' + data.description + '</p>' +
                        '<a class="new__more btn-kygo" href="' + data.link + '">Read more</a>' +
                        '</div>' +
                        '</div>' +
                        '</li>'

                    grid.innerHTML += newCard
                })

            })
        }).catch((err) => {
            console.log('Error with Ajax Call, sorry');
        });
    }

}