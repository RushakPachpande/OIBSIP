package oasis.infobyte.online_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class ProfileManager {

	public void updateProfile(Scanner scanner) {

		System.out.print("\nEnter username to update: ");
		String username = scanner.nextLine();
		System.out.print("Enter new email: ");
		String email = scanner.nextLine();
		System.out.print("Enter new name: ");
		String name = scanner.nextLine();
		System.out.print("Enter new password: ");
		String password = scanner.nextLine();

		try (Connection conn = DatabaseConnection.getConnection()) {
			String query = "UPDATE users SET name = ?, email = ?, password = ? WHERE username = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, username);

			int rowsUpdated = ps.executeUpdate();

			if (rowsUpdated > 0) {
				System.out.println("\nProfile updated successfully!");
			}
			else {
				System.out.println("\nUser not found or no changes made.");
			}

		}
		catch (SQLException e) {
			System.out.println("\nError connecting to the database: " + e.getMessage());
		}

	}

}
