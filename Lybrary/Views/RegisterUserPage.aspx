﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUserPage.aspx.cs" Inherits="Lybrary.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Css/Chekout.css">
    <title>Libreria Internacional</title>
</head>
<body>
    <form id="Form1" runat="server">
         <div class="container">
            <div class="logo">
                <a href="mu.html">
                    <img src="../Images/descargar-removebg-preview.png" alt="Logo de la librería">
                </a>
                <nav>
                    <ul>
                        <li><a href="Principal.aspx">Inicio <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                          <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
                          <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
                        </svg></a></li>
                    </ul>
                </nav>
            </div>
        </div>
        
        <section class="libreria">
        <h2>Registrar Usuario</h2>
        
        <hr>
        <div class="selectinput">
            <form class="row g-3">
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="Name">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Email</label>
                    <input type="email" class="form-control" id="Email">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Pais</label>
                    <input type="text" class="form-control" id="Pais">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Estado(Provincia)</label>
                    <input type="password" class="form-control" id="inputPassword4">
                </div>
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="Direccion">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Codigo Postal</label>
                    <input type="number" class="form-control" id="Codepostal">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Numero de Tarjeta</label>
                    <input type="number" class="form-control" id="numcard">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Fecha expiracion</label>
                    <input type="date" class="form-control" id="fech">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">CVV</label>
                    <input type="number" class="form-control" id="CVV">
                </div>
            </form>
        </div>
        <br>
        <h5>Impuestos : $10</h5>
        <h5>
            Total: $ 450</h4>
            <hr>
            <button>Pagar</button>
    </section>

    </form>
   
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