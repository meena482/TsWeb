package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Postjobs;
import Dao.PostjobsDao;




@WebServlet(urlPatterns="/jobs" ,name="PostjobsServlet") 
public class PostjobsServlet extends HttpServlet

{

public PostjobsServlet() {
 }

protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
{
														//getting value for registration of in html details
	try {
		
		String CompanyName = request.getParameter("CompanyName");
        String Email = request.getParameter("Email");
		String Vacancy = request.getParameter("Vacancy");
		String Skills= request.getParameter("Skills");
		String Address= request.getParameter("Address");
		String MobileNo= request.getParameter("MobileNo");
		
		
		System.out.println("11111111111");
		Postjobs ConfirmBean = new Postjobs();
		ConfirmBean.setCompanyName(CompanyName);
		ConfirmBean.setEmail(Email);
		ConfirmBean.setVacancy(Vacancy);
		ConfirmBean.setSkills(Skills);
		ConfirmBean.setAddress(Address);
		ConfirmBean.setMobileNo(MobileNo);
		
		
		
		System.out.println("22222");
		PostjobsDao adddao=new PostjobsDao();
		String validation = adddao.authenticateUser(ConfirmBean);
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
	


