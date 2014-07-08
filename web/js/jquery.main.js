
$(document).ready(function(){

	

	$(".input-validacao").blur(function(){
     if($(this).val() == "")
        {
            $(this).css({"background-color" : "#FFF496"});
        }
        else{
        	$(this).css({"background-color" : "#FFF"});
        }
    });
    
// quando o usuário digitar no campo CNPJ
	$('.cnpj').keyup(function(){
	  var cnpj = this.value;

		  $().bipbop("SELECT FROM 'BIPBOPJS'.'CPFCNPJ'", BIPBOP_FREE, {
	      // passando o CPF digitado
	      data: { documento: cnpj },
	 
	      success: function(data) {
	        // define a variável "nome" com
	        //    o nome da pessoa física associada ao CPF
	        var nome = $(data).find("body nome").text();
	        
	        // muda o campo "nome" para o nome do dono do CPF
	        $("#nome").val(nome);
	      }
	    });
    });
    
});


