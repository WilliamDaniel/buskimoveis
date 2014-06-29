<%-- 
    Document   : Cadastro
    Created on : 17/06/2014, 20:23:45
    Author     : William
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="Cadastro"/>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>BuskImóveis - Cadastro</title>
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/normalize.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/style.cadastro.visitante.css" />" />

        <script src="<c:url value="/js/jquery-1.11.1.js" />"></script>
        <script src="<c:url value="/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/js/jquery.cadastro.visitante.js" />"></script>
    </head>
    <body>
        <header id="header" class="">
            <nav class="navbar navbar-default" role="navigation" id="barra-info">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <span>
                            <p>Tem alguma dúvida? Envie um e-mail para <strong>info@buskimoveis.com</strong></p>
                        </span>
                        <span>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">Entrar</a></li>
                            </ul>
                        </span>
                    </div>
            </nav>

            <nav class="navbar navbar-default" role="navigation" id="barra-principal">

                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><h1>BuskImóveis</h1></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav" id="menu-navegacao">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">O BuskImóveis</a></li>
                            <li><a href="#">Imobiliária</a></li>
                            <li class="active"><a href="#">Cadastre-se</a></li>
                            <li><a href="#">Ajuda</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header><!-- /header -->

        <section class="container section" id="form-cadastro"><!-- /section -->
            <h1>Cadastro de pessoa física</h1>

            <form class="form-group" method="post"  action="<c:url value="/visitante" />">

                <div class="input-group">
                    <span class="input-group-addon">Aa&nbsp;</span>
                    <input type="text" class="form-control input-validacao" placeholder="Nome" name="nome" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon">&nbsp;@&nbsp;</span>
                    <input type="email" class="form-control input-validacao" placeholder="E-mail" name="email" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon">##&nbsp;</span>
                    <input type="text" class="form-control input-validacao" placeholder="Telefone" name="telefone" />
                </div>


                <div class="input-group">
                    <span class="input-group-addon">****</span>
                    <input type="password" class="form-control input-validacao" placeholder="Senha" maxlength="200" name="senha" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon">****</span>
                    <input type="password" class="form-control input-validacao" placeholder="Confirme a Senha" maxlength="200"  />
                </div>
                <input type="submit" class="btn btn-default navbar-btn" value="Confirmar" name="bt-confirmar" id="bt-confirmar" />
            </form>
        </section>

        <footer id="footer">
            <div class="container-fluid">
                <p>Copyright &copy; 2014 - BuskImoveis.Todos os direitos reservados. v. 1.0</p>
            </div
        </footer>
    </body>
</html>
