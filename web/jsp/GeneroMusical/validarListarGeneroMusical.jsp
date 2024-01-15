<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>

<%
        String nome = request.getParameter("NOME");
        GeneroMusical genEntrada = new GeneroMusical(nome);
        ControllerGeneroMusical genCont = new ControllerGeneroMusical();
        List<GeneroMusical> listaGen = genCont.listar(genEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTAR</h1> <br>
        <% if(!(listaGen.isEmpty())) { %>
            <% for (GeneroMusical genSaida : listaGen) { %>
                GeneroMusical = ID = <%=genSaida.getId()%> |
                nome = <%=genSaida.getNome()%>
                
               
                
              %>- <a href="../GeneroMusical/alterarGeneroMusical.jsp?ID=<%=genSaida.getId()%>">Altera</a>
              - <a href="../GeneroMusical/validarExcluirGeneroMusical.jsp?ID=<%=genSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
