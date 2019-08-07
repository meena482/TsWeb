package Dao;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Bean.CompanyRegistration;

import Connect.DBConnection;

public class CompanyRegistrationDao 
{

	public int Registration(CompanyRegistration customerregistration) // To insert data into Database for signup
	{
		int status;
		
	try {

			Connection con = DBConnection.createConnection();
			System.out.println("conn");

			PreparedStatement ps = con.prepareStatement("insert into Registration(CompanyId,CompanyName,Email,Password,ConfirmPassword,City,MobileNumber,Address) values(?,?,?,?,?,?,?,?)");
			
			ps.setString(1, customerregistration.getCompanyId());
			
			
			ps.setString(2, customerregistration.getCompanyName());
			
			ps.setString(3, customerregistration.getEmail());
		
			
           ps.setString(4, customerregistration.getPassword());
			
			ps.setString(5, customerregistration.getConfirmPassword());
			
			ps.setString(6, customerregistration.getCity());


			ps.setString(7, customerregistration.getMobileNumber());
			
			ps.setString(8, customerregistration.getAddress());
			
			status = ps.executeUpdate();
			
			if (status > 0) 
			
			{
				return status;

			}
		}
		
		
	catch (SQLException e) 
		{
			e.printStackTrace();
		}

		return 0;
	}
	
	public String authenticateUser(CompanyRegistration CustomerRegistration) 
																// To authenticate user for log in
	{

		String Email = CustomerRegistration.getEmail();

		String password = CustomerRegistration.getPassword();

		Connection con;

		Statement statement;

		ResultSet resultSet;

		String EmailDB;

		String passwordDB;

		try {

			con = DBConnection.createConnection();

			statement = con.createStatement();

			resultSet = statement.executeQuery("select Email,Password from Registration");

			
			while (resultSet.next()) 
			{

				EmailDB = resultSet.getString("Email");

				passwordDB = resultSet.getString("password");
			
				if (Email.equals(EmailDB) && password.equals(passwordDB)) 
				
				{
					return "SUCCESS";
					
				
				}
	
			}

		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return "Invalid user credentials";
	}

}

