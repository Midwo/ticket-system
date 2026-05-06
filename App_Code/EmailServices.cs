using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.App_Code
{
    public class EmailServices
    {

        private string email = ConfigurationManager.AppSettings["EmailAddress"];
        private string password = ConfigurationManager.AppSettings["EmailPassAPPKey"];

        public void Send(string content)
        {
            var fromAddress = new MailAddress(email, "Info MD Ticket");
            var toAddress = new MailAddress("michal.dwojak92@gmail.com", "Użytkownik MD Ticket System");
            const string subject = "MD Ticket System!";
            string body = "Odpisano na zgłoszenie, treść:  " + content;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, password)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }

        public void Send(string to, string content)
        {
            var fromAddress = new MailAddress(email, "Info MD Ticket");
            var toAddress = new MailAddress(to, "Użytkownik MD Ticket System");
            const string subject = "MD Ticket System!";
            string body = "Odpisano na zgłoszenie, treść:  " + content;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, password)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }

        public void SendRegister(string to, string content)
        {
            var fromAddress = new MailAddress(email, "Info MD Ticket");
            var toAddress = new MailAddress(to, "Użytkownik MD Ticket System");
            const string subject = "MD Ticket System!";
            string body = content;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, password)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }
    }
}