$(document).ready(function(){

	$("#header input").focus(function(){
   		$(this).animate({"width":"200px"}).css({"background-color":"#ffffff"});
  	});
	$('#header input').focusout(function(){
		$(this).animate({"width":"120px"}).css({"background-color":"#e0f5da"});;
	});

	$('button[name=ir-busca]').click(function(){
		var itemPesquisado = $('input[name=buscador-header]').val();
		alert('O item [' +itemPesquisado+ '] nao foi encontrado!');
	});

	$('a').mouseover(function(){

	});

	$('.menu-navegacao div span').mouseover(function(){
		$(this).css({'background-color':'#e2ede1'});
	});

	$('.menu-navegacao div span').mouseleave(function(){
		$(this).css({'background-color':'#fff'});
	});
});