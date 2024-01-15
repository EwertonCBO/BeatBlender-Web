<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    GeneroMusical genEntrada = new GeneroMusical(id);
    ControllerGeneroMusical comCont = new ControllerGeneroMusical();
    GeneroMusical genSaida = comCont.excluir(genEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=genSaida.getId()%> <br>
        nome = <%=genSaida.getNome()%> <br>
    </div>
    </body>
</html>
