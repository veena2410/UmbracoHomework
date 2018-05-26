using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UmbracoHomework.Controllers;

namespace UmbracoHomework.Tests.Controllers
{
    [TestClass]
   public  class SubmissionControllerTest
    {
        [TestMethod]
        public void TestOnlyEnterContestTwice()
        {
            using (var db = new AcmeDBEntities())
            {
                var controller = new SubmissionsController();
                var submission = new Submission() { FirstName = "a", LastName = "b", Email = "something@d.dk", Age = 20, Serialnumber = Guid.Parse("0FBF023F9CB946E58B780E820EC815CD"), DOB=DateTime.Now.AddYears(-20) };

                controller.Create(submission);
                var serial = db.Serialnumber.FirstOrDefault(x => submission.Serialnumber == x.Serialnumber1);
                Assert.AreEqual(1, serial.Counter);
                
                //controller.Create(submission);
                //serial = db.Serialnumber.FirstOrDefault(x => submission.Serialnumber == x.Serialnumber1);
                //Assert.AreEqual(0, serial.Counter);

                //try
                //{
                //    controller.Create(submission);
                //    serial = db.Serialnumber.FirstOrDefault(x => submission.Serialnumber == x.Serialnumber1);
                //    Assert.Fail();
                //} catch (Exception e)
                //{

                //}

            }
            
        }

    }
}
