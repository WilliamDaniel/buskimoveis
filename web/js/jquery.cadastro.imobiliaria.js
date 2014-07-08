/*
	BuskImóveis 2014 - v. 1.0
	JavaScript da página de cadastro de imobiliária.
	jquery-1.11.1
*/

$(document).ready(function(){

	// Validação de senha $("#telefone").mask("(099) 9999-9999", {'placeholder="(099) 9999-9999'}); 

	$(".input-error").append('<span class="input-group-addon input-error-ico"></span>');
	$(".input-error-ico").append('<i class="glyphicon glyphicon-remove"></i> <strong>Senhas Diferentes!</strong>');
	$(".input-error-ico").hide();

	$("#FormCadastroImobiliaria").submit(function(event){

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
