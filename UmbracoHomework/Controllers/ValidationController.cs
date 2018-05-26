////using System;
////using System.Collections.Generic;
////using System.Globalization;
////using System.Linq;
////using System.Web;
////using System.Web.Mvc;
////using System.Web.UI;

////namespace UmbracoHomework.Controllers
////{
  

////        [OutputCache(Location = OutputCacheLocation.None, NoStore = true)]

////        public class ValidationController : Controller
////        {

////        private AcmeDBEntities db = new AcmeDBEntities();

////        public ValidationController() : this(db.Instance) { }



////            public ValidationController(IUserDB repository)
////            {
////                _repository = repository;
////            }

////            public JsonResult IsUID_Available(string Username)
////            {

////                if (!_repository.UserExists(Username))
////                    return Json(true, JsonRequestBehavior.AllowGet);

////                string suggestedUID = String.Format(CultureInfo.InvariantCulture,
////                    "{0} is not available.", Username);

////                for (int i = 1; i < 100; i++)
////                {
////                    string altCandidate = Username + i.ToString();
////                    if (!_repository.UserExists(altCandidate))
////                    {
////                        suggestedUID = String.Format(CultureInfo.InvariantCulture,
////                       "{0} is not available. Try {1}.", Username, altCandidate);
////                        break;
////                    }
////                }
////                return Json(suggestedUID, JsonRequestBehavior.AllowGet);
////            }

////        }
////    }

