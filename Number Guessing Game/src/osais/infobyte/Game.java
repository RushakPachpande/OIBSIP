package osais.infobyte;

import java.util.Random;
import java.util.Scanner;

public class Game {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		Random random = new Random();
		int minRange = 1;
		int maxRange = 100;
		int maxAttempts = 10;
		boolean playAgain = true;
		int totalPoints = 0; // Variable to store the player's total points
		System.out.println("Welcome to Number Guessing Game!");
		System.out.println("Think a number between 1 to 100!");

		while (playAgain) {
			int targetNumber = random.nextInt(100) + 1;
			System.out.println(targetNumber);
			int attempts = 0;
			int roundPoints = 0; // Points for the current round
			System.out.println();
			System.out.println("New Round!");
			System.out.println("I've chosen a mysterious number between " + minRange + " and " + maxRange + ".");
			System.out.println("You have " + maxAttempts + " attempts to guess the number.");

			while (attempts < maxAttempts) {
				System.out.println();
				System.out.print("Guess the new number: ");
				int userGuess = scanner.nextInt();
				attempts++;

				if (userGuess == targetNumber) {
					System.out.println("Congrats!! You've guessed the number " + targetNumber + " in " + attempts
							+ " attempts.");
					// Points calculation: 100 points divided by maxAttempts, then multiplied by
					// remaining attempts
					roundPoints = Math.max((100 * (maxAttempts - (attempts - 1))) / maxAttempts, 0); // Scaled points
					totalPoints += roundPoints;
					System.out.println("You earned " + roundPoints + " points this round!");
					break;
				}
				else if (userGuess < targetNumber) {
					System.out.println("Your guess is too low.");
					System.out.println("Remaining attempts : " + (maxAttempts - attempts));
				}
				else {
					System.out.println("Your guess is too high.");
					System.out.println("Remaining attempts : " + (maxAttempts - attempts));
				}

			}

			if (attempts == maxAttempts && roundPoints == 0) {
				System.out.println("Oops, you've used all your attempts.");
				System.out.println("The number was : " + targetNumber);
			}

			System.out.println();
			System.out.println("Your total points : " + totalPoints);
			System.out.print("Would you like to play again? (yes/no): ");
			String choice = scanner.next().toLowerCase();
			playAgain = choice.equals("yes") || choice.equals("y");
		}

		System.out.println("Thank you for playing the Number Guessing Game!");
		System.out.println("Your final score is : " + totalPoints + " points");
		scanner.close();
	}

}