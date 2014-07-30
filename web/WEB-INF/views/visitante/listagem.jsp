<%-- 
    Document   : listagem
    Created on : 24/06/2014, 23:34:03
    Author     : Elessandra
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Todos - Visitantes</title>
    </head>
    <body>
        <h1>Listar Todos</h1>
        <ul>
            <c:forEach items="${visitantes}" var="visitante">
                <li>${visitante.id}, ${visitante.nome}, ${visitante.telefone}, ${visitante.email}, ><a href="visitante/${visitante.id}/alterar">Alterar</a> <a href="visitante/${visitante.id}/excluir">Excluir</a> </li>                
            </c:forEach>
        </ul>
    </body>
</html>
