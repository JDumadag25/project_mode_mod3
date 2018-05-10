document.addEventListener("DOMContentLoaded", function(){

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














  submit_button.addEventListener('click', (e) => {
   let zip_code = post_code.value
   console.log(zip_code)

  })



})
