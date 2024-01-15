<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Comentario" %>
<%@page import="backenddmm20232.controllers.ControllerComentario" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Comentario cEntrada = new Comentario(id);
    ControllerComentario comCont = new ControllerComentario();
    Comentario cSaida = comCont.excluir(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=cSaida.getId()%> <br>
        idAutor = <%=cSaida.getIdAutor()%> <br>
        avaliacao = <%=cSaida.getAvaliacao()%> <br>
        descricao = <%=cSaida.getDescricao()%> <br>
        data = <%=cSaida.getData()%> <br>
    </div>
    </body>
</html>
