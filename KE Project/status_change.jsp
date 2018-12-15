
<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>


<%
	
	
	
	//jdbc logic section

		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pa_database","root","");
		Statement stmt = conn.createStatement();
		
		String id=request.getParameter("id");
		String subject=request.getParameter("subject");
		String date=request.getParameter("date");
		
		
		if(request.getParameter("grant")!=null)
		{
			
			stmt.executeUpdate("UPDATE letters SET status = 'Granted' WHERE id='"+id+"' and subject='"+subject+"' and date='"+date+"'");

		}
		else if(request.getParameter("reject")!=null)
		{
			stmt.executeUpdate("UPDATE letters SET status = 'Rejected' WHERE id='"+id+"' and subject='"+subject+"' and date='"+date+"'");
		}
		else
		{
			out.print("<h4>Error Occur</h4>");
		}
		out.print("Status Successfully Updated");
		
		
		stmt.close();
		conn.close();
%>