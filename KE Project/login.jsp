
<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>
<%
	
	String id=request.getParameter("uid");
	String pwd=request.getParameter("pwd");
	
	//jdbc logic section

		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pa_database","root","");
		Statement stmt = conn.createStatement();
		ResultSet login_details = stmt.executeQuery("Select password from login where id='"+id+"'");
		
		if(login_details.next())
		{
			if(login_details.getString(1).equals(pwd))
			{
				request.getSession().setAttribute("user_id",id);
				if(id.equals("hod"))
					response.sendRedirect("hod_home.html");
				else if(id.equals("faculty"))
					response.sendRedirect("faculty_home.html");
				else if(id.equals("security"))
					response.sendRedirect("security_home.html");
				else if(id.equals("1226") || id.equals("1230"))
					response.sendRedirect("student_home.html");
			}
			else{
				out.print("<h4>Invalid Login Details</h4>");
			}
		}
		else
		{
			out.print("<h4>User not Registered.Contact Administrator"+id+"</h4>");
		}
		
		
		
		stmt.close();
		conn.close();
%>