<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>

<%//id_artista, id_genero, num_faixa, duracao, titulo) { 
        int  id_artista = Integer.parseInt(request.getParameter("id_artista"));
        int id_genero;
        try {
    id_genero = Integer.parseInt(request.getParameter("id_genero"));
} catch (NumberFormatException e) {
 // Lida com o erro, talvez redirecione para uma página de erro.
 e.printStackTrace(); // ou log de erro
return; // ou redirecione para uma página de erro
 }
int num_faixa = Integer.parseInt(request.getParameter("num_faixa"));
String duracao = request.getParameter("duracao");
  String titulo = request.getParameter("titulo");
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=mSaida.getId()%> <br>
        id_artista = <%=mSaida.getId_artista()%> <br>
        id_genero = <%=mSaida.getId_genero()%> <br>
        num_faixa= <%=mSaida.getNum_faixa()%> <br>
        duracao = <%=mSaida.getDuracao()%> <br>
        titulo = <%=mSaida.getTitulo()%> <br>
        
        
    </div>
    </body>
</html>
