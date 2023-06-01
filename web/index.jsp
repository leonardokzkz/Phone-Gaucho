<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>E-commerce de Celulares</title>
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

    <section class="home-section">
        <div class="container">
            <h1>Bem-vindo ao nosso E-commerce de Celulares</h1>
            <p>Encontre os melhores celulares do mercado </br> 
                Descubra celulares de qualidade excepcional em nossa seleção cuidadosamente escolhida. </br> </p>
        </div>
    </section>

    <section class="carousel">
        <%-- Array de objetos com informações de cada imagem --%>
        <% String[][] produtos = {
            {"huaweip50pro.png", "Huawei p50 Pro", "R$ 999,00", "p50pro.jsp"},
            {"iphone11promax.png", "iPhone11 ProMax", "R$ 1.299,00", "iphone11promax.jsp"},
            {"moto-g8.png", "moto G8", "R$ 899,00", "moto-g8.jsp"},
            {"samsungGalaxyS20.png", "Galaxy S20", "R$ 1.599,00", "galaxy-s20.jsp"},
            {"xiaomiredminote9.png", "Redmi Note 9", "R$ 799,00", "redmi-note9.jsp"}
        }; %>

        <%-- Iterar sobre o array e exibir as informações de cada imagem --%>
        <% for (String[] produto : produtos) { %>
            <div class="carousel-item">
                <a href="<%= produto[3] %>">
                    <img src="imagens/<%= produto[0] %>" alt="Produto" class="carousel-image">
                    <div class="produto-info">
                        <h3><%= produto[1] %></h3>
                        <p><%= produto[2] %></p>
                    </div>
                </a>
            </div>
        <% } %>

        <%-- Lorem ipsum para preencher espaços vazios --%>
        <div class="carousel-item">
            <img src="imagens/LoremIpsum.jpg" alt="Produto" class="carousel-image">
            <div class="produto-info">
                <h3>Lorem Ipsum</h3>
                <p>R$ 0,00</p>
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
