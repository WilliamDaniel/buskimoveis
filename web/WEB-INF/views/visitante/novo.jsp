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
        <title>Visitante - Cadastro</title>
          <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
        <!-- css principal -->

        <!-- jQuery -->
        <script  src="<c:url value="/js/jquery-2.1.0.js"/>" ></script>
        <!-- jquery de cadastro -->
    </head>
    <body>
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
    </body>
</html>
