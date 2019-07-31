using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MyAPI.Models;

namespace MyAPI.Controllers
{
    public class APIController : ApiController
    {

        [HttpGet]
        public string GetInfo()
        {
           return "Hi";
        }




        [HttpPost]
        public User AddUser(string username, string password)
        {
            var obj = new User();
            obj.Status = 200;
            obj.Result = "user added suscesfully";
            obj.Value = "good boy";
            return obj;

        }
    }
}
