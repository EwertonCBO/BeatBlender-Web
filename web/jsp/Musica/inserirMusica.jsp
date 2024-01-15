<%-- 
    Document   : inseriUsuario
    Created on : 08/04/2021, 20:37:49
    Author     : User
--%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirMusica" action="validarInserirMusica.jsp" method="post">
            id_artista <input type="text" name="id_artista" value=""> <br>
            id_genero <input type="text" name="id_genero" value=""> <br>
            num_faixa <input type="text" name="num_faixa" value=""> <br>
            duracao <input type="text" name="duracao" value=""> <br>
            titulo <input type="text" name="titulo" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>