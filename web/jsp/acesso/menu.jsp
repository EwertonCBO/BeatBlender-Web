<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario uEntrada = new Usuario(login, senha);
    ControllerUsuario contUsu = new ControllerUsuario();
    boolean valida = contUsu.validar(uEntrada);
%>

<html>
<head>
    <title>JSP Page</title>
    <style>
        @keyframes move {
    100% {
        transform: translate3d(0, 0, 1px) rotate(360deg);
    }
}

.background {
    position: fixed;
    width: 100vw;
    height: 100vh;
    top: 0;
    left: 0;
    background: #001721;
    overflow: hidden;
}

.background span {
    width: 15vmin;
    height: 15vmin;
    border-radius: 15vmin;
    backface-visibility: hidden;
    position: absolute;
    animation: move;
    animation-duration: 35;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
}


.background span:nth-child(0) {
    color: #ffffff;
    top: 93%;
    left: 50%;
    animation-duration: 22s;
    animation-delay: -126s;
    transform-origin: -12vw 24vh;
    box-shadow: 30vmin 0 4.3371432212791vmin currentColor;
}
.background span:nth-child(1) {
    color: #3eac9a;
    top: 46%;
    left: 34%;
    animation-duration: 21s;
    animation-delay: -60s;
    transform-origin: -2vw 21vh;
    box-shadow: -30vmin 0 4.595460804337586vmin currentColor;
}
.background span:nth-child(2) {
    color: #ffffff;
    top: 46%;
    left: 90%;
    animation-duration: 128s;
    animation-delay: -143s;
    transform-origin: -22vw -9vh;
    box-shadow: -30vmin 0 4.316754078738073vmin currentColor;
}
.background span:nth-child(3) {
    color: #89878c;
    top: 57%;
    left: 77%;
    animation-duration: 87s;
    animation-delay: -149s;
    transform-origin: -24vw 9vh;
    box-shadow: 30vmin 0 4.29572119057505vmin currentColor;
}
.background span:nth-child(4) {
    color: #c6f1dd;
    top: 50%;
    left: 85%;
    animation-duration: 35s;
    animation-delay: -18s;
    transform-origin: -10vw 7vh;
    box-shadow: -30vmin 0 4.274512342366419vmin currentColor;
}
.background span:nth-child(5) {
    color: #89878c;
    top: 71%;
    left: 26%;
    animation-duration: 62s;
    animation-delay: -74s;
    transform-origin: -19vw -11vh;
    box-shadow: 30vmin 0 4.3317572814594545vmin currentColor;
}
.background span:nth-child(6) {
    color: #89878c;
    top: 23%;
    left: 93%;
    animation-duration: 50s;
    animation-delay: -116s;
    transform-origin: -21vw -13vh;
    box-shadow: 30vmin 0 3.958182347267774vmin currentColor;
}
.background span:nth-child(7) {
    color: #89878c;
    top: 44%;
    left: 29%;
    animation-duration: 121s;
    animation-delay: -144s;
    transform-origin: 6vw 9vh;
    box-shadow: 30vmin 0 4.47210187315197vmin currentColor;
}
.background span:nth-child(8) {
    color: #ffffff;
    top: 75%;
    left: 69%;
    animation-duration: 26s;
    animation-delay: -9s;
    transform-origin: -22vw 10vh;
    box-shadow: 30vmin 0 4.237377495794331vmin currentColor;
}
.background span:nth-child(9) {
    color: #3eac9a;
    top: 46%;
    left: 72%;
    animation-duration: 73s;
    animation-delay: -115s;
    transform-origin: -12vw -11vh;
    box-shadow: 30vmin 0 4.7192734466625055vmin currentColor;
}
.background span:nth-child(10) {
    color: #3eac9a;
    top: 15%;
    left: 15%;
    animation-duration: 66s;
    animation-delay: -126s;
    transform-origin: -6vw -23vh;
    box-shadow: 30vmin 0 4.494719368402162vmin currentColor;
}
.background span:nth-child(11) {
    color: #c6f1dd;
    top: 78%;
    left: 68%;
    animation-duration: 151s;
    animation-delay: -20s;
    transform-origin: -3vw -17vh;
    box-shadow: -30vmin 0 4.382877934163845vmin currentColor;
}
.background span:nth-child(12) {
    color: #89878c;
    top: 35%;
    left: 15%;
    animation-duration: 65s;
    animation-delay: -8s;
    transform-origin: -10vw -8vh;
    box-shadow: -30vmin 0 3.8413207556685265vmin currentColor;
}
.background span:nth-child(13) {
    color: #c6f1dd;
    top: 74%;
    left: 76%;
    animation-duration: 76s;
    animation-delay: -149s;
    transform-origin: -20vw 11vh;
    box-shadow: 30vmin 0 4.072846882212767vmin currentColor;
}
.background span:nth-child(14) {
    color: #ffffff;
    top: 69%;
    left: 42%;
    animation-duration: 21s;
    animation-delay: -85s;
    transform-origin: -13vw 5vh;
    box-shadow: -30vmin 0 4.617680009394541vmin currentColor;
}
.background span:nth-child(15) {
    color: #3eac9a;
    top: 70%;
    left: 29%;
    animation-duration: 31s;
    animation-delay: -40s;
    transform-origin: 5vw -18vh;
    box-shadow: 30vmin 0 4.2643183518004015vmin currentColor;
}
.background span:nth-child(16) {
    color: #3eac9a;
    top: 55%;
    left: 28%;
    animation-duration: 91s;
    animation-delay: -14s;
    transform-origin: -18vw 13vh;
    box-shadow: 30vmin 0 4.590299661739056vmin currentColor;
}
.background span:nth-child(17) {
    color: #3eac9a;
    top: 78%;
    left: 8%;
    animation-duration: 83s;
    animation-delay: -59s;
    transform-origin: 17vw -3vh;
    box-shadow: -30vmin 0 4.44535884717355vmin currentColor;
}
.background span:nth-child(18) {
    color: #ffffff;
    top: 25%;
    left: 95%;
    animation-duration: 10s;
    animation-delay: -6s;
    transform-origin: -1vw 24vh;
    box-shadow: 30vmin 0 4.096743563658297vmin currentColor;
}
.background span:nth-child(19) {
    color: #ffffff;
    top: 8%;
    left: 9%;
    animation-duration: 103s;
    animation-delay: -71s;
    transform-origin: -24vw 23vh;
    box-shadow: -30vmin 0 4.5902182023992735vmin currentColor;
}
.background span:nth-child(20) {
    color: #ffffff;
    top: 70%;
    left: 29%;
    animation-duration: 107s;
    animation-delay: -64s;
    transform-origin: -20vw -20vh;
    box-shadow: 30vmin 0 4.619109734420309vmin currentColor;
}
.background span:nth-child(21) {
    color: #ffffff;
    top: 90%;
    left: 76%;
    animation-duration: 45s;
    animation-delay: -77s;
    transform-origin: -24vw 15vh;
    box-shadow: -30vmin 0 4.448138652476022vmin currentColor;
}
.background span:nth-child(22) {
    color: #89878c;
    top: 13%;
    left: 57%;
    animation-duration: 103s;
    animation-delay: -67s;
    transform-origin: 24vw -11vh;
    box-shadow: -30vmin 0 4.011669989062882vmin currentColor;
}
.background span:nth-child(23) {
    color: #c6f1dd;
    top: 35%;
    left: 52%;
    animation-duration: 85s;
    animation-delay: -25s;
    transform-origin: -7vw 0vh;
    box-shadow: -30vmin 0 4.202158132092206vmin currentColor;
}
.background span:nth-child(24) {
    color: #ffffff;
    top: 12%;
    left: 85%;
    animation-duration: 79s;
    animation-delay: -76s;
    transform-origin: -10vw 15vh;
    box-shadow: -30vmin 0 3.9623242971791104vmin currentColor;
}
.background span:nth-child(25) {
    color: #c6f1dd;
    top: 97%;
    left: 12%;
    animation-duration: 128s;
    animation-delay: -5s;
    transform-origin: 15vw -12vh;
    box-shadow: 30vmin 0 4.709437786578121vmin currentColor;
}
.background span:nth-child(26) {
    color: #c6f1dd;
    top: 80%;
    left: 17%;
    animation-duration: 14s;
    animation-delay: -68s;
    transform-origin: 1vw -16vh;
    box-shadow: 30vmin 0 4.53834621905815vmin currentColor;
}
.background span:nth-child(27) {
    color: #3eac9a;
    top: 81%;
    left: 34%;
    animation-duration: 34s;
    animation-delay: -83s;
    transform-origin: 22vw -2vh;
    box-shadow: -30vmin 0 4.492030875904293vmin currentColor;
}
.background span:nth-child(28) {
    color: #3eac9a;
    top: 1%;
    left: 78%;
    animation-duration: 86s;
    animation-delay: -137s;
    transform-origin: -21vw -17vh;
    box-shadow: 30vmin 0 4.039453917850757vmin currentColor;
}
.background span:nth-child(29) {
    color: #ffffff;
    top: 21%;
    left: 60%;
    animation-duration: 119s;
    animation-delay: -64s;
    transform-origin: 14vw -19vh;
    box-shadow: -30vmin 0 4.190313778151406vmin currentColor;
}
.background span:nth-child(30) {
    color: #ffffff;
    top: 51%;
    left: 50%;
    animation-duration: 129s;
    animation-delay: -3s;
    transform-origin: -9vw 7vh;
    box-shadow: -30vmin 0 4.57730175570982vmin currentColor;
}
.background span:nth-child(31) {
    color: #ffffff;
    top: 91%;
    left: 57%;
    animation-duration: 22s;
    animation-delay: -90s;
    transform-origin: 2vw 14vh;
    box-shadow: -30vmin 0 3.838138144143654vmin currentColor;
}
.background span:nth-child(32) {
    color: #3eac9a;
    top: 33%;
    left: 20%;
    animation-duration: 93s;
    animation-delay: -39s;
    transform-origin: -7vw 12vh;
    box-shadow: 30vmin 0 3.7749466765295487vmin currentColor;
}

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 120px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            z-index: 1000;
        }

        h1 {
            color: #333333;
            margin-top: 20px;
        }

        a {
            color: #3498db;
            text-decoration: none;
            margin: 0 10px;
        }

        a:hover {
            text-decoration: underline;
        }
        html{
            padding: 0;
            margin:0;
            width: 100vw;
            height: 100vw;
        }
        .container {
            width: calc(50%);
            height: calc(100%);
            background: white;
            padding: 6 rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 2rem;
        }        
        .container > header{
            border: 3px solid aquamarine;
            color: orangered;
            text-align: center;
            width: 100%;
        }             
        .container > section{
            width: 90%;
            display: flex;
            justify-content: space-evenly;
        }    
        .container > section > .colunas{
            flex-grow: 1;
            display: flex;
            border: 3px solid aquamarine;
            color: orangered;
            box-sizing: content-box;
            text-align: center;
            padding: 2rem;
        }      
        .container > footer{
            border: 3px solid aquamarine;
            color: orangered;
            text-align: center;
            display: flex;
            padding: 0 2rem;
        }    
        .colunas {
            display: flex;
            flex-direction: column;
            align-items: center;
             justify-content: center;
            -webkit-column-count: 2; Chrome, Safari, Opera 
            -moz-column-count: 2;  Firefox 
            column-count: 2;
        }
    </style>
