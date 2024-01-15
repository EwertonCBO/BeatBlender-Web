<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Musica mEntrada = new Musica(id);
    ControllerMusica musCont = new ControllerMusica();
    Musica mSaida = musCont.excluir(mEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=mSaida.getId()%> <br>
        id_artistaid = <%=mSaida.getId_artista()%> <br>
        genero = <%=mSaida.getId_genero()%> <br>
        num_faixa = <%=mSaida.getNum_faixa()%> <br>
        duracao = <%=mSaida.getDuracao()%> <br>
        titulo = <%=mSaida.getTitulo()%> <br>
    </div>
    </body>
</html>
