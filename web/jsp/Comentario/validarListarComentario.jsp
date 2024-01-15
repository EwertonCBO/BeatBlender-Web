<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.Comentario" %>
<%@page import="backenddmm20232.controllers.ControllerComentario" %>

<%
        String data = request.getParameter("data");
        Comentario cEntrada = new Comentario(data);
        ControllerComentario comCont = new ControllerComentario();
        List<Comentario> listaCom = comCont.listar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTAR</h1> <br>
        <% if(!(listaCom.isEmpty())) { %>
            <% for (Comentario comSaida : listaCom) { %>
                Comentario = ID = <%=comSaida.getId()%> |
                idAutor = <%=comSaida.getIdAutor()%> 
                avaliacao = <%=comSaida.getAvaliacao()%> |
                descricao  = <%=comSaida.getDescricao()%> |
                data  = <%=comSaida.getData()%>
               
                
              %>- <a href="../Comentario/alterarComentario.jsp?ID=<%=comSaida.getId()%>">Altera</a> - <a href="../Comentario/validarExcluirComentario.jsp?ID=<%=comSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
