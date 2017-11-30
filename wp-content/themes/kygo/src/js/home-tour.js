const tour_dates = document.querySelectorAll('.tour__date')
let current_index = 1

//init slider for tour dates
function tour_init ()
{
    for (var i  = 0; i < 3; i++) {
        tour_dates[i].classList.add('active')
        tour_dates[i].classList.add('active-' + (i + 1))
    }
    if (window.innerWidth < 960){
        setInterval(() => {change_date()}, 1000)
    } else {
        setInterval(() => {change_date()}, 3000)
    }

    window.addEventListener('resize', () => {
        if (window.innerWidth < 960){
            setInterval(() => {change_date()}, 1000)
        } else {
            setInterval(() => {change_date()}, 3000)
        }
    })
}

tour_init()

//change each date in slider for tour dates
function change_date ()
{
    let former_date = document.querySelector('.active-' + current_index)
    let former_index = former_date.dataset.index

    former_date.classList.remove('active')
    former_date.classList.remove('active-' + current_index)

    if (former_index > (tour_dates.length - 4)) {
        former_index = former_index - 5
    }

    tour_dates[parseInt(former_index) + 3].classList.add('active')
    tour_dates[parseInt(former_index) + 3].classList.add('active-' + current_index)
    current_index++
    if (current_index == 4) {
        current_index = 1;
    }
}


