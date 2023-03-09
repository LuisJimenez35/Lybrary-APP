<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Lybrary.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css and images/Principal.css">
    <title>Libreria Internacional</title>
</head>
<body>
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
                <img src="css and images/images/descargar-removebg-preview.png" alt="Logo de la librería">
            </a>
        </div>
    </div>

    <div class="idcenter">
        <h2>Buscadores Filtros</h2>
    </div>

    <div class="search-container">
        <form>
            <input type="text" placeholder="ISBN: ">
            <button type="submit"><i class="fa fa-search"></i>Buscar</button>
        </form>
        <form>
            <input type="text" placeholder="Titulo: ">
            <button type="submit"><i class="fa fa-search"></i>Buscar</button>
        </form>
    </div>

    <section class="libreria">
        <h2>Libreríos Disponibles</h2>
        <div class="libros">
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 1">
                <h3>Titulo libro 1</h3>
                <p>Precio: </p>
                <button>Añadir al carrito</button>
            </div>
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 2">
                <h3>Titulo libro 2</h3>
                <p>Precio:</p>
                <button>Añadir al carrito</button>
            </div>
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 3">
                <h3>Titulo libro 3</h3>
                <p>Precio:</p>
                <button>Añadir al carrito</button>
            </div>
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 3">
                <h3>Titulo libro 4</h3>
                <p>Precio:</p>
                <button>Añadir al carrito</button>
            </div>
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 3">
                <h3>Titulo libro 5</h3>
                <p>Precio:</p>
                <button>Añadir al carrito</button>
            </div>
            <div class="libro">
                <img src="https://via.placeholder.com/150" alt="Portada libro 3">
                <h3>Titulo libro 6</h3>
                <p>Precio:</p>
                <button>Añadir al carrito</button>
            </div>
        </div>
    </section>

    <div class="login-modal">
        <div class="login-modal-content">
            <span class="close">&times;</span>
            <h2>Iniciar sesión</h2>
            <form>
                <label for="username">Nombre de usuario:</label>
                <input type="text" id="username" name="username">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password">
                <div class="button-container">
                    <button type="submit" class="login-button">Iniciar sesión</button>
                </div>
            </form>
            <div class="forgot-password-container">
                <a href="#">¿Olvidaste tu contraseña?</a>
            </div>
        </div>
    </div>

    <div id="ventana-productos">
        <div class="contenedor-productos">
            <h2>Mis Libros</h2>
            <div class="libros">
                <div class="libro">
                    <img src="css and images/images/HP1_portada_espa3Fol_de_bolsillo_2020.jpg" alt="Libro 1">
                    <h3>Name 1</h3>
                    <hr>
                    <p>ISBN : 11212323223</p>
                    <hr>
                    <p>Autor: Luis</p>
                    <hr>
                    <p>Fecha: 20/03/23</p>
                    <hr>
                    <p>Precio: $10.99</p>
                    <br>
                    <button>Eliminar Producto</button>
                </div>
                <hr>
                <div class="libro">
                    <img src="css and images/images/71IR+6fRznL.jpg" alt="Libro 2">
                    <h3>Name: 2</h3>
                    <hr>
                    <p>ISBN: 112231</p>
                    <hr>
                    <p>Autor: Juan</p>
                    <hr>
                    <p>Fecha: 20/03/23</p>
                    <hr>
                    <p>Precio: $10.99</p>
                    <br>
                    <button>Eliminar Producto</button>
                </div>
                <hr>
                <p>Total: </p>
            </div>
            <div class="chekbtn">
                <a class="Clog" href="Cheakout.aspx" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-plus-fill" viewBox="0 0 16 16">
                        <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM9 5.5V7h1.5a.5.5 0 0 1 0 1H9v1.5a.5.5 0 0 1-1 0V8H6.5a.5.5 0 0 1 0-1H8V5.5a.5.5 0 0 1 1 0z" />
                    </svg> Pay
                </a>
            </div>
        </div>
    </div>

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
