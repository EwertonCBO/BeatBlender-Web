<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.MusicaGeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerMusicaGeneroMusical" %>
<%@page import="backenddmm20232.models.beans.Musica" %>
<%@page import="backenddmm20232.controllers.ControllerMusica" %>
<%@page import="backenddmm20232.models.beans.GeneroMusical" %>
<%@page import="backenddmm20232.controllers.ControllerGeneroMusical" %>
<%
    Musica musi = new Musica("");
    GeneroMusical gen = new GeneroMusical("");
    ControllerMusica contMusi = new ControllerMusica();
    ControllerGeneroMusical contGen = new ControllerGeneroMusical();
    List<Musica> listaSaidaMusi = contMusi.listar(musi);
    List<GeneroMusical> listaSaidaGen = contGen.listar(gen);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirMusiGen" action="validarInserirMusiGen.jsp" method="post">
            Musica:
            <select name="SELECTMUSI" class="browser-default">
                <% for (Musica listaMusi : listaSaidaMusi){ %>
                        <option value="<%=listaMusi.getId()%>"><%=listaMusi.getTitulo()%></option>
                <% } %>
            </select>
            GeneroMusical:
            <select name="SELECTGEN" class="browser-default">
                <% for (GeneroMusical listaGen : listaSaidaGen){ %>
                        <option value="<%=listaGen.getId()%>"><%=listaGen.getNome()%></option>
                <% } %>
            </select>
            Titulo <input type="text" name="TITULO" value=""> <br>
            Genero <input type="text" name="GENERO" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
    </body>
</html>