<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background: url('https://gifs.eco.br/wp-content/uploads/2022/09/gifs-de-tecnologia-10.gif') center center fixed;
            background-size: cover;
            position: fixed;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333333;
        }

        form {
            text-align: center;
        }

        input {
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #ffffff;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>LOGIN</h1>
        <form name="LOGIN" action="menu.jsp" method="post">
            LOGIN <input type="text" name="LOGIN" value=""> <br>
            SENHA <input type="password" name="SENHA" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR">
        </form>
    </div>
</body>
</html>

