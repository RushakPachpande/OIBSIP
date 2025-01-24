package oasis.infobyte.online_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class MCQ_Manager {

	public void startExam(Scanner scanner) {

		try (Connection conn = DatabaseConnection.getConnection()) {

			String query = "SELECT * FROM questions ORDER BY RAND() LIMIT 20"; // Fetch 20 random MCQs from database
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();

			int questionNumber = 0;
			int score = 0;

			while (rs.next()) {
				System.out.println("\nQ " + ++questionNumber + " : " + rs.getString("question"));
				System.out.println("A. " + rs.getString("option_a"));
				System.out.println("B. " + rs.getString("option_b"));
				System.out.println("C. " + rs.getString("option_c"));
				System.out.println("D. " + rs.getString("option_d"));
				System.out.print("\nEnter your answer: ");
				String answer = scanner.next();

				if (answer.equalsIgnoreCase(rs.getString("correct_option"))) {
					score++;
				}

				System.out.println("\n-------------------------------------------------------------\n");
			}

			// Display final score and result
			if (score > 10) {
				System.out.println("\nCongratulations, You've Passed the Exam.");
				System.out.println("Your score: " + score + "/20");
			}
			else {
				System.out.println("\nSorry, You've Failed the Exam.");
				System.out.println("Your score: " + score + "/20");
				System.out.println("Please try again.");
			}

		}
		catch (SQLException e) {
			System.out.println("Error connecting to the database: " + e.getMessage());
		}

	}

}
