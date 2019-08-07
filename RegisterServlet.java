
	package Controller;

	import java.io.IOException;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;

	import javax.servlet.http.HttpServletRequest;

	import javax.servlet.http.HttpServletResponse;

	import Bean.CompanyRegistration;
	import Connect.DBConnection;

	import Dao.CompanyRegistrationDao;

	@WebServlet( urlPatterns = "/CompanyLogin",name = "RegisterServlet")

	public class RegisterServlet extends HttpServlet

	{

		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
																//getting value for registration of customer details
			String CompanyId = request.getParameter("CompanyId");
			
			String CompanyName= request.getParameter("CompanyName");
			
			String Email= request.getParameter("Email");
			
			String Password = request.getParameter("Password");
			
			String ConfirmPassword = request.getParameter("ConfirmPassword");
			
			String City= request.getParameter("City");

			
			String MobileNumber = request.getParameter("MobileNumber");
			
			String Address= request.getParameter("Address");

			CompanyRegistration CustomerRegistration = new CompanyRegistration(); //setting values to CustomerRegisterationBean

			CustomerRegistration.setCompanyId(CompanyId);
			
			CustomerRegistration.setCompanyName(CompanyName);
			
			CustomerRegistration.setEmail(Email);
			
			CustomerRegistration.setPassword(Password);
			
			CustomerRegistration.setConfirmPassword(ConfirmPassword);
			
			CustomerRegistration.setCity(City);
			
			
			CustomerRegistration.setMobileNumber(MobileNumber);
			
			CustomerRegistration.setAddress(Address);

			CompanyRegistrationDao CustomerRegistrationDao = new CompanyRegistrationDao(); //getting result from CustomerRegistrationDao

			int userValidate = CustomerRegistrationDao.Registration(CustomerRegistration);

			if (userValidate > 0) 
			{

				request.setAttribute("subscribedd", true);

				request.getRequestDispatcher("/CompanyLogin.jsp").forward(request, response);
				System.out.println("sddsfd");

			} 
			else 
			{

				request.setAttribute("subscribedd", false);

				request.getRequestDispatcher("/CompanyRegistration.jsp").forward(request, response);
			}
		}

	}
