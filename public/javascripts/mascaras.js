$(document).ready(function() {
    var ddds =[21,22,24,27,28,11,12,13,14,15,16,17,18,19];
	$('._cep').setMask('cep');
    $('._telefone').setMask('phone');
    $('._celular').setMask('phone');
    $('._celular').keyup( function() {
        if (jQuery.inArray(parseInt($('._celular').val().substr(1,2)),ddds) == 0){
            $('._celular').setMask('phone9digitos');
        }
    });
	$('._iniciais').keyup(function(){
	  _this = $(this);
	  _this.val(_this.val().toUpperCase());
	});
});