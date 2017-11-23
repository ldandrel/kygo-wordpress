let news = document.querySelector('.news-list'),
    newsPosition = news.getBoundingClientRect(),
    newsBottom = Math.floor(newsPosition.bottom)




window.addEventListener('resize', () => {
    newsPosition = news.getBoundingClientRect()
    newsBottom = newsPosition.bottom
})


window.addEventListener('scroll', () => {
    this.scrollY = window.scrollY

    console.log('scrool' + this.scrollY)
    console.log('bottom' + newsBottom)

    if(newsBottom - 100 <= this.scrollY > newsBottom + 100){
        console.log('ajax !')
    }
})




