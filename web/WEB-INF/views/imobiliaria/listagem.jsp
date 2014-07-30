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
        <title>Listar Todas - Imobiliárias</title>
    </head>
    <body>
        <h1>Listar Todas</h1>
        <ul>
            <c:forEach items="${imobiliarias}" var="imobiliaria">
                <li>${imobiliaria.id}, ${imobiliaria.razaoSocial}, ${imobiliaria.nomeFantasia}, 
                    ${imobiliaria.cnpj} ${imobiliaria.creci}, ${imobiliaria.rua}, ${imobiliaria.numero}, 
                    ${imobiliaria.bairro}, ${imobiliaria.cidade}, ${imobiliaria.cep}, ${imobiliaria.complemento}, 
                    ${imobiliaria.telefone}, ><a href="imobiliaria/${imobiliaria.id}/alterar">Alterar</a> <a href="imobiliaria/${imobiliaria.id}/excluir">Excluir</a> </li>                
            </c:forEach>
        </ul>
    </body>
</html>
