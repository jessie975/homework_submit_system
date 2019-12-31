using System;
using System.Collections.Generic;
using System.IO;
using homework_server.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using System.Collections;

namespace homework_server.Controllers {

  [Route ("api")]
  public class HomeworkController : Controller {
    private readonly IWebHostEnvironment _hostingEnv;
    public HomeworkController (IWebHostEnvironment env) {
      this._hostingEnv = env;
    }

    [Route ("getWorkList")]
    [HttpGet]
    public JsonResult getWorkList([FromQuery] int page = 1, [FromQuery] int size = 20) {
      IEnumerable<Job> jobs = Job.getList(page, size);
      long sum = Job.getSumPage();
      return Json (new {
        jobs = jobs,
        pageSum = sum
      });
    }

    [Route ("submit")]
    [HttpPost]
    public string submitHomework ([FromBody] object body) {
      JObject obj = JObject.Parse (Convert.ToString (body));
      string jobName = (string) obj["jobName"];
      string name = (string) obj["name"];
      string sid = (string) obj["sid"];
      string classes = (string) obj["classes"];
      string downLink = (string) obj["downLink"];
      int grade = (int) obj["grade"];
      return Job.submitHomework (jobName, name, sid, classes, downLink, grade);
    }

    [Route ("upload")]
    [HttpPost]
    public JsonResult uploadFile () {
      string uploadFilesDir = "UploadFiles";
      var files = Request.Form.Files;
      string serverUrl = HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + "/" + uploadFilesDir + "/";
      Console.WriteLine("serverUrl => " + serverUrl);
      ArrayList urls = new ArrayList();
      foreach (var file in files) {
        long maxSize = 1 * 1024 * 1024;
        if (file.Length > maxSize) {
          return Json (new {
            state = -1,
              msg = "可上传最大文件为1MB哦"
          });
        }
      }

      foreach (var file in files) {
        TimeSpan ts = DateTime.Now - new DateTime (1970, 1, 1, 0, 0, 0, 0);
        string timeStamp = Convert.ToInt64 (ts.TotalSeconds).ToString ();
        var fileName = timeStamp + "_" + file.FileName;
        var fileDir = Path.Combine (_hostingEnv.WebRootPath, uploadFilesDir);
        if (!Directory.Exists (fileDir)) {
          Directory.CreateDirectory (fileDir);
        }
        // 设置编码

        string filePath = fileDir + $@"/{fileName}";
        using (FileStream fs = System.IO.File.Create (filePath)) {
          file.CopyTo (fs); 
          fs.Flush (); // 强制执行了一次把数据写出硬盘,避免程序突然中断文件写入失败
        }
        urls.Add(serverUrl + fileName);
      }

      return Json (new {
        state = 0,
        urls = urls
      });
    }
  }
}