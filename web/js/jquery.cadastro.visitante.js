/*
	BuskImóveis 2014 - v. 1.0
	JavaScript da página de cadastro de visitante
	jquery-1.11.1
*/

$(document).ready(function(){

	// Validação de senha

	$(".input-error").append('<span class="input-group-addon input-error-ico"></span>');
	$(".input-error-ico").append('<i class="glyphicon glyphicon-remove"></i> <strong>Senhas Diferentes!</strong>');
	$(".input-error-ico").hide();

	$("#FormCadastroVisitante").submit(function(event){

		var valSenha = $('input[name="senha"]').val();
		var valSenhaConfirm = $('input[name="senhaConfirm"]').val();
		
		if(valSenha == valSenhaConfirm){
			return true;
		}
		else{
			$('input[name="senhaConfirm"]').css({"background-color" : "#ECADA8"});
			$(".input-error-ico").show();
			$(".input-error-ico").fadeOut(1500);
			event.preventDefault();
		}
	});

});