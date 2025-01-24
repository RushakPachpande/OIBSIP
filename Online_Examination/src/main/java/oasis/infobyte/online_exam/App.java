package oasis.infobyte.online_exam;

import java.util.Scanner;

public class App {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		AuthenticationManager authManager = new AuthenticationManager();
		ProfileManager profileManager = new ProfileManager();
		MCQ_Manager mcqManager = new MCQ_Manager();

		boolean isLoggedIn = false;
		System.out.println("Welcome to the Online MCQs Examination!\n");

		while (true) {

			if (!isLoggedIn) {
				System.out.println("1. Login");
				System.out.println("2. Exit");
				System.out.print("Enter your choice: ");

				int choice = scanner.nextInt();

				if (choice == 1) {
					scanner.nextLine();
					isLoggedIn = authManager.login(scanner);
				}
				else if (choice == 2) {
					System.out.println("\nGoodbye!");
					break;
				}
				else {
					System.out.println("\nInvalid choice. Please try again.");
				}

			}
			else {
				System.out.println("\n1. Update Profile");
				System.out.println("2. Take Test");
				System.out.println("3. Logout");
				System.out.print("Enter your choice: ");

				int choice = scanner.nextInt();

				if (choice == 1) {
					scanner.nextLine();
					profileManager.updateProfile(scanner);
				}
				else if (choice == 2) {
					mcqManager.startExam(scanner);
				}
				else if (choice == 3) {
					isLoggedIn = false;
					System.out.println("\nYou have been logged out.");
				}
				else {
					System.out.println("\nInvalid choice. Please try again.");
				}

			}

		}

		scanner.close();
	}

}