document.querySelectorAll('.modal .wpcf7-form').forEach(el => el.addEventListener('click', function(){

    var inputs = el.getElementsByClassName('wpcf7-form-control');
    //Cargo
    inputs[0].value = document.querySelector('input[name="question_0"]:checked').value;

    //Industria
    inputs[1].value = document.querySelector('input[name="question_1"]:checked').value;

    //Quando inicia
    inputs[2].value = document.querySelector('input[name="question_2"]:checked').value;

    //Mais interessou na solução
    inputs[3].value = document.querySelector('input[name="question_3"]:checked').value;

}));

//close the modal when esc pressed
var modal = document.getElementById('modal');
window.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        modal.style.display = 'none'
    }
});

window.addEventListener('click', function(e){   

    if (e.target.className.includes('btn-modal')){
        modal.style.display = 'block'
    }else{
        if ((!document.getElementById('elements').contains(e.target) && modal.style.display == 'block') || e.target.id == 'btn-modal'){
            modal.style.display = 'none'
        }
    }

 
  });