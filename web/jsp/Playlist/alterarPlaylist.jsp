<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Playlist" %>
<%@page import="backenddmm20232.controllers.ControllerPlaylist" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Playlist pEntrada = new Playlist(id);
    ControllerPlaylist musCont = new ControllerPlaylist();
    Playlist playSaida = musCont.buscar(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarPlaylist" action="validarAlterarPlaylist.jsp" method="post">
            ID <%=playSaida.getId()%> <br>
            numero_faixas <input type="text" name="numero_faixas" value="<%=playSaida.getNumero_faixas()%>"> <br>
            nome <input type="text" name="nome" value="<%=playSaida.getNome()%>"> <br>
            genero <input type="text" name="genero" value="<%=playSaida.getGenero()%>"> <br>
            criador <input type="text" name="criador" value="<%=playSaida.getCriador()%>"> <br>
            <input type="hidden" name="ID" value="<%=playSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>