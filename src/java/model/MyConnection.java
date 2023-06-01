package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/exames?useSSL=false&serverTimezone=UTC";
        String username = "root";
        String password = "";

        Class.forName(driver);
        Connection conn = DriverManager.getConnection(url, username, password);
        System.out.println("Conexão estabelecida com sucesso!");
        return conn;
    }
}
