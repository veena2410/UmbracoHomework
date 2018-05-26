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

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}