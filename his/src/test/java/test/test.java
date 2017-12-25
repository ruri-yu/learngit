package test;
import java.sql.*;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection ct = null;
		   Statement sm = null;
		   ResultSet rs = null;
		   try {
		    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    ct = DriverManager.getConnection("jdbc:sqlserver://localhost;database=WINMZGL;","sa","123");
		    sm = ct.createStatement();
		    rs = sm.executeQuery("select * from GHao_gh");
		    while(rs.next()) {
		     System.out.println(rs.getString(1));
		    }
		   }catch (Exception e) {
		    e.printStackTrace();
		   }finally {
		    try {
		     if(rs != null) {
		      rs.close();
		      rs = null;
		     }
		     if(sm != null) {
		      sm.close();
		      sm = null;
		     }
		     if(ct != null) {
		      ct.close();
		      ct = null;
		     }
		    }catch (Exception e) {
		     e.printStackTrace();
		    }
		   }
	}

}
