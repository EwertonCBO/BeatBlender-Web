<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>

<%
        String nome = request.getParameter("NOME");
        Musica mEntrada = new Musica(nome);
        ControllerMusica musCont = new ControllerMusica();
        List<Musica> listaMus = musCont.listar(mEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTAR</h1> <br>
        <% if(!(listaMus.isEmpty())) { %>
            <% for (Musica musSaida : listaMus) { %>
                Musica = ID = <%=musSaida.getId()%> | Titulo = <%=musSaida.getTitulo()%> |
                id Artista = <%=musSaida.getId_artista()%> 
                Genero = <%=musSaida.getId_genero()%>
                id Numero Faixa = <%=musSaida.getNum_faixa()%> |
                Duração  = <%=musSaida.getDuracao () %> |
               Titulo  = <%=musSaida.getTitulo()%>
               
                
              %>- <a href="../Musica/alterarMusica.jsp?ID=<%=musSaida.getId()%>">Altera</a> - <a href="../Musica/validarExcluirMusica.jsp?ID=<%=musSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
aosdfmk