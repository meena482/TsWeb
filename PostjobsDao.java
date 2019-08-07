package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.ParseException;

import Bean.Postjobs;
import Connect.DBConnection;





public class PostjobsDao {

	public  String authenticateUser(Postjobs AddBean)
	{
		int status = 0;
		
		String CompanyName = AddBean.getCompanyName();
		String Email = AddBean.getEmail();
		String Vacancy = AddBean.getVacancy();
		String Skills= AddBean.getSkills();
		String Address= AddBean.getAddress();
		String MobileNo = AddBean.getMobileNo();
		
		
		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("Insert into Postjobs(CompanyName,Email,Vacancy,Skills,Address,MobileNo)values(?,?,?,?,?,?)");
					
			
			ps.setString(1, AddBean.getCompanyName());
			ps.setString(2, AddBean.getEmail());
			ps.setString(3, AddBean.getVacancy());
			ps.setString(4, AddBean.getSkills());
			ps.setString(5, AddBean.getAddress());
			ps.setString(6, AddBean.getMobileNo());
			
			status = ps.executeUpdate();
			return "success";
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return "unsuccess";
		
	}
}
			
			
			
			
			
			
			
			
			
			
