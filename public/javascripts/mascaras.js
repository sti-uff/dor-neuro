$(document).ready(function() {
	$('._cep').setMask('cep');
	$('._celular, ._telefone').setMask('phone');
	$('._iniciais').keyup(function(){
	  _this = $(this);
	  _this.val(_this.val().toUpperCase());
	});
});