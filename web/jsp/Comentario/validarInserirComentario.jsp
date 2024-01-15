<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Comentario" %>
<%@page import="backenddmm20232.controllers.ControllerComentario" %>

<%//idAutor, idPost, avaliacao, descricao, data) 
        int  idAutor = Integer.parseInt(request.getParameter("SELECTAUTOR"));
        int  avaliacao = Integer.parseInt(request.getParameter("avaliacao"));
        String descricao = request.getParameter("descricao");
        String data = request.getParameter("data");
        Comentario cEntrada = new Comentario(idAutor, avaliacao, descricao, data);
        ControllerComentario comCont = new ControllerComentario();
        Comentario cSaida = comCont.inserir(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=cSaida.getId()%> <br>
        idAutor = <%=cSaida.getIdAutor()%> <br>
        avaliacao= <%=cSaida.getAvaliacao()%> <br>
        descricao = <%=cSaida.getDescricao()%> <br>
        data = <%=cSaida.getData()%> <br>
        
        
    </div>
    </body>
</html>
