package Controller;

import java.io.IOException;

import Connect.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import Bean.CompanyRegistration;
import Dao.CompanyRegistrationDao;

@WebServlet( urlPatterns = "/login",name = "LoginServlet")
public class LoginServlet extends HttpServlet

{
	private static final long serialVersionUID = 1L;

	private static final CompanyRegistration CustomerRegistration = null;

	String Email = "";
	
	String Password = "";


	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	
	{

		Email = request.getParameter("Email");
		
		Password = request.getParameter("Password");

		setAttributes(request, response);

		CompanyRegistration CustomerRegisteration = new CompanyRegistration(); // setting the value to CustomerRegisterationBean

		CustomerRegisteration.setEmail(Email);
		
		CustomerRegisteration.setPassword(Password);

		CompanyRegistrationDao CustomerRegistrationDao = new CompanyRegistrationDao();

		String userValidate = CustomerRegistrationDao.authenticateUser(CustomerRegistration); //Get result from CustomerRegistrationDao to forward the page

		if (userValidate.equals("SUCCESS")) 
			
		{
			request.setAttribute("subscribed", true);

			request.getRequestDispatcher("/CompanyHomePage.jsp").forward(request, response);

		} 
		else 
		{

			request.setAttribute("subscribed", false);

			request.getRequestDispatcher("/CompanyLogin.jsp").forward(request, response);
		}
		
	}

	public void setAttributes(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	// including session for further use
	{
		HttpSession session = request.getSession();
		
		Email= request.getParameter("Email");
		
		Password = request.getParameter("Password");

		session.setAttribute("EMAIL", Email);
		
		session.setAttribute("PASSWORD", Password);

	}

}
