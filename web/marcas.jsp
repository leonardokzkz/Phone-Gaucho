<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 19:56:33
    Author     : QI
--%>

<%@page import="model.ExameDAO"%>
<%@page import="model.Exame"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>E-commerce de Celulares - Marcas</title>
</head>
<body>
    <header>
        <nav>
            <div class="navbar-container">
                <div class="logo">PhoneGaúcho</div>
                <ul class="navbar-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="marcas.jsp">Marcas</a></li>
                    <li><a href="acessorios.jsp">Acessórios</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <section class="marcas-section">
        <div class="container">
            <h2>Marcas de Celulares</h2>
            <p>Trabalhamos com as maiores marcas de celulares do mercado!!</p>
            <div class="marcas-list">
                <div class="marca-item">
                    <img src="imagens/LogoHuawei.png" alt="Huawei">
                </div>
                <div class="marca-item">
                    <img src="imagens/logoIphone.png" alt="iPhone">
                </div>
                <div class="marca-item">
                    <img src="imagens/logoMotorola.png" alt="Motorola">
                </div>
                <div class="marca-item">
                    <img src="imagens/Samsung-Logo2.png" alt="Samsung">
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="footer-container">
            <p>Todos os direitos reservados</p>
            <p>Inovação e qualidade em tecnologia.</p>
        </div>
    </footer>

    <script src="script/script.js"></script>
</body>
</html>