</head>
<body>
    
    <div class="container">
        
   

        <h1>MENU</h1>
        <br>
        <% if(valida) { %> 
        <section>
           <div class="colunas">
            <h1>Usuario</h1> 
            <a href="../usuario/buscaUsuario.jsp">Buscar</a> | 
            <a href="../usuario/listaUsuario.jsp">Listar</a> | 
            <a href="../usuario/inseriUsuario.jsp">Inserir</a>
            <h1>Pessoa</h1> 
            <a href="../pessoa/buscaPessoa.jsp">Buscar</a> | 
            <a href="../pessoa/listaPessoa.jsp">Listar</a> | 
            <a href="../pessoa/inseriPessoa.jsp">Inserir</a>
            <h1>Sistema</h1> 
            <a href="../sistema/buscaSistema.jsp">Buscar</a> | 
            <a href="../sistema/listaSistema.jsp">Listar</a> | 
            <a href="../sistema/inseriSistema.jsp">Inserir</a>
            <h1>Usuario-Sistema</h1> 
            <a href="../ususist/buscaUsuSist.jsp">Buscar</a> | 
            <a href="../ususist/listaUsuSist.jsp">Listar</a> | 
            <a href="../ususist/inseriUsuSist.jsp">Inserir</a>
             </div>
            <div class="colunas">
            <h1>Musica</h1> 
            <a href="../Musica/buscarMusica.jsp">Buscar</a> | 
            <a href="../Musica/listarMusica.jsp">Listar</a> | 
            <a href="../Musica/inserirMusica.jsp">Inserir</a>
            <h1>Playlist</h1> 
            <a href="../Playlist/buscarPlaylist.jsp">Buscar</a> | 
            <a href="../Playlist/listarPlaylist.jsp">Listar</a> | 
            <a href="../Playlist/inserirPlaylist.jsp">Inserir</a>
            <h1>Comentario</h1> 
            <a href="../Comentario/buscarComentario.jsp">Buscar</a> | 
            <a href="../Comentario/listarComentario.jsp">Listar</a> | 
            <a href="../Comentario/inserirComentario.jsp">Inserir</a>
            <h1>GeneroMusical</h1>
            <a href="../GeneroMusical/buscarGeneroMusical.jsp">Buscar</a> | 
            <a href="../GeneroMusical/listarGeneroMusical.jsp">Listar</a> | 
            <a href="../GeneroMusical/inserirGeneroMusical.jsp">Inserir</a>
            <h1>MusicaGeneroMusical</h1>
            <a href="../MusiGen/buscarMusiGen.jsp">Buscar</a> | 
            <a href="../MusiGen/listarMusiGen.jsp">Listar</a> | 
            <a href="../MusiGen/inserirMusiGen.jsp">Inserir</a>
             </div>
            
    </div>
         </section>
        <% } else { %> 
            <h1>Usuário Inválido</h1> 
        <% } %> 
        <div class="background">
    <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
   <span></span>
    </div>
</body>
</html>