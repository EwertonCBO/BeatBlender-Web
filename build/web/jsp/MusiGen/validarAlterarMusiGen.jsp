<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idMusi = Integer.parseInt(request.getParameter("SELECTMUSI"));
    int idGen = Integer.parseInt(request.getParameter("SELECTGEN"));
    String titulo = request.getParameter("TITULO");
    String genero = request.getParameter("GENERO");
    
    int ID = Integer.parseInt(request.getParameter("ID"));
    MusicaGeneroMusical mgEntrada = new MusicaGeneroMusical(ID,idMusi,idGen,titulo,genero);
    ControllerMusicaGeneroMusical contMusiGen = new ControllerMusicaGeneroMusical();
    MusicaGeneroMusical mgSaida = contMusiGen.alterar(mgEntrada);

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=mgSaida.getId()%> <br>
        IdMusi = <%=mgSaida.getIdMusi()%> <br>
        IdGen = <%=mgSaida.getIdGen()%> <br>
        Titulo = <%=mgSaida.getTitulo()%> <br>
        Genero = <%=mgSaida.getGenero()%> <br>
    </div>
    </body>
</html>
