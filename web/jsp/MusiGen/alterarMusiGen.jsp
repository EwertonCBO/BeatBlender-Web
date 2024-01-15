<%-- 
    Document   : alteraGeneroMusical.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    MusicaGeneroMusical mpEntrada = new MusicaGeneroMusical(ID);
    ControllerMusicaGeneroMusical contMusiGen = new ControllerMusicaGeneroMusical();
    MusicaGeneroMusical mgSaida = contMusiGen.buscar(mpEntrada);
    
    GeneroMusical gen = new GeneroMusical("");
    Musica musi = new Musica("");
    ControllerGeneroMusical contGen = new ControllerGeneroMusical();
    ControllerMusica contMusi = new ControllerMusica();
    List<GeneroMusical> listaSaidaGen = contGen.listar(gen);
    List<Musica> listaSaidaMusi = contMusi.listar(musi);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarMusiGen" action="validarAlterarMusiGen.jsp" method="post">
            GeneroMusical:
            <select name="SELECTGEN" class="browser-default">
                <% for (GeneroMusical listaGen : listaSaidaGen){ %>
                <%if(mgSaida.getIdGen()== listaGen.getId() ) { %>
                        <option selected value="<%=listaGen.getId()%>"><%=listaGen.getNome()%></option>
                    <% } else { %>
                        <option value="<%=listaGen.getId()%>"><%=listaGen.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
            Musica:
            <select name="SELECTMUSI" class="browser-default">
                <% for (Musica listaMusi : listaSaidaMusi){ %>
                    <%if(mgSaida.getIdMusi()== listaMusi.getId() ) { %>
                        <option selected value="<%=listaMusi.getId()%>"><%=listaMusi.getTitulo()%></option>
                    <% } else { %>
                        <option value="<%=listaMusi.getId()%>"><%=listaMusi.getTitulo()%></option>
                    <% } %>
                <% } %>
            </select>
            TITULO <input type="text" name="TITULO" value="<%=mgSaida.getTitulo()%>"> <br>
            GENERO <input type="text" name="GENERO" value="<%=mgSaida.getGenero()%>"> <br>
            <input type="hidden" name="ID" value="<%=mgSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>