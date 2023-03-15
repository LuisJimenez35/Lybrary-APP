<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Lybrary.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Css/Principal.css">
    <title>Libreria Internacional</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="container">
            <nav>
                <ul>
                    <li><a href="Principal.aspx">Catálogo</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="#" class="login-btn">Login</a></li>
                    <li><a href="#" id="boton-productos">Mis Libros</a></li>
                </ul>
            </nav>
            <div class="logo">
                <a href="#">
                    <img src="../Images/descargar-removebg-preview.png" alt="Logo de la librería">
                </a>
            </div>
        </div>

        <div class="idcenter">
            <h2>Buscadores Filtros</h2>
        </div>

        <div class="search-container">

            <input type="text" placeholder="ISBN: ">
            <button type="submit"><i class="fa fa-search"></i>Buscar</button>


            <input type="text" placeholder="Titulo: ">
            <button type="submit"><i class="fa fa-search"></i>Buscar</button>

        </div>
        <asp:Repeater ID="repBooks" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <h2>Libreríos Disponibles</h2>
                <div class="libros">
                    <div class="libro">
                        <img src="<%# Eval("Photo")%>"" alt="Portada libro 1">
                        <h3>Title:<%# Eval("Title")%></h3>
                        <h3>Author:<%# Eval("Author")%></h3>
                        <p>Price:$<%# Eval("Price")%> </p>
                        <button>Buy</button>
                        <button>Description</button>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <div class="login-modal">
            <div class="login-modal-content">
                <span class="close">&times;</span>
                <h2>Iniciar sesión</h2>

                <label for="username">Nombre de usuario:</label>
                <input type="text" id="username" name="username">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password">
                <div class="button-container">
                    <button type="submit" class="login-button">Iniciar sesión</button>
                </div>

                <div class="forgot-password-container">
                    <a href="#">¿Olvidaste tu contraseña?</a>
                </div>
            </div>
        </div>
    </form>


    <script>
        const botonProductos = document.getElementById('boton-productos');
        const ventanaProductos = document.getElementById('ventana-productos');

        botonProductos.addEventListener('click', () => {
            if (ventanaProductos.style.display === 'block') {
                ventanaProductos.style.display = 'none';
            } else {
                ventanaProductos.style.display = 'block';
            }
        });

        // Mostrar u ocultar la ventana emergente de inicio de sesión
        const loginBtn = document.querySelector(".login-btn");
        const loginModal = document.querySelector(".login-modal");
        const closeBtn = document.querySelector(".close");

        loginBtn.addEventListener("click", () => {
        loginModal.style.display = "block";
        });

        closeBtn.addEventListener("click", () => {
        loginModal.style.display = "none";
        });

        window.addEventListener("click", (event) => {
        if (event.target === loginModal) {
            loginModal.style.display = "none";
        }
        });

    </script>

    <footer>
        <div class="container">
            <div class="footer-cols">
                <div class="footer-col">
                    <h3>Contacto</h3>
                    <ul>
                        <li>Dirección: 123 Main St.</li>
                        <li>Teléfono: 800-LIBRERÍA(542-73742)</li>
                        <li>Correo electrónico: servicioweb@libreriainternacional.com</li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Enlaces rápidos</h3>
                    <ul>
                        <li><a href="Principal.aspx">Inicio</a></li>
                        <li><a href="#">Quiénes somos</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>
