using MySql.Data.MySqlClient;

namespace homework_server {
  public class DBConnection {
    private DBConnection() {
    }

    public string Password { get; set; }

    private MySqlConnection connection = null;

    public MySqlConnection Connection {
      get { return connection; }
    }

    private static DBConnection _instance = null;

    public static DBConnection Instance() {
      if (_instance == null)
        _instance = new DBConnection();
      return _instance;
    }

    public bool IsConnect() {
      string connstring =
          "Server=127.0.0.1;" +
          "Database=homework;" +
          "User ID=root;" +
          "Password=12345678;";
      connection = new MySqlConnection(connstring);
      connection.Open();

      return true;
    }

    public void Close() {

      connection.Close();
      connection = null;
    }
  }
}