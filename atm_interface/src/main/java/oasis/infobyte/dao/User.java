package oasis.infobyte.dao;

import oasis.infobyte.database.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class User {
    
    private final Connection connection = DatabaseConnection.getConnection();
    private final Scanner scanner = new Scanner(System.in);
    
    public int user_exist(String username, String email) {
        
        String query = "SELECT * FROM users WHERE username = ? OR email = ?";
        
        try {
            assert connection != null; // Checks whether the connection is not null. If null, then throw AssertionError
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next()) {
                
                if (resultSet.getString("username").equals(username)) {return 1;}
                else if (resultSet.getString("email").equals(email)) {return 2;}
                else {return 0;}
            }
        } catch (SQLException | AssertionError e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    public void register() {
        System.out.print("First Name : ");
        String firstname = scanner.nextLine();
        System.out.print("Last Name : ");
        String lastname = scanner.nextLine();
        System.out.print("Username : ");
        String username = scanner.nextLine();
        System.out.print("Address : ");
        String address = scanner.nextLine();
        System.out.print("Phone No. : ");
        String phone = scanner.nextLine();
        System.out.print("Email : ");
        String email = scanner.nextLine();
        System.out.print("Password : ");
        String password = scanner.nextLine();
        
        // Checking if user already exists with username/email in database
        int user_exist = user_exist(username, email);
        
        if (user_exist == 1) { // Check if username exists
            System.out.println("Username already exists....\nPlease use different username");
            return;
        }
        else if (user_exist == 2) { // Check if email exists
            System.out.println("Email already exists....\nPlease use different email");
            return;
        }
        
        String register_query =
                "INSERT INTO users(username, first_name, last_name, address, phone, email, password) VALUES(?,?,?,?,?,?,?)";
        try {
            assert connection != null; // Checks whether the connection is not null. If null, then throw AssertionError
            PreparedStatement preparedStatement = connection.prepareStatement(register_query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, firstname);
            preparedStatement.setString(3, lastname);
            preparedStatement.setString(4, address);
            preparedStatement.setString(5, phone);
            preparedStatement.setString(6, email);
            preparedStatement.setString(7, password);
            
            int affectedRows = preparedStatement.executeUpdate();
            
            if (affectedRows > 0) {
                System.out.println("\nRegistration Successful");
            }
            else {
                System.out.println("\nRegistration Failed");
            }
        } catch (SQLException | AssertionError e) {
            e.printStackTrace();
        }
    }
    
    public String login() {
        System.out.print("Username : ");
        String username = scanner.nextLine();
        System.out.print("Password : ");
        String password = scanner.nextLine();
        String login_query = "SELECT * FROM users WHERE username = ? AND password = ?";
        try {
            assert connection != null; // Checks whether the connection is not null. If null, then throw AssertionError
            PreparedStatement preparedStatement = connection.prepareStatement(login_query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("email");
            }
            else {
                return null;
            }
        } catch (SQLException | AssertionError e) {
            e.printStackTrace();
        }
        return null;
    }
    
}
