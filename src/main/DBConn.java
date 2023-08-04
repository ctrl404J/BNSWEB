package main;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConn {
	private Connection conn = null;

	private static final DBConn instance = new DBConn();
	private final static String PROPERTIES_FILE_PATH = "info.properties";
	private static final String DB_URL_KEY = "dburl";
	private static final String DB_UID_KEY = "dbuid";
	private static final String DB_PWD_KEY = "dbpwd";
	private static final String DRIVER = "driver";

	public static DBConn getInstance() {
		return instance;
	}

	private DBConn() {
	}

	public Connection getConnection() {

		Properties properties = new Properties();
		InputStream input = DBConn.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE_PATH);
		try {
			properties.load(input);
			String dburl = properties.getProperty(DB_URL_KEY);
			String dbuid = properties.getProperty(DB_UID_KEY);
			String dbpwd = properties.getProperty(DB_PWD_KEY);
			String driver = properties.getProperty(DRIVER);
			Class.forName(driver);
			conn = DriverManager.getConnection(dburl, dbuid, dbpwd);
		} catch (IOException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

}