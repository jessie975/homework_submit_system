using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using homework_server.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;
using System.Web;
using System.IO;


namespace homework_server.Controllers {

  [Route ("api")]
  public class todosController : Controller {

    [Route ("submit")]
    [HttpPost]
    public string submitHomework () {
      Job.submitHomework ();
      return "1";
    }

    [Route ("upload")]
    [HttpPost]
    public string uploadFile () {

    }
  }
}