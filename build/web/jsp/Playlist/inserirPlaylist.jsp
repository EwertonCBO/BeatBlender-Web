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
            numero_faixas <input type="int" name="numero_faixas" value=""> <br>
            nome <input type="text" name="nome" value=""> <br>
            genero <input type="text" name="genero" value=""> <br>
            criador <input type="text" name="criador" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>