<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Playlist" %>
<%@page import="backenddmm20232.controllers.ControllerPlaylist" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Playlist playEntrada = new Playlist(id);
    ControllerPlaylist playCont = new ControllerPlaylist();
    Playlist playSaida = playCont.excluir(playEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=playSaida.getId()%> <br>
         numero_faixas = <%=playSaida.getNumero_faixas()%> <br>
        nome = <%=playSaida.getNome()%> <br>
        genero = <%=playSaida.getGenero()%> <br>
        criador = <%=playSaida.getCriador()%> <br>
    </div>
    </body>
</html>
