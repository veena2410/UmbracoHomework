using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace UmbracoHomework
{


    public class ValidateSerialnumber : ValidationAttribute
    {



    }
}



//        //public int counter;

//        //public ValidateSerialnumber(int Counter)
//        //{
//        //    counter = Counter;

//        //}

//        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
//        {

//            using (AcmeDBEntities db = new AcmeDBEntities())
//            {

//                 Serialnumber sn = (Serialnumber)validationContext.ObjectInstance;
//            //    var result = db.Serialnumber.SingleOrDefault(b => b.Serialnumber1 = serialNumber1);
//                if (sn.Counter <= 2 && sn.Counter != null)
//                {

//                    sn.Counter = sn.Counter - 1;
//                    db.SaveChanges();

//                    return null; //Validation success
//                }

//                return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));


//            }

//        }


//        public IEnumerable<ModelClientValidationRule> GetClientValidationRule(ModelMetadata metadata, ControllerContext context)
//        {
//            var rule = new ModelClientValidationRule()
//            {
//                ValidationType = "validation",
//                ErrorMessage = FormatErrorMessage(metadata.DisplayName)
//            };

//            // rule.ValidationParameters["minage"] = MinAge;
//            yield return rule;
// }

//   }
//  }