using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using MySql.Data.MySqlClient;

namespace homework_server.Models {
  public class Job {
    static string ID = "id";
    static string NAME = "name";
    static string JOB_NAME = "jobName";
    static string SID = "sid";
    static string GRADE = "grade";
    static string CLASSES = "classes";
    static string CREATE_TIME = "createTime";
    static string DOWN_LINK = "downLink";

    int id;
    string name;
    string jobName;
    string sid;
    int grade;
    string classes;
    DateTime? createTime;
    string downLink;

    public int Id {
      get => id;
      set => id = value;
    }

    public string Name {
      get => name;
      set => name = value;
    }

    public string JobName {
      get => jobName;
      set => jobName = value;
    }

    public string Sid {
      get => sid;
      set => sid = value;
    }

    public int Grade {
      get => grade;
      set => grade = value;
    }

    public string Classes {
      get => classes;
      set => classes = value;
    }

    public DateTime? CreateTime {
      get => createTime;
      set => createTime = value;
    }

    public string DownLink {
      get => downLink;
      set => downLink = value;
    }

    public static string submitHomework () {
      DBConnection db = DBConnection.Instance ();
      if (db.IsConnect ()) {
        try {
          Console.WriteLine ("Connecting to MySQL...");
          string sql = "select * from homework.task";
          Console.WriteLine ("sql is => " + sql);
          MySqlCommand cmd = new MySqlCommand (sql, db.Connection);
          MySqlDataReader rdr = cmd.ExecuteReader ();
          rdr.Close ();
        } catch (Exception ex) {
          Console.WriteLine (ex.ToString ());
          return "{\"state\": -1, \"err\": \"" + ex.Message.ToString () + "\"}";
        }
      }
      return "{\"state\":0}";
    }
  }
}