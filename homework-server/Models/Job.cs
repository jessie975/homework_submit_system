using System;
using System.Collections.Generic;
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

    public static List<Job> getList (int page, int size) {
      List<Job> Jobs = new List<Job> ();
      DBConnection db = DBConnection.Instance ();
      if (db.IsConnect ()) {
        try {
          Console.WriteLine ("Connecting to MySQL...");
          string sql = "SELECT * FROM homework.task ORDER BY id DESC LIMIT " + (page - 1) * size + "," + size;
          Console.WriteLine ("sql is => " + sql);
          MySqlCommand cmd = new MySqlCommand (sql, db.Connection);
          MySqlDataReader rdr = cmd.ExecuteReader ();

          while (rdr.Read ()) {
            Console.WriteLine (rdr[0] + " - " + rdr[1]);
            Job item = new Job ();
            item.id = (int) rdr[ID];
            item.grade = (int) rdr[GRADE];
            item.jobName = (string) rdr[JOB_NAME];
            item.name = (string) rdr[NAME];
            item.sid = (string) rdr[SID];
            item.classes = (string) rdr[CLASSES];
            item.downLink = (string) rdr[DOWN_LINK];
            item.createTime = (DateTime) rdr[CREATE_TIME];
            Jobs.Add (item);
          }
          rdr.Close ();

        } catch (Exception ex) {
          Console.WriteLine (ex.ToString ());
        }
      }
      return Jobs;
    }

    public static long getSumPage() {
      DBConnection db = DBConnection.Instance ();
      long sum = 0;
      if (db.IsConnect ()) {
        try {
          Console.WriteLine ("Connecting to MySQL...");
          string sql = "SELECT COUNT(*) AS nums FROM homework.task";
          Console.WriteLine ("sql is => " + sql);
          MySqlCommand cmd = new MySqlCommand (sql, db.Connection);
          sum = (long)cmd.ExecuteScalar(); 
          db.Close();
        } catch (Exception ex) {
          Console.WriteLine (ex.ToString ());
          return sum;
        }
      }
      return sum;
    }


    public static string submitHomework (string jobName, string name, string sid, string classes, string downLink, int grade) {
      DBConnection db = DBConnection.Instance ();
      if (db.IsConnect ()) {
        try {
          Console.WriteLine ("Connecting to MySQL...");
          string sql = "INSERT INTO homework.task (jobName, name, sid, classes, downLink, grade, createTime) VALUES (\"" +
            jobName + "\",\"" +
            name + "\",\"" +
            sid + "\",\"" +
            classes + "\",\"" +
            downLink + "\",\"" +
            grade + "\",\"" +
            DateTime.Now.ToString ("yyyy-MM-dd HH:mm:ss") + "\")";
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