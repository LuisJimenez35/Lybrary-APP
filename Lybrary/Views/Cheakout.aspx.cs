using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lybrary.Models.UserAthentication;
using m = Lybrary.Models;
using c = Lybrary.Controllers;
using System.Security.Cryptography.X509Certificates;
using System.EnterpriseServices;
using System.Net.Mail;
using System.Xml.Linq;
using System.Net;
using static System.Collections.Specialized.BitVector32;
using Lybrary.Controllers;
using Lybrary.Models;
using Lybrary.DataBaseWebHelper;

namespace Lybrary
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //Method load the books saved before 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["loginInfo"] == null)
                {
                    Response.Redirect("Booking.aspx?session=false");
                }

                LoginResponsePayload session = (LoginResponsePayload)Session["loginInfo"];

                c.Cart bookController = new c.Cart();


                repMyShoppingCart.DataSource = bookController.GetMyShoppingCart(session);
                repMyShoppingCart.DataBind();

                calculateCost();
            }
        }


        //It should calculete cost but need a fix
        private void calculateCost()
        {
            decimal total = 0;
            foreach (RepeaterItem item in repMyShoppingCart.Items)
            {
                Label lblPrice = (Label)item.FindControl("lblPrice");
                decimal price = decimal.Parse(lblPrice.Text);
                total += price;
            }

            // Muestra el total en la etiqueta lblTotal

            lblTotal.InnerText = total.ToString("N2");

        }


        protected void btnPagar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener los valores de los campos de entrada
                string name = Name.Value;
                string email = Email.Value;
                string pais = Pais.Value;
                string estado = inputPassword4.Value;
                string direccion = Direccion.Value;
                int codepostal = int.Parse(Codepostal.Value);
                long numcard = long.Parse(this.numcard.Value);
                string fech = this.fech.Value;
                int cvv = int.Parse(CVV.Value);
                decimal total = decimal.Parse(lblTotal.InnerText);

                // Crear un objeto MailMessage
                MailMessage message = new MailMessage();
                message.From = new MailAddress("soportprimeprogram@gmail.com");
                message.To.Add(email);
                message.Subject = "Confirmación de compra";

                // Crear el cuerpo del correo electrónico
                string body = string.Format("Nombre: {0}<br>Email: {1}<br>Pais: {2}<br>Estado: {3}<br>Dirección: {4}<br>Código Postal: {5}<br>Número de Tarjeta: {6}<br>Fecha de Expiración: {7}<br>CVV: {8}<br>Total: {9}", name, email, pais, estado, direccion, codepostal, numcard, fech, cvv, total);
                message.Body = body;
                message.IsBodyHtml = true;

                // Configurar el cliente SMTP
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.Credentials = new NetworkCredential("soportprimeprogram@gmail.com", "kihjvhoodlmvgmvw");
                smtpClient.EnableSsl = true;

                // Enviar el correo electrónico
                smtpClient.Send(message);

                // Limpiar el carrito de compras del usuario actual
                DataBase db = new DataBase();
                db.ClearShoppingCart(email);

                // Mostrar una notificación si el correo se envió correctamente
                lblNotificacion.InnerText = "El correo se envió correctamente.";

                Response.Redirect("../Views/Mainpage.aspx?session==true");

            }
            catch (Exception ex)
            {
                // Mostrar una notificación si el correo no se pudo enviar
                lblNotificacion.InnerText = "No se pudo enviar el correo. Error: " + ex.Message;
            }
        }
    }
}