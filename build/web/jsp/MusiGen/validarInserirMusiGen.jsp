<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>

<%
    int idMusi = Integer.parseInt(request.getParameter("SELECTMUSI"));
    int idGen = Integer.parseInt(request.getParameter("SELECTGEN"));
    String titulo = request.getParameter("TITULO");
    String genero = request.getParameter("GENERO");
   
    MusicaGeneroMusical mgEntrada = new MusicaGeneroMusical(idMusi,idGen,titulo,genero);
    ControllerMusicaGeneroMusical contMusiGen = new ControllerMusicaGeneroMusical();
    MusicaGeneroMusical mgSaida = contMusiGen.inserir(mgEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=mgSaida.getId()%> <br>
        IdMusi = <%=mgSaida.getIdMusi()%> <br>
        IdGen = <%=mgSaida.getIdGen()%> <br>
        Titulo = <%=mgSaida.getTitulo()%> <br>
        Genero = <%=mgSaida.getGenero()%> <br>

    </div>
    </body>
</html>
