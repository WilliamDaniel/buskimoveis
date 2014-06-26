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
<html>
    <head>
        <meta charset=UTF-8" />
        <meta charset="utf-8"/>
	<meta name="descriptio" content="Cadastro"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Cadastro</title>>
	<link rel="stylesheet" href="<c:url value="/css/normalize.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
        <!-- css principal -->
         <link rel="stylesheet" href="<c:url value="/style.cadastro.visitante.css"/>" />
        <!-- jQuery -->
        <script  src="<c:url value="/js/jquery-2.1.0.js"/>" ></script>
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <!-- jquery de cadastro -->
    </head>
    <body>
        <header id="header" class="">
            <nav class="navbar navbar-default" role="navigation" id="barra-principal">

                <nav class="navbar navbar-default" role="navigation" id="barra-info">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <span class="span6">
                                <p>Tem alguma dúvida? Envie um e-mail para <strong>info@buskimoveis.com</strong></p>
                            </span>
                            <span class="span6">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#">Entrar</a></li>
                                </ul>
                            </span>
                        </div>
                    </div>
                </nav>

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
                        <ul class="nav navbar-nav">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">O BuskImóveis</a></li>
                            <li><a href="#">Imobiliária</a></li>
                            <li><a href="#">Corretor de Imóveis</a></li>
                            <li class="active"><a href="#">Cadastre-se</a></li>
                            <li><a href="#">Ajuda</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header><!-- /header -->

        <section class="container section" id="form-cadastro"><!-- /section -->
            <h1>Cadastro de pessoa física</h1>

            <form class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">@&nbsp;</span>
                    <input type="email" class="form-control" placeholder="E-mail" />
                </div>
            </form>

            <form class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">****</span>
                    <input type="password" class="form-control" placeholder="Senha" />
                </div>
            </form>

            <form class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">****</span>
                    <input type="password" class="form-control" placeholder="Confirme a Senha" />
                </div>
            </form>
            <input type="submit" class="btn btn-default navbar-btn" value="Confirmar" name="bt-confirmar" />

        </section>

        <footer id="footer">
            <div class="container">
                <p></p>
            </div>
        </footer>
        <!--
        <h1>Novo Visitante</h1>
        <form action="<c:url value="/visitante" />" method="post">
            <label for="nome">Nome</label>
            <input type="text" name="nome" />
            <label>Telefone</label>
            <input type="text" name="telefone" />
            <label>E-mail</label>
            <input type="email" name="email" />
            <label>Senha</label>
            <input type="password" name="senha" />
            <input type="submit" value="Cadastrar" />
        </form>
        -->
    </body>
</html>
