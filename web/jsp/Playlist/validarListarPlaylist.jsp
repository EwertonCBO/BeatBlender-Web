<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.Playlist" %>
<%@page import="backenddmm20232.controllers.ControllerPlaylist" %>

<%
        String nome = request.getParameter("numero_faixas");
        Playlist playEntranda = new Playlist(nome);
        ControllerPlaylist playCont = new ControllerPlaylist();
        List<Playlist> listaPlay = playCont.listar(playEntranda);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTAR</h1> <br>
        <% if(!(listaPlay.isEmpty())) { %>
            <% for (Playlist playSaida : listaPlay) { %>
                Playlist = ID = <%=playSaida.getId()%> | 
                numero_faixas = <%=playSaida.getNumero_faixas()%> <br>
        nome = <%=playSaida.getNome()%> <br>
        genero = <%=playSaida.getGenero()%> <br>
        criador = <%=playSaida.getCriador()%> <br>
               
                
              %>- <a href="../Playlist/alterarPlaylist.jsp?ID=<%=playSaida.getId()%>">Altera</a> - <a href="../Playlist/validarExcluirPlaylist.jsp?ID=<%=playSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
aosdfmk