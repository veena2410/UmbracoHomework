using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UmbracoHomework;

namespace UmbracoHomework.Controllers
{
    public class SerialnumbersController : Controller
    {
        private AcmeDBEntities db = new AcmeDBEntities();

        // GET: Serialnumbers
        public ActionResult Index()
        {
            return View(db.Serialnumber.ToList());
        }

        // GET: Serialnumbers/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Serialnumber serialnumber = db.Serialnumber.Find(id);
            if (serialnumber == null)
            {
                return HttpNotFound();
            }
            return View(serialnumber);
        }

        // GET: Serialnumbers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Serialnumbers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Serialnumber1,Counter")] Serialnumber serialnumber)
        {
            if (ModelState.IsValid)
            {
                serialnumber.Serialnumber1 = Guid.NewGuid();
                db.Serialnumber.Add(serialnumber);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(serialnumber);
        }

        // GET: Serialnumbers/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Serialnumber serialnumber = db.Serialnumber.Find(id);
            if (serialnumber == null)
            {
                return HttpNotFound();
            }
            return View(serialnumber);
        }

        // POST: Serialnumbers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Serialnumber1,Counter")] Serialnumber serialnumber)
        {
            if (ModelState.IsValid)
            {
                db.Entry(serialnumber).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(serialnumber);
        }

        // GET: Serialnumbers/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Serialnumber serialnumber = db.Serialnumber.Find(id);
            if (serialnumber == null)
            {
                return HttpNotFound();
            }
            return View(serialnumber);
        }

        // POST: Serialnumbers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Serialnumber serialnumber = db.Serialnumber.Find(id);
            db.Serialnumber.Remove(serialnumber);
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
    }
}
