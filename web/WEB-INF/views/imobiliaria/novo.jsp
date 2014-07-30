<%-- 
    Document   : Cadastro
    Created on : 17/06/2014, 20:24:17
    Author     : William
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta name = "descriptio" content = "Cadastro"/>
        <meta name = "viewport"   content = "width=device-width, initial-scale=1" />
        <title>BuskImóveis - Anuncie</title>
        <!-- Estilos CSS -->
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/normalize.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.main.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.cadastro.imobiliaria.css"/>" />
        <!-- JavaScript -->
        <script src="<c:url value="/js/jquery-1.11.1.js"/>"></script>
        <script src="<c:url value="/js/jquery.validate.min.js"/>"></script>
        <script src="<c:url value="/js/additional-methods.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.validacao.js"/>"></script>
        <script src="<c:url value="/js/jquery.mask.js"/>"></script>
        <script src="<c:url value="/js/jquery.mascara.js"/>"></script>
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.main.js"/>"></script>        
        <script src="<c:url value="/js/jquery.cadastro.imobiliaria.js"/>"></script>
        <!-- Script para backend nos forms-->
        <script>
            $(function() {
                $("#bt-confirmar").click(function() {
                    //alert("Hhehehehe");
                    //return false;
                    var formData = $("#form-imobiliaria").serializeArray();
                    var url = $("#form-imobiliaria").attr("action");
                    $.post(url, formData, function(data) {
                        if (!data || data === false) {
                            alert("NOK");                            
                        } else {
                            $("#id-imobiliaria").val(data);
                            $("#form-usuario").submit(); 
                        }
                    }).fail(function(jqXHR, textStatus, errorThrown) {
                        alert("NOK");
                    });
                    return false;
                });
            });
        </script>

    </head>
    <body>
       <header id="header">
            <div class="" id="barra-top">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <p>Tem alguma dúvida? Envie um e-mail para <strong><a href="#">info@buskimoveis.com</a></strong></p>
                        <span class="navbar-top-link row-fluid">
                            <a href="#" class="span12" id="link-logon">Entrar</a>
                            <a href="#" class="link-ativo disabled">Cadastre-se</a>
                        </span>
                    </div>
                </div>

                <nav class="navbar navbar-default" role="navigation" id="barra-principal">

                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                <span class="sr-only"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#">
                                <figure class="logo">				      		
                                </figure>
                            </a>     	
                        </div>
                        <div class="modal fade" id="logon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Acessar conta</h4>
                                    </div>
                                    <!-- Form de Login -->
                                    <form class="form-group" method="post" id="form-entrar">
                                        <div class="modal-body">
                                            <div class="input-group">
                                                <!--Campo E-mail-->
                                                <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-user"></i></div></span>
                                                <input type="email" class="form-control" placeholder="E-mail" pattern="[a-z]{1}[a-z0-9._-]+@[a-z]+\.[a-z]{2,4}$" required name="email-logon" title="email123@dominio.com" />
                                            </div>
                                            <div class="input-group">
                                                <!--Campo Senha-->
                                                <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-asterisk"></i></div></span>
                                                <input type="password" class="form-control " required placeholder="Senha" maxlength="200"  name="senha-logon" />
                                            </div>
                                        </div>		
                                        <div class="modal-footer">
                                            <span class="input-group">
                                                <input type="submit"  value="Entrar"/>
                                            </span>
                                            <small><i class="glyphicon glyphicon-question-sign"></i>&nbsp;<a href="#" class="link-ativo">Esqueceu a senha?</a></small>
                                        </div>
                                        <!-- //form -->	</form>
                                </div>
                            </div>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <ul class="nav navbar-nav" id="menu-navegacao">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">O BuskImóveis</a></li>
                                <li><a href="#" class="ativo">Anuncie</a></li>
                                <li><a href="#">Ajuda</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
        </header><!-- /header -->

        <section class="container section" id="form-cadastro"><!-- /section -->
            <h1>Cadastre-se</h1>
            <form class="form-group" method="post" id="form-imobiliaria" action="<c:url value="/imobiliaria" />">
                <input type="hidden" name="id" value="${imobiliaria.id}" />
                <div class="input-group">
                    <!-- Campo Razão social -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Razão Social" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="razaoSocial" value="${imobiliaria.razaoSocial}" />
                </div>

                <div class="input-group">
                    <!-- Campo Nome Fantasia -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Nome Fantasia" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="nomeFantasia" value="${imobiliaria.nomeFantasia}" />
                </div>

                <div class="input-group">
                    <!-- Campo CNPJ          -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao cnpj" placeholder="CNPJ" pattern="[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}" required name="cnpj" value="${imobiliaria.cnpj}" maxlength="18" />
                    <!-- Campo CRECI         -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao creci" placeholder="CRECI" required name="creci" value="${imobiliaria.creci}" maxlength="10" />
                </div>

                <div class="input-group">
                    <!-- Campo Rua           -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Rua" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" id="rua" required name="rua" value="${imobiliaria.rua}" />
                    <!-- Campo Numero        -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="number" class="form-control input-validacao" placeholder="Número" pattern="[0-9]+" required name="numero" value="${imobiliaria.numero}" />
                </div>

                <div class="input-group">
                    <!-- Campo complemento   -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Complemento" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="complemento" value="${imobiliaria.complemento}" />
                    <!-- Campo Bairro        -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Bairro"  required pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" nname="bairro" value="${imobiliaria.bairro}" />
                </div>

                <div class="input-group">
                    <!-- Campo CEP        -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao cep" placeholder="CEP" pattern="[0-9]{5}-[0-9]{3}" required name="cep" value="${imobiliaria.cep}" maxlength="9" />
                    <!-- Campo Cidade     -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Cidade" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="cidade" value="${imobiliaria.cidade}" />
                </div>

                <div class="input-group">
                    <!-- Campo Telefone    -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-earphone"></i></div></span>
                    <input type="text" class="form-control input-validacao phone" placeholder="Telefone" pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4}|\([0-9]{2}\)[\s][0-9]{4}-[0-9]{5}" id="telefone" name="telefone" value="${imobiliaria.telefone}" maxlength="11" />
                </div>
            </form>

            <form id="form-usuario" class="form-group" method="post" action="<c:url value="/visitante" />">
                <div class="input-group">
                    <!--Campo Nome Usuário -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-user"></i></div></span>
                    <input type="text" class="form-control input-validacao input-destaque" placeholder="Nome do Usuário Administrativo" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="usuario.nome" id="nome" maxlength="60" />
                </div>

                <div class="input-group">
                    <!-- Campo E-mail -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-envelope"></i></div></span>
                    <input type="email" class="form-control input-validacao input-destaque" placeholder="E-mail" pattern="[a-z]{1}[a-z0-9._-]+@[a-z]+\.[a-z]{2,4}$" required name="usuario.email" maxlength="40" />
                </div>

                <div class="input-group">
                    <!-- Campo Senha -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-asterisk"></i></div></span>
                    <input type="password" class="form-control input-validacao input-destaque" placeholder="Senha" maxlength="200" required name="usuario.senha" />
                </div>

                <div class="input-group input-error">
                    <!-- Campo Confirmar Senha -->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-asterisk"></i></div></span>
                    <input type="password" class="form-control input-validacao input-destaque" placeholder="Confirme a Senha" maxlength="200" required name="senhaConfirm" />
                </div>
                <!-- Botão Submit -->
                <input type="submit" class="btn btn-default navbar-btn" value="Confirmar" id="bt-confirmar" />
                <input id="id-imobiliaria" type="hidden" name="idImobiliaria" />
            </form>
            <span class="help-block">
                <span class="glyphicon glyphicon-exclamation-sign"></span>
                É obrigatório o preenchimento de todos os campos.
            </span>
        </section>

        <footer id="footer">
            <div class="container-fluid">
                <p>Copyright &copy; 2014 - BuskImoveis.Todos os direitos reservados. v. 1.0</p>
            </div>
        </footer>
    </body>
</html>
