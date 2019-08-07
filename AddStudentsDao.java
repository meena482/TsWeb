package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.ParseException;

import Bean.AddStudents;
import Connect.DBConnection;





public class AddStudentsDao {

	public  String authenticateUser(AddStudents AddBean)
	{
		int status = 0;
		
		String StudentId = AddBean.getStudentId();
		
		String StudentName = AddBean.getStudentName();
		String Password = AddBean.getPassword();
		String CollegeName = AddBean.getCollegeName();
		String Course= AddBean.getCourse();
		String Branch = AddBean.getBranch();
		String YearOfPassing = AddBean.getYearOfPassing();
		String CPGA = AddBean.getCPGA();
		String Skills= AddBean.getSkills();
		String City= AddBean.getCity();
		String State = AddBean.getState();
		String Email = AddBean.getEmail();
		String Gender = AddBean.getGender();
		String DOB= AddBean.getDOB();
		String PermanentAddress= AddBean.getPermanentAddress();
		String MobileNo = AddBean.getMobileNo();
		
		
		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("Insert into studentdetails(StudentId,StudentName, Password,CollegeName,Course,Branch,YearOfPassing,CPGA,Skills,City,State,Email,Gender,DOB,PermanentAddress,MobileNo)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					
			
			ps.setString(1, AddBean.getStudentId());
			ps.setString(2, AddBean.getStudentName());
			ps.setString(3, AddBean.getPassword());
			ps.setString(4, AddBean.getCollegeName());
			ps.setString(5, AddBean.getCourse());
			ps.setString(6, AddBean.getBranch());
            ps.setString(7, AddBean.getYearOfPassing());
			ps.setString(8, AddBean.getCPGA());
			ps.setString(9, AddBean.getSkills());
			ps.setString(10, AddBean.getCity());
			ps.setString(11, AddBean.getState());
			ps.setString(12, AddBean.getEmail());
			ps.setString(13, AddBean.getGender());
			ps.setString(14, AddBean.getDOB());
			ps.setString(15, AddBean.getPermanentAddress());
			ps.setString(16, AddBean.getMobileNo());
			
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
			
			
			
			
			
			
			
			
			
			
