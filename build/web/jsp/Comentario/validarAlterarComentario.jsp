<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Comentario" %>
<%@page import="backenddmm20232.controllers.ControllerComentario" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idAutor = Integer.parseInt(request.getParameter("SELECTAUTOR"));
    int avaliacao = Integer.parseInt(request.getParameter("avaliacao"));
    String descricao = request.getParameter("descricao");
    String data = request.getParameter("data");
    Comentario cEntrada = new Comentario(id,idAutor,avaliacao,descricao,data);
    ControllerComentario comCont = new ControllerComentario();
    Comentario cSaida = comCont.alterar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR ALTERAR</h1>
        ID = <%=cSaida.getId()%> <br>
        idAutor = <%=cSaida.getIdAutor()%> <br>
        avaliaco = <%=cSaida.getAvaliacao()%> <br>
        descricao = <%=cSaida.getDescricao()%> <br>
        data = <%=cSaida.getData()%> <br>
    </div>
    </body>
</html>
