<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Playlist" %>
<%@page import="backenddmm20232.controllers.ControllerPlaylist" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int  numero_faixas = Integer.parseInt(request.getParameter("numero_faixas"));
    String nome = request.getParameter("nome");
    String genero = request.getParameter("genero");
    String criador = request.getParameter("criador");
    Playlist playEntrada = new Playlist(numero_faixas,nome,genero,criador);
    ControllerPlaylist musCont = new ControllerPlaylist();
    Playlist playSaida = musCont.inserir(playEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=playSaida.getId()%> <br>
        numero_faixas = <%=playSaida.getNumero_faixas()%> <br>
        nome = <%=playSaida.getNome()%> <br>
        genero = <%=playSaida.getGenero()%> <br>
        criador = <%=playSaida.getCriador()%> <br>
        
        
    </div>
    </body>
</html>
