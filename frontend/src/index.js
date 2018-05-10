document.addEventListener("DOMContentLoaded", function(){

let submit = document.getElementById('zipcode')
submit.addEventListener('click', function(e){
  console.log(e)
})
console.log(submit)


fetch('http://localhost:3000/api/v1/bars')
.then(res => res.json())
.then(json => console.log(json))

})
