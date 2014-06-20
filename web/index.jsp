

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- css principal -->
        <link rel="stylesheet" href="css/style.css" />
        <!-- jQuery -->
        <script  src="js/jquery-2.1.0.js"></script>
        <!-- jquery da home page -->
        <script src="js/jquery-home.js"></script>
    </head>
    <body>
        <!-- Cabeçalho -->
        <div id="principal">
            <header id="header">
                <h1 class="mensagem-header">
                    <p>
                        Alguma dúvida sobre o sistema? Envie um <span class="glyphicon glyphicon-envelope"> 
                        </span> e-mail para <strong><a href="#">info@buskimoveis.com</a></a></strong>
                    </p>
                    <div class="icones-rs">
                        <a href="http://www.facebook.com.br/" target="_blank"><img src="img/fb-ico2.png" width="15px" height="15px" /></a>
                        <a href="http://www.plus.google.com" target="_blank"><img src="img/gog-ico2.png" width="15px" height="15px" /></a>
                    </div>
                </h1>
                <nav class="menu-navegacao">
                    <div>
                        <span id="Home"><a href="#Home"><p>Home</p></a></span>
                        <span><a href="#"><p>O BuskImóveis</p></a></span>
                        <span><a href="#"><p>Imobiliária</p></a></span>
                        <span><a href="#"><p>Conrretor de Imóveis</p></a></span>
                        <span><a href="#"><p>Cadastre-se</p></a></span>
                        <span><a href="#"><p>Ajuda</p></a></span>
                    </div>
                </nav>
            </header>

            <!-- Conteúdo Principal -->
            <section id="secao1">
                <div class="buscador">
                    <div>
                        <strong><p>compre, venda ou alugue seu imóvel</p></strong>
                        <strong><p id="BI"></p></strong>
                    </div>
                    <ul class="lista-busca-uf">
                        <form name="form-busca-home" method="post" action="BuscaSimpliesHome">
                            <li>
                                <select id="select-tipo">
                                    <option>Tipo</option>
                                </select>
                            </li>
                            <li>
                                <select id="select-faixa-valor">
                                    <option>Faixa de valor</option>
                                    <option> </option>
                                    <option> </option>
                                    <option> </option>
                                </select>
                            </li>
                            <li>
                                <select id="select-uf">
                                    <option>UF</option>
                                    <option>SP</option>
                                    <option>MG</option>
                                    <option>RJ</option>
                                    <option>RO</option>
                                </select>
                            </li>
                            <li>
                                <select id="select-cidade">
                                    <option>Cidade</option>
                                    <option>Sta. Rita do Sapucaí</option>
                                    <option>Pouso Alegre</option>
                                    <option>Itajubá</option>
                                    <option>Congonhal</option>
                                    <option>Pedralva</option>
                                    <option>Varginha</option>
                                    <option>São Lourenço</option>
                                </select>
                            </li>


                            <button type="submit" name="bt-form-select1" id="bt-form-select1">Buscar</button>
                        </form>
                    </ul>
                </div>
        </div>

    </section>

    <section id="secao2">

    </section>

    <!-- Rodapé -->
    <footer>
        <div id="rodape-inicio">

        </div>
        <div id="rodape-final">

            <p>Copyright &copy; buskimoveis.com - 2014</p>
        </div>
    </footer>
</div>
</body>
</html>
