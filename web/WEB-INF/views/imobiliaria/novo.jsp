<%-- 
    Document   : Cadastro
    Created on : 17/06/2014, 20:24:17
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
        <meta charset="UTF-8" />
        <title>Imobiliária - Cadastro</title>
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
        <!-- css principal -->
        <link rel="stylesheet" href="<c:url value="/css/normalize.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.main.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/style.cadastro.imobiliaria.css"/>" />
        <!-- jQuery -->
        <script  src="<c:url value="/js/jquery-1.11.1.js"/>" ></script>
        <script  src="<c:url value="/js/bootstrap.min.js"/>" ></script>
        <!-- jquery de cadastro -->
        <script  src="<c:url value="/js/jquery.cadastro.visitante.js"/>" ></script>

    </head>
    <body>
        <header id="header">
            <nav class="navbar navbar-default" role="navigation" id="barra-info">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <p>Tem alguma dúvida? Envie um e-mail para <strong><a href="#">info@buskimoveis.com</a></strong></p>
                        <span class="navbar-top-link row">
                            <a href="#" class="span12">Entrar</a>
                            <a href="#" class="link-ativo">Cadastre-se</a>
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
                            <li class="ativo"><a href="#">Anuncie</a></li>
                            <li><a href="#">Ajuda</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header><!-- /header -->

        <section class="container section" id="form-cadastro"><!-- /section -->
            <h1>Cadastre-se</h1>

            <form class="form-group" method="post">

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Razão Social" name="razao-social" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Nome Fantasia" name="nome-fantasia" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="CNPJ" name="cnpj" maxlength="16" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="CRECI" name="creci" maxlength="10" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Rua" name="rua" />
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="number" class="form-control input-validacao" placeholder="Número" name="numero" />
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Bairro" name="bairro" />
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-font"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Cidade" name="cidade" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-sort-by-order"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="CEP" name="cep" maxlength="9" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-earphone"></i></div></span>
                    <input type="text" class="form-control input-validacao" placeholder="Telefone" name="telefone" maxlength="12" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-user"></i></div></span>
                    <input type="text" class="form-control input-validacao input-destaque" placeholder="Nome do Usuário Administrativo" name="nome-usuario" maxlength="60" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><i class="glyphicon glyphicon-envelope"></i></div></span>
                    <input type="email" class="form-control input-validacao input-destaque" placeholder="E-mail" name="email" maxlength="40" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><span>***</span></div></span>
                    <input type="password" class="form-control input-validacao input-destaque" placeholder="Senha" maxlength="200" name="senha" />
                </div>

                <div class="input-group">
                    <span class="input-group-addon"><div class="ajuste-form"><span>***</span></div></span>
                    <input type="password" class="form-control input-validacao input-destaque" placeholder="Confirme a Senha" maxlength="200"  />
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
            </div>
        </footer>
    </body>
</html>
