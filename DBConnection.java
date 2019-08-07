package Connect;



	import java.sql.Connection;



	import java.sql.DriverManager;

	public class DBConnection 
	{
		
		public static Connection createConnection() 
		{
			
			Connection con = null;
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			String Username = "system"; // Database Username.
			
			String Password = "123";   // Database password.

	   try {
				
		   	try {
					
					Class.forName("oracle.jdbc.driver.OracleDriver"); // loading Oracle driver
					
				} 
				
				catch (ClassNotFoundException e) 
		   		{
					
					e.printStackTrace();
				}
		   	
				con = DriverManager.getConnection(url, Username, Password); // attempting to connect to MySQL database
				
				
			} 
			
			catch (Exception e) 
			
			{
				
				e.printStackTrace();
				
			}
			
			return con;
		}
		
	}


