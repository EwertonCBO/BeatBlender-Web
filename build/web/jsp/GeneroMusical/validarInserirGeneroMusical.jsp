<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>

<%//idAutor, idPost, avaliacao, descricao, data) 
        //int  id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        GeneroMusical genEntrada = new GeneroMusical(nome);
        ControllerGeneroMusical genCont = new ControllerGeneroMusical();
        GeneroMusical genSaida = genCont.inserir(genEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=genSaida.getId()%> <br>
        nome  = <%=genSaida.getNome()%> <br>
        
    </div>
    </body>
</html>
