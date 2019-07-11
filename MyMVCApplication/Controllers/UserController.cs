using MyMVCApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MyMVCApplication.Controllers
{
    public class UserController : Controller
    {

        // Registration Action
        [HttpGet]
        public ActionResult Registration()
        {
            return View();
        }


        // Registration POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Registration([Bind(Exclude = "IsEmailValid, ActivationCode")] Table table)
        {

            bool Status = false;
            string Message = "";
            

            if (ModelState.IsValid)
            {
                #region // Email Validation
                var isExist = IsEmailExist(table.EmailID);
                if (isExist)
                {
                    ModelState.AddModelError("EmailExist", "The Email Already Exist!");
                    return View(table);
                }
                #endregion

                #region // Generat Activation Code
                table.ActivationCode = Guid.NewGuid();

                #endregion

                #region // Hashing
                table.Password = Crypto.Hashing(table.Password);
                table.ConfirmPassword = Crypto.Hashing(table.ConfirmPassword);
                table.IsEmailValid = false;

                #endregion

                #region // Saving information into database 
                using (UsersEntities dc = new UsersEntities())
                {
                    table.IsEmailValid = false;
                    dc.Tables.Add(table);
                    dc.SaveChanges();
                    SendVerificationCode(table.EmailID, table.ActivationCode.ToString());
                    Message = "Successful";
                    Status = true;

                }

                #endregion

               
            }
            else
                {
                Message = "Invalid Request";
                }

            ViewBag.Message = Message;
            ViewBag.Status = Status;

            return View(table);
        }

        [HttpGet]
        public ActionResult VerifyAccount(string id)
        {
            bool NewStatus = false;
            string Name ="";
    

            using (UsersEntities dc = new UsersEntities())
            {
                dc.Configuration.ValidateOnSaveEnabled = false;

                var v = dc.Tables.Where(a => a.ActivationCode == new Guid(id)).FirstOrDefault();

                if (v != null)
                {
                    v.IsEmailValid = true;
                    dc.SaveChanges();
                    NewStatus = true;
                    Name = v.FirstName; ;
                }
                else {
                    ViewBag.Message = "Invalid link";
                }
            }
            ViewBag.Status = NewStatus;
            ViewBag.name = Name;
            return View();

        }


        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(UserLogin login, string ReturnUrl)
        {
            string message = "";
            using (UsersEntities dc = new UsersEntities()) {
                var v = dc.Tables.Where(a => a.EmailID == login.EmailId).FirstOrDefault();
                if (v != null)
                {
                    if (true)
                    {


                        int timeOut = login.RememberMe ? 50 : 20;
                        var ticket = new FormsAuthenticationTicket(login.EmailId, login.RememberMe, timeOut);
                        string encrypted = FormsAuthentication.Encrypt(ticket);
                        var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrypted);
                        cookie.Expires = DateTime.Now.AddMinutes(timeOut);
                        cookie.HttpOnly = true;
                        Response.Cookies.Add(cookie);

                        if (Url.IsLocalUrl(ReturnUrl))
                        {
                            return Redirect(ReturnUrl);
                        }
                        else
                        {

                            return RedirectToAction("Index", "Home");
                        }



                    }
                    else {
                        message = "Invalid Credintals";
                    }

                }else
                {
                    message = "Invalid Credintals";
                }

            }

            ViewBag.message = message;
            return View();
        }

        [Authorize]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction ("Login","User");
        }

        [NonAction]
        public bool IsEmailExist(string emailID)
        {
            using (UsersEntities dc = new UsersEntities())
            {
                var v = dc.Tables.Where(a => a.EmailID == emailID).FirstOrDefault();
                return v != null;
            }
        }

        [NonAction]
        public void SendVerificationCode(string emailId, string activiationCode)
        {
            var verifyUrl = "/User/VerifyAccount/" + activiationCode;
            var link = Request.Url.AbsoluteUri.Replace(Request.Url.PathAndQuery, verifyUrl);

            var fromEmail = new MailAddress("medoh2014@gmail.com", "dotnet is awsome");
            var toEmail = new MailAddress(emailId);
            var fromEmailPassword = "0552615580";
            var subject = "Your Accound is Successfully Created!";
            var body = "<br /><br /> You have seccssfully registered in our system and for now we sent and activiation link, please use it to active your account... Thanks <br /><br /> <a href='"+link+"'>'"+link+"'</a>";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromEmail.Address, fromEmailPassword)

            };

            using (var message = new MailMessage(fromEmail, toEmail)
            {
                Subject = subject,
                Body = body,
                IsBodyHtml = true
            })

                smtp.Send(message);
        }
    }
}