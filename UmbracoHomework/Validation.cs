using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace UmbracoHomework
{
    public class Validation : ValidationAttribute
    {

        public int MinAge { get; set; }



        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            if (value == null)
                return null;

            int age = 0;
            age = DateTime.Now.Year - Convert.ToDateTime(value).Year;
            if (age >= MinAge)
                return null; //Validation success
            else
                return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));


        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRule(ModelMetadata metadata, ControllerContext context)
        {
            var rule = new ModelClientValidationRule()
            {
                ValidationType = "validation",
                ErrorMessage = FormatErrorMessage(metadata.DisplayName)
            };

            rule.ValidationParameters["minage"] = MinAge;
            yield return rule;
        }





    }
}