<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Lybrary.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Css/Admin.css">
    <title>Libreria Internacional-Administrador</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="container">
            <nav>
                <ul>
                    <li><a href="Principal.aspx">Cerrar Sesion <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-dash" viewBox="0 0 16 16">
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7ZM11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1Zm0-7a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z"/>
  <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z"/>
</svg></a></li>
                    <li><a href="#" class="book-button">Agregar nuevo libro <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-plus-fill" viewBox="0 0 16 16">
  <path d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM8.5 6v1.5H10a.5.5 0 0 1 0 1H8.5V10a.5.5 0 0 1-1 0V8.5H6a.5.5 0 0 1 0-1h1.5V6a.5.5 0 0 1 1 0z"/>
</svg></a></li>
                </ul>
            </nav>
            <div class="logo">
                <a href="#">
                    <img src="../Images/descargar-removebg-preview.png" alt="Logo de la librería">
                </a>
            </div>
        </div>
        <div class="idcenter">
            <h2>Libros Disponibles</h2>
        </div>
        <asp:Repeater ID="repBooks" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <h2>Libreríos Disponibles</h2>
                <div class="libros Disponibles">
                    <div class="libro">
                        <img src="<%# Eval("Photo")%>"" alt="Portada libro 1">
                        <h3>Title:<%# Eval("Title")%></h3>
                        <h3>Author:<%# Eval("Author")%></h3>
                        <p>Price:$<%# Eval("Price")%> </p>
                        <button>Delete</button>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <div class="newbook-modal">
            <div class="newbook-modal-content">
                <span class="close">&times;</span>
                <h2>Agregar nuevo libro</h2>
                <label for="ISBN">ISNB:</label>
                <input type="number" id="isbn" name="isbn">
                <label for="Photo">Imagen:</label>
                <input type="file" id="photo" name="photo">
                <label for="Tilte">Title:</label>
                <input type="text" id="title" name="tile">
                <label for="Auhtor">Autor:</label>
                <input type="text" id="author" name="tile">
                <label for="Date">Fecha de Publicacion:</label>
                <input type="date" id="date" name="date">
                <label for="Price">Precio:</label>
                <input type="number" id="price" name="price">
                <div class="button-container">
                    <button type="submit" class="book-button">Agregar</button>
                </div>
            </div>
        </div>        
    </form>
    <script>
        // Mostrar u ocultar la ventana emergente de inicio de sesión
        const bookBtn = document.querySelector(".book-button");
        const newbookmodal = document.querySelector(".newbook-modal");
        const closeBtn = document.querySelector(".close");

        bookBtn.addEventListener("click", () => {
        newbookmodal.style.display = "block";
        });

        closeBtn.addEventListener("click", () => {
        newbookmodal.style.display = "none";
        });

        window.addEventListener("click", (event) => {
        if (event.target === newbookmodal) {
            newbookmodal.style.display = "none";
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
