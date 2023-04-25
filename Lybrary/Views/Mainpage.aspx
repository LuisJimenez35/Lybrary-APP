<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx" Inherits="Lybrary.Views.WebForm3" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Css/Principal.css">
    <script src="../js/site.js"></script>
    <title>Libreria Internacional</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="container">
            <nav>
                <ul>
                    <li><a runat="server" href="Mainpage.aspx">Home <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
  <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
</svg></a></li>
                    <li><a runat="server" href="RegisterPage.aspx" id="RegisterPage" class="login-btn1">Sign In <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-add" viewBox="0 0 16 16">
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0Zm-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
  <path d="M2 13c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z"/>
</svg></a></li>
                    <li><a runat="server" href="#" id="LoginModal" class="login-btn">Log In <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-door-open-fill" viewBox="0 0 16 16">
  <path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2h.5a.5.5 0 0 1 .5.5V15h-1V2zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
</svg></a></li>

<li><a id="LogOut" runat="server" onserverclick="Logout_ServerClick">Log Out <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-dash" viewBox="0 0 16 16">
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7ZM11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1Zm0-7a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z"/>
  <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z"/>
</svg></a></li>
                    <li><a runat="server" href="Cheakout.aspx" id="ShoppingCar">Shopping Cart <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg></a></li>
                    <li><a runat="server" href="#" id="LoveBooks">My favorites <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
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
            <h2>Buscadores Filtros</h2>
        </div>

        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Titulo o ISBN: ">
            <button type="button" id="searchButton" <i class="fa fa-search"></i>Buscar</button>

        </div>
        <div  class="tilemain">
            <h2>Libros Disponibles</h2>
        </div>
        <div class="mainbooks">
            <asp:Repeater ID="repBooks" runat="server" ClientIDMode="Static">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="libros">
                      <div class="libro">
                        <img src="<%# Eval("Photo")%>" alt="Portada <%# Eval("ISBN")%>">
                        <h3 id="h3Title"><%# Eval("Title")%></h3>
                        <hr><hr>
                        <h3 id="h3Author">Author:<%# Eval("Author")%></h3>
                        <p id="pPrice">Price:$<%# Eval("Price")%> </p>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal_<%# Eval("ISBN")%>" data-isbn='<%# Eval("ISBN")%>'>Information</button>
                      </div>
                    </div>
            

                
                <!-- Modal de informacion libros-->
                <div class="modal fade" id="exampleModal_<%# Eval("ISBN")%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Descripcion de "<%# Eval("Title")%>" </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <div class="card">
                          <div class="card-body">
                            <h4 class="card-title"><%# Eval("Title")%></h4>
                            <hr>
                            <h4 class="card-title">Author: <%# Eval("Author")%></h4>
                            <hr>
                            <h4 class="card-title-1">Description<br><br> <%# Eval("Description")%></h4>
                            <hr>
                            <h4 class="card-title">Relase Date: <%# Eval("ReleaseDate")%></h4>
                            <hr>
                            <button type="button" runat="server" onserverclick="btnSave_ServerClick" class="btn btn-success" dataId='<%# Eval("ISBN")%>'>Add Shoping-Car</button>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>

                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            </div>

        <div class="login-modal">
            <div class="login-modal-content">
                <span class="close">&times;</span>
                <h2>Iniciar sesión</h2>
                <label for="username">Correo electrónico:</label>
                <input runat="server" class="form-control" type="email" id="txtEmail" placeholder="Correo electrónico">
                <label for="password">Contraseña:</label>
                <input runat="server" class="form-control" type="password" id="txtPassword" placeholder="Password">
                <div class="button-container">
                    <button type="submit" class="login-button" runat="server" onserverclick="btnLogin_ServerClick">Iniciar sesión</button>
                </div>

                <div class="forgot-password-container">
                    <a href="#">¿Olvidaste tu contraseña?</a>
                </div>
            </div>
        </div>
         <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">
                            <label id="lblModalTitle"></label>
                        </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <label id="lblModalMessage"></label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Ok</button>
                    </div>
                </div>
            </div>
        </div>
        
        
    </form>


    <script>

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

    <script>
        const searchInput = document.querySelector("#searchInput");
        const searchButton = document.querySelector("#searchButton");

        searchButton.addEventListener("click", () => {
            const query = searchInput.value;
            window.location.href = `Mainpage.aspx?q=${query}`;
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
                        <li><a href="Mainpage.aspx">Inicio</a></li>
                        <li><a href="#">Quiénes somos</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>

