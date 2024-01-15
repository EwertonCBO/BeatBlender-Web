<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    GeneroMusical genEntrada = new GeneroMusical(id);
    ControllerGeneroMusical genCont = new ControllerGeneroMusical();
    GeneroMusical genSaida = genCont.buscar(genEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarGeneroMusical" action="validarAlterarGeneroMusical.jsp" method="post">
            ID <%=genSaida.getId()%> <br>
            nome <input type="text" name="nome" value="<%=genSaida.getNome()%>"> <br>
           <input type="hidden" name="ID" value="<%=genSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>