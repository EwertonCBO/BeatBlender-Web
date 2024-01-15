<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    MusicaGeneroMusical mgEntrada = new MusicaGeneroMusical(ID);
    ControllerMusicaGeneroMusical contMusiGen = new ControllerMusicaGeneroMusical();
    MusicaGeneroMusical mgSaida = contMusiGen.excluir(mgEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
         MusicaGeneroMusical = <%=mgSaida.getId()%> | <%=mgSaida.getIdMusi()%> | <%=mgSaida.getIdGen()%> | <%=mgSaida.getTitulo()%> | <%=mgSaida.getGenero()%>

    </div>
    </body>
</html>
