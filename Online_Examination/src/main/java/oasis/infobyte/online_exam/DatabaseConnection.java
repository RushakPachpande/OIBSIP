package oasis.infobyte.online_exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	private static final String DB_URL = "jdbc:mysql://localhost:3307/online_exam";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "root";

	public static Connection getConnection() throws SQLException {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		}
		catch (ClassNotFoundException e) {
			throw new SQLException("JDBC Driver not found.", e);
		}

	}

}
