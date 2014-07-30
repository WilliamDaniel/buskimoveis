<%-- 
    Document   : Cadastro
    Created on : 17/06/2014, 20:23:45
    Author     : William
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8"/>
        <meta name = "descriptio" content = "Cadastro"/>
        <meta name = "viewport"   content = "width=device-width, initial-scale=1" />
        <title>BuskImóveis - Anuncie</title>
        <!-- Estilos CSS -->
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/normalize.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.main.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.cadastro.visitante.css"/>" />
        <!-- JavaScript -->
        <script src="<c:url value="/js/jquery-1.11.1.js"/>"></script>
        <script src="<c:url value="/js/jquery.validate.min.js"/>"></script>
        <script src="<c:url value="/js/additional-methods.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.validacao.js"/>"></script>
        <script src="<c:url value="/js/jquery.mask.js"/>"></script>
        <script src="<c:url value="/js/jquery.mascara.js"/>"></script>
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.main.js"/>"></script>
        <script src="<c:url value="/http://irql.bipbop.com.br/js/jquery.bipbop.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.cadastro.imobiliaria.js"/>"></script>
    </head>
    <body>
        <header id="header">
            <div class="" id="barra-top">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <p>Tem alguma dúvida? Envie um e-mail para <strong><a href="#">info@buskimoveis.com</a></strong></p>
                        <span class="navbar-top-link row-fluid">
                            <a href="#" class="span12" id="link-logon">Entrar</a>
                            <a href="#" class="link-inativo disabled">Cadastre-se</a>
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
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true"><i class="glyphicon glyphicon-remove"></i></span><span class="sr-only">Fechar</span></button>
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
                                            <!--Botão entrar-->
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
                                <li><a href="#">Anuncie</a></li>
                                <li><a href="#">Ajuda</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
        </header><!-- /header -->

        <section class="container section" id="form-cadastro"><!-- /section -->
            <h1>Cadastre-se</h1>
            <form class="form-group" method="post" id="FormCadastroVisitante" action="<c:url value="/visitante" />">
                <input type="hidden" name="id" value="${visitante.id}" />
                <!--Campo Nome -->
                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-user"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Nome Sobrenome" id="nome" pattern="[a-zãóôêéíú A-ZÃÓÔÊÉÍÚ]+" required name="usuario.nome" value="${visitante.nome}" title="INSIRA APENAS TEXTO!" />
                </div>

                <div class="input-group">
                    <!--Campo E-mail-->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-envelope"></i></div></span>
                    <input type="email" class="form-control input-validacao" placeholder="exemplo@email.com" pattern="[a-z]{1}[a-z0-9._-]+@[a-z]+\.[a-z]{2,4}$" required name="usuario.email" value="${visitante.email}" title="email123@dominio.com" />
                </div>

                <div class="input-group">
                    <!--Campo Telefone-->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-earphone"></i></div></span>
                    <input type="tel"  class="form-control input-validacao phone" placeholder="(35) 1122-3344" pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4}|\([0-9]{2}\)[\s][0-9]{4}-[0-9]{5}" required name="usuario.telefone" value="${visitante.telefone}" title="DD + 8 DÍGITOS OU DD + 9 DÍGITOS" />
                </div>

                <div class="input-group">
                    <!--Campo Senha-->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-asterisk"></i></div></span>
                    <input type="password" class="form-control input-validacao" required placeholder="Senha" maxlength="200" id="senha" name="usuario.senha" value="${visitante.senha}" />
                </div>

                <div class="input-group input-error">
                    <!--Campo Confirmar Senha-->
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-asterisk"></i></div></span>
                    <input type="password" class="form-control input-validacao" required  placeholder="Confirme a Senha" maxlength="200" id="senhaConfirm" name="senhaConfirm" />
                </div>
                <input type="submit" class="btn btn-default navbar-btn" value="Confirmar" id="bt-confirmar" />
            </form>

            <span class="help-block">
                <span class="glyphicon glyphicon-exclamation-sign"></span>
                É obrigatório o preenchimento de todos os campos.
            </span>
        </section>

        <footer id="footer">
            <div class="container-fluid">
                <p>Copyright &copy; 2014 - BuskImoveis.Todos os direitos reservados. v. 1.0</p>
            </div
        </footer>
    </body>
</html>
