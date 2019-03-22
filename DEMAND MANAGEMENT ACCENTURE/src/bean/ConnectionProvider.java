package bean;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	private static Connection con=null;

	static {
	
	}
	
	
	public static Connection getCon()
	{
		try
		{
			System.out.println("in try block");
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "admin");
			System.out.println("IN CONNECTION"+con);
			System.out.println("IN CONNECTION");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}

}
