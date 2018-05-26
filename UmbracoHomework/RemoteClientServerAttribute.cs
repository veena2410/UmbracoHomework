﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using System.Reflection;

namespace UmbracoHomework
{
    public class RemoteClientServerAttribute : RemoteAttribute
    {
        //Overriding the isValid method
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            Type controller = Assembly.GetExecutingAssembly().GetTypes().
                FirstOrDefault(type => type.Name.ToLower() == string.Format("{0}Controller", this.RouteData["controller"].ToString()).ToLower());


            if (controller != null)
            {
                MethodInfo action = controller.GetMethods().FirstOrDefault(method => method.Name.ToLower() == this.RouteData["action"].ToString().ToLower());
                if(action != null)
                {
                    object instance = Activator.CreateInstance(controller);
                    object response = action.Invoke(instance, new object[] { value });
                    if(response is JsonResult)
                        {
                        object jsonData = ((JsonResult)response).Data; 
                        if(jsonData is Boolean)
                        {
                            return (bool)jsonData ? ValidationResult.Success : new ValidationResult(this.ErrorMessage);
                        }

                    }
                }
            }
             return ValidationResult.Success;
          //  return new ValidationResult(this.ErrorMessage); 
        }

        public RemoteClientServerAttribute(string routeName) : base(routeName)
        {

        }

        public RemoteClientServerAttribute(string action, string controller) : base(action, controller)
        {

        }

        public RemoteClientServerAttribute(string action, string controller, string areaName) : base(action, controller, areaName)
        {

        }

    }
}