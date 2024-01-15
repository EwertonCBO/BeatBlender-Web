<%-- 
    Document   : inseriUsuario
    Created on : 08/04/2021, 20:37:49
    Author     : User
--%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.controllers.ControllerUsuario"%>
<%@page import="backenddmm20232.models.beans.Usuario"%>
<%
    Usuario usu = new Usuario("");
    ControllerUsuario contUsu = new ControllerUsuario();
    List<Usuario> listaSaidaUsu = contUsu.listar(usu);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirComentario" action="validarInserirComentario.jsp" method="post">
             USUARIO:
            <select name="SELECTAUTOR" class="browser-default">
                <% for (Usuario listaUsu : listaSaidaUsu){ %>
                        <option value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
                <% } %>
            </select>
            
            avaliacao <input type="text" name="avaliacao" value=""> <br>
            descricao <input type="text" name="descricao" value=""> <br>
            data <input type="text" name="data" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>