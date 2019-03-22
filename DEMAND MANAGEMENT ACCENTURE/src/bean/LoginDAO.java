package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
	public static String name = null;
	
	public static boolean validate(LoginBean bean)
	{
		boolean check = true;
		System.out.println("IN LOGIN DAO");
		
		try {
			Connection con = ConnectionProvider.getCon();
			System.out.println("got connection"+con);
			PreparedStatement ps = con.prepareStatement("select * from users where EMAIL =? and PASS=?");
			ps.setString(1,bean.getEmail());
			ps.setString(2, bean.getPassword());
			
			
			
			System.out.println(bean.getEmail());
			System.out.println(bean.getPassword());
			System.out.println("printing data");
			
			ResultSet rs = ps.executeQuery();
			name ="Anuj";
			//check = rs.next();
			System.out.println(check);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return check;
		
	}

}
