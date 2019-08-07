package Controller;


	


	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

import Bean.AddStudents;
import Dao.AddStudentsDao;




@WebServlet(urlPatterns="/Add" ,name="AddExamServlet") 
public class AddStudentServlet extends HttpServlet

{

	public AddStudentServlet() {
	 }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
															//getting value for registration of in html details
		try {
			System.out.println("5555");
			String StudentId = request.getParameter("StudentId");
			System.out.println("hiihi");
			String StudentName = request.getParameter("StudentName");
            String Password= request.getParameter("Password");
			String CollegeName = request.getParameter("CollegeName");
			String Course = request.getParameter(" Course");
			String Branch = request.getParameter("Branch ");
			String YearOfPassing= request.getParameter("YearOfPassing");
			String CPGA = request.getParameter("CPGA");
			String Skills = request.getParameter(" Skills ");
            String City= request.getParameter("City");
			String State = request.getParameter("State");
			String Email = request.getParameter("Email ");
			String Gender = request.getParameter(" Gender ");
			String DOB= request.getParameter("DOB");
			String PermanentAddress= request.getParameter("PermanentAddress");
			String MobileNo= request.getParameter(" MobileNo");
			
			
			System.out.println("11111111111");
			AddStudents adminConfirmBean = new AddStudents();
			adminConfirmBean.setStudentId(StudentId);
			adminConfirmBean.setStudentName(StudentName);
			adminConfirmBean.setPassword(Password);
			adminConfirmBean.setCollegeName(CollegeName);
			adminConfirmBean.setCourse(Course);
			adminConfirmBean.setBranch(Branch);
			adminConfirmBean.setCPGA(CPGA);
			adminConfirmBean.setSkills(Skills);
			adminConfirmBean.setCity(City);
			adminConfirmBean.setState(State);
			adminConfirmBean.setEmail(Email);
			adminConfirmBean.setGender(Gender);
			adminConfirmBean.setDOB(DOB);
			adminConfirmBean.setPermanentAddress(PermanentAddress);
			adminConfirmBean.setMobileNo(MobileNo);
			
			
			System.out.println("22222");
			AddStudentsDao adddao=new AddStudentsDao();
			String validation = adddao.authenticateUser(adminConfirmBean);
			System.out.println("33333");
			if(validation =="")
			
			{ request.setAttribute("insert", true);
			request.getRequestDispatcher("index.html").forward(request, response);
			System.out.println("4444");
			}
			else
			{ request.setAttribute("insert", false);
			request.getRequestDispatcher("AddStudentDetails.jsp").forward(request, response);
			}
		}
			catch(Exception e)
			{
				
			
	
		}
	}

}
		


