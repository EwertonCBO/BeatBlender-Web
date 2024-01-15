<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Playlist" %>
<%@page import="backenddmm20232.controllers.ControllerPlaylist" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Playlist playEntrada = new Playlist(id);
    ControllerPlaylist playCont = new ControllerPlaylist();
    Playlist playSaida = playCont.buscar(playEntrada);
%>

<!DOCTYPE html>
<html>
<%@include file="../../inc/formatacao.inc" %>
<head>
    <title>JSP Page</title>
    <style>
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
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333333;
            margin-top: 20px;
        }

        p {
            color: #555555;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BUSCA</h1>
        <br>
        <% if (playSaida != null) { %> 
            <p>Usuario ID: <%= playSaida.getId() %></p>
            <p>Número de faixas: <%= playSaida.getNumero_faixas()%></p>
            <p>Nome: <%= playSaida.getNome()%></p>
            <p>Gênero: <%= playSaida.getGenero()%></p>
            <p>Criador: <%= playSaida.getCriador()%></p>
        <% } else { %> 
            <p>Usuário não encontrado</p>
        <% } %> 
    </div>
</body>
</html>

