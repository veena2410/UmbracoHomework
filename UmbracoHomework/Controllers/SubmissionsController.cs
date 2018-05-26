using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UmbracoHomework;

namespace UmbracoHomework.Controllers
{
    public class SubmissionsController : Controller
    {
        private AcmeDBEntities db = new AcmeDBEntities();


        public JsonResult IsUserNameAvailable(string FirstName)
        {
            using (var db = new AcmeDBEntities())
            {
                return Json(!db.SubmissionSet.Any(name => name.FirstName == FirstName), JsonRequestBehavior.AllowGet);

            }


        }


        public JsonResult IsSerialnumberAvailable(Guid Serialnumber)
        {
           


            using (var db = new AcmeDBEntities())
            {

                //Json(!db.SubmissionSet.Any(name => name.Serialnumber == Serialnumber), JsonRequestBehavior.AllowGet)

                var serial = db.Serialnumber.FirstOrDefault(x => x.Serialnumber1 == Serialnumber);
                return Json(serial.Counter > 0, JsonRequestBehavior.AllowGet);
            }

        }

        // GET: Submissions
        public ActionResult Index()
        {

            using (var db = new AcmeDBEntities())
            {
                var submissionSet = db.SubmissionSet.Include(s => s.Serialnumber1);
                return View(submissionSet.ToList());
            }

        }

        // GET: Submissions/Details/5
        public ActionResult Details(int? id)
        {
            using (var db = new AcmeDBEntities())
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                Submission submission = db.SubmissionSet.Find(id);
                if (submission == null)
                {
                    return HttpNotFound();
                }
                return View(submission);
            }
        }

        // GET: Submissions/Create
        public ActionResult Create()
        {

            using (var db = new AcmeDBEntities())
            {
                ViewBag.Serialnumber = new SelectList(db.Serialnumber, "Serialnumber1", "Serialnumber1");



                return View();

            }
        }

        // POST: Submissions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,FirstName,LastName,Email,Age,Serialnumber,DOB")] Submission submission)
        {

            if (ModelState.IsValid)
            {                
                try
                {
                   

                    db.SubmissionSet.Add(submission);
                    var serial = db.Serialnumber.First(x => submission.Serialnumber == x.Serialnumber1);
                    serial.Counter--;
                    
                    db.SaveChanges();
                    return RedirectToAction("Draw");
                }

                catch (Exception e)
                {
             
                    throw;
                }
            }
        


    

    ViewBag.Serialnumber = new SelectList(db.Serialnumber, "Serialnumber1", "Serialnumber1", submission.Serialnumber);
          

            return View(submission);
}

// GET: Submissions/Edit/5
public ActionResult Edit(int? id)
{
    if (id == null)
    {
        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
    }
    Submission submission = db.SubmissionSet.Find(id);
    if (submission == null)
    {
        return HttpNotFound();
    }
    ViewBag.Serialnumber = new SelectList(db.Serialnumber, "Serialnumber1", "Serialnumber1", submission.Serialnumber);
    return View(submission);
}

// POST: Submissions/Edit/5
// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
[HttpPost]
[ValidateAntiForgeryToken]
public ActionResult Edit([Bind(Include = "Id,FirstName,LastName,Email,Age,Serialnumber,DOB")] Submission submission)
{
    if (ModelState.IsValid)
    {
        db.Entry(submission).State = EntityState.Modified;
        db.SaveChanges();
        return RedirectToAction("Index");
    }
    ViewBag.Serialnumber = new SelectList(db.Serialnumber, "Serialnumber1", "Serialnumber1", submission.Serialnumber);
    return View(submission);
}

// GET: Submissions/Delete/5
public ActionResult Delete(int? id)
{
    if (id == null)
    {
        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
    }
    Submission submission = db.SubmissionSet.Find(id);
    if (submission == null)
    {
        return HttpNotFound();
    }
    return View(submission);
}

// POST: Submissions/Delete/5
[HttpPost, ActionName("Delete")]
[ValidateAntiForgeryToken]
public ActionResult DeleteConfirmed(int id)
{
    Submission submission = db.SubmissionSet.Find(id);
    db.SubmissionSet.Remove(submission);
    db.SaveChanges();
    return RedirectToAction("Index");
}

protected override void Dispose(bool disposing)
{
    if (disposing)
    {
        db.Dispose();
    }
    base.Dispose(disposing);
}

// DRAW
public ActionResult Draw()
{
    return View();
}

    }

 
}
