using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UmbracoHomework;
using UmbracoHomework.Controllers;

namespace UmbracoHomework.Tests.Controllers
{
    [TestClass]
    public class HomeControllerTest
    {
   
        public int addition (int x, int y)
        {
            return x + y;
        } 
   

        [TestMethod]
        public void TestIf2plus2equals4()
        {
            int result = addition(2, 2);



            Assert.AreEqual(result, 4);
        }
    }
}
