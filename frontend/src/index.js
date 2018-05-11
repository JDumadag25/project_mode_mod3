document.addEventListener("DOMContentLoaded", function(){

let events_ul = document.getElementById('events_area')
let post_code = document.getElementById('search')
let submit_button = document.getElementById('submit_button')

submit_button.addEventListener('click', (e) => {
  let zip_code = post_code.value
  fetch('http://localhost:3000/api/v1/events', {
    method: 'POST',
    body: JSON.stringify({zip_code: zip_code}),
    headers:{
      'Content-Type':'application/json'
    }
    //end of fetch request
  })
//end of submit button listener
})

const restaurantbutton = document.getElementById('restaurants')
restaurantbutton.addEventListener('click', function(e){
  e.preventDefault()
  fetch('http://localhost:3000/api/v1/restaurants')
  .then(res => res.json())
  .then(json => {
    let restaurant = json
    events_ul.innerHTML = ''
    // events_saved.innerHTML = ''
    restaurant.forEach(restaurant => {
      let list = document.createElement('li')
      list.id = `${restaurant.id}`
      let addbutton = document.createElement('button')
      addbutton.id = "add"
      addbutton.innerText = "add"
      list.innerText = `${restaurant.name}`
      list.append(addbutton)
      events_ul.append(list)
      const add = document.getElementById(`${restaurant.id}`)
      add.addEventListener('click', function(){
      // const list = document.getElementById('lists')
      let yourlist = document.createElement('li')
      yourlist.id = `${restaurant.id}`
      yourlist.innerText = `${restaurant.name}`
      events_saved.append(yourlist)
      let deletebutton = document.createElement('button')
      deletebutton.id = "delete"
      deletebutton.innerText = "delete"
      yourlist.append(deletebutton)
      // let deleterestaurant = document.createElement('button')
      // deleterestaurant.id = "delete"
      // deleterestaurant.innerText = "delete"
      // yourlist.append(deleterestaurant)
      yourlist.addEventListener('click', function(){
      yourlist.remove()

      })
    })
    })
  })
})

const barbutton = document.getElementById('bars')
barbutton.addEventListener('click', function(){
  fetch('http://localhost:3000/api/v1/bars')
  .then(res => res.json())
  .then(json => {
    let bar = json
    events_ul.innerHTML = ''
    // events_saved.innerHTML = ''
    bar.forEach(bar => {
      let list = document.createElement('li')
      list.id = `${bar.id}`
      let addbutton = document.createElement('button')
      addbutton.id = "add"
      addbutton.innerText = "add"
      list.innerText = `${bar.name}`
      list.append(addbutton)
      events_ul.append(list)
      const add = document.getElementById(`${bar.id}`)
      add.addEventListener('click', function(){
      // const list = document.getElementById('lists')
      let yourlist = document.createElement('li')
      yourlist.innerText = `${bar.name}`
      events_saved.append(yourlist)
      let deletebutton = document.createElement('button')
      deletebutton.id = "delete"
      deletebutton.innerText = "delete"
      yourlist.append(deletebutton)
      // let deletebar = document.createElement('button')
      // deletebar.id = "delete"
      // deletebar.innerText = "delete"
      // yourlist.append(deletebar)
      yourlist.addEventListener('click', function(){
      yourlist.remove()

      })
    })
    })
  })
})

const musicbutton = document.getElementById('musicvenues')
musicbutton.addEventListener('click', function(){
  fetch('http://localhost:3000/api/v1/musics')
  .then(res => res.json())
  .then(json => {
    let music = json
    events_ul.innerHTML = ''
    // events_saved.innerHTML = ''
    music.forEach(music => {
      let list = document.createElement('li')
      list.id = `${music.id}`
      let addbutton = document.createElement('button')
      addbutton.id = "add"
      addbutton.innerText = "add"
      list.innerText = `${music.name}`
      list.append(addbutton)
      events_ul.append(list)
      const add = document.getElementById(`${music.id}`)
      add.addEventListener('click', function(){
      // const list = document.getElementById('lists')
      let yourlist = document.createElement('li')
      yourlist.innerText = `${music.name}`
      events_saved.append(yourlist)
      let deletemusic = document.createElement('button')
      deletemusic.id = "delete"
      deletemusic.innerText = "delete"
      yourlist.append(deletemusic)
      yourlist.addEventListener('click', function(){
      yourlist.remove()

      })
    })
  })
 })
})


// const deletebutton = createElement('button')
// deletebutton.innerText = "delete"




})
