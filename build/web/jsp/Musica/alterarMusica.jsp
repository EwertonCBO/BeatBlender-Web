<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Musica mEntrada = new Musica(id);
    ControllerMusica musCont = new ControllerMusica();
    Musica mSaida = musCont.buscar(mEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarMusica" action="validarAlterarMusica.jsp" method="post">
            ID <%=mSaida.getId()%> <br>
            id_artista <input type="text" name="id_artista" value="<%=mSaida.getId_artista()%>"> <br>
            id_genero <input type="text" name="id_genero" value="<%=mSaida.getId_genero()%>"> <br>
            num_faixa <input type="text" name="num_faixa" value="<%=mSaida.getNum_faixa()%>"> <br>
            duracao <input type="text" name="duracao" value="<%=mSaida.getDuracao()%>"> <br>
            titulo <input type="text" name="titulo" value="<%=mSaida.getTitulo()%>"> <br>
            <input type="hidden" name="ID" value="<%=mSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>