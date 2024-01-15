<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>

<%
    String titulo = request.getParameter("TITULO");
    MusicaGeneroMusical mgEntrada = new MusicaGeneroMusical(titulo);
    ControllerMusicaGeneroMusical contmg = new ControllerMusicaGeneroMusical();
    List<MusicaGeneroMusical> listamg = contmg.listar(mgEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTAR</h1> <br>
        <% if(!(listamg.isEmpty())) { %>
            <% for (MusicaGeneroMusical us : listamg){ %>
            MUSI-GEN = ID = <%=us.getId()%> | MUSICA = <%=us.getMusi()%> | GENEROMUSICAL = <%=us.getGen().getNome()%> | TITULO = <%=us.getTitulo()%>- <a href="../MusiGen/alterarMusiGen.jsp?ID=<%=us.getId()%>">Altera</a> - <a href="../MusiGen/validarExcluirMusiGen.jsp?ID=<%=us.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
