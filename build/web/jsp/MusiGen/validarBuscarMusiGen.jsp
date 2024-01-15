<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    MusicaGeneroMusical mgEntrada = new MusicaGeneroMusical(ID);
    ControllerMusicaGeneroMusical contMusiGen = new ControllerMusicaGeneroMusical();
    MusicaGeneroMusical mgSaida = contMusiGen.buscar(mgEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCAR</h1> <br>
        <% if (mgSaida != null) { %> 
            MusicaGeneroMusical = <%=mgSaida.getId()%> | <%=mgSaida.getIdMusi()%> | <%=mgSaida.getIdGen()%> | <%=mgSaida.getTitulo()%> | <%=mgSaida.getGenero()%>
        <% } else { %> 
            MusicaGeneroMusical = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
