<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuarioSistema" %>
<%@page import="backenddmm20232.controllers.ControllerUsuarioSistema" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    UsuarioSistema usEntrada = new UsuarioSistema(id);
    ControllerSistema usuSistCont = new ControllerUsuarioSistema();
    UsuarioSistema usSaida = usuSist.buscar(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (usSaida != null) { %> 
            UsuarioSistema = <%=usSaida.getId()%> | <%=usSaida.getNome()%> | <%=usSaida.getServidor()%> | <%=usSaida.getStatus()%>
        <% } else { %> 
            usSaida = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
