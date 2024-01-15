<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.controllers.ControllerUsuario"%>
<%@page import="backenddmm20232.models.beans.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Comentario" %>
<%@page import="backenddmm20232.controllers.ControllerComentario" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Comentario genEntrada = new Comentario(id);
    ControllerComentario genCont = new ControllerComentario();
    Comentario genSaida = genCont.buscar(genEntrada);
    
    Comentario coment = new Comentario("");
    Usuario usu = new Usuario("");
    ControllerComentario contComent = new ControllerComentario();
    ControllerUsuario contUsu = new ControllerUsuario();
    List<Comentario> listaSaidaComent = contComent.listar(coment);
    List<Usuario> listaSaidaUsu = contUsu.listar(usu);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarComentario" action="validarAlterarComentario.jsp" method="post">
            ID <%=genSaida.getId()%> <br>
            ID autor
           <select name="SELECTAUTOR" class="browser-default">
                <% for (Usuario listaUsu : listaSaidaUsu){ %>
                    <%if(genSaida.getIdAutor() == listaUsu.getId() ) { %>
                        <option selected value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
                    <% } else { %>
                        <option selected value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
                    <% } %>
                <% } %>
            </select>
            avaliacao <input type="text" name="avaliacao" value="<%=genSaida.getAvaliacao()%>"> <br>
            descricao <input type="text" name="descricao" value="<%=genSaida.getDescricao()%>"> <br>
            data <input type="text" name="data" value="<%=genSaida.getData()%>"> <br>
            <input type="hidden" name="ID" value="<%=genSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>