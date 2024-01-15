<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("nome");
    GeneroMusical cEntrada = new GeneroMusical( id, nome);
    ControllerGeneroMusical comCont = new ControllerGeneroMusical();
    GeneroMusical cSaida = comCont.alterar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR ALTERACAO</h1>
        ID = <%=cSaida.getId()%> <br>
        Nome = <%=cSaida.getNome()%> <br>
    </body>
</html>
