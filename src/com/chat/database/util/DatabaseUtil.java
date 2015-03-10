package com.chat.database.util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseUtil {
  private static DatabaseUtil instance = null;
  private static DataSource dataSource;

  private DatabaseUtil() {
    Context initCtx = null;

    try {

      initCtx = new InitialContext();
      Context envCtx = (Context) initCtx.lookup("java:comp/env");

      // Look up our data source
      dataSource = (DataSource) envCtx.lookup("jdbc/CHAT_SHARE");

    } catch (NamingException e) {
      e.printStackTrace();  //Todo add proper logging
    }
  }

  public static DatabaseUtil getInstance() {
    if (instance == null) {
      instance = new DatabaseUtil();
    }
    return instance;
  }

  public void insertUserInformation(String userName, String ipAddress, String latitude, String longitude) {
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
      connection = dataSource.getConnection();
      statement = connection.createStatement();
      String sqlStatement = "INSERT INTO USERS_INFO (userName,ip,latitude,longitude) VALUES ('" + userName + "','" + ipAddress + "','" + latitude + "','" + longitude + "')";
      statement.executeUpdate(sqlStatement);
    } catch (Exception ex) {
      ex.printStackTrace();
    } finally {
      try {
        if (resultSet != null) resultSet.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        if (statement != null) statement.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        if (connection != null) connection.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
}
