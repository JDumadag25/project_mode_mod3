document.addEventListener("DOMContentLoaded", function(){

  let post_code = document.getElementById('search')
  let submit_button = document.getElementById('submit_button')

  submit_button.addEventListener('click', (e) => {
   let zip_code = post_code.value
   console.log(zip_code)

  })



})
