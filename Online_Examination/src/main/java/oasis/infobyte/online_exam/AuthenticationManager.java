package oasis.infobyte.online_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class AuthenticationManager {

	public boolean login(Scanner scanner) {
		System.out.println();
		System.out.print("Enter username: ");
		String username = scanner.nextLine();
		System.out.print("Enter password: ");
		String password = scanner.nextLine();

		try (Connection conn = DatabaseConnection.getConnection()) {
			String query = "SELECT * FROM users WHERE username = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				System.out.println("\nLogin successful!");
				System.out.println("Welcome, " + rs.getString("name"));
				return true;
			}
			else {
				System.out.println("\nInvalid username or password. Please try again.");
			}

		}
		catch (SQLException e) {
			System.out.println("\nError connecting to the database: " + e.getMessage());
		}

		return false;
	}

}
