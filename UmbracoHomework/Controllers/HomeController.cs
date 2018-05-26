using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UmbracoHomework.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            for (int i = 0; i < 100; i++)
            {
                Console.WriteLine("hej");
            }

            return View();
        }

       
    }
}