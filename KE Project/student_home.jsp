
<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>


<%
	
	
	
	//jdbc logic section

		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pa_database","root","");
		Statement stmt = conn.createStatement();
		
		
		if(request.getParameter("pl_submit")!=null)
		{
			
				String id=request.getSession().getAttribute("user_id").toString();
				String dept=request.getParameter("pl_dept");
				String date=request.getParameter("pl_date");
				date=date.substring(0,11);
				String subject=request.getParameter("pl_subject");
				String reason=request.getParameter("pl_reason");
				
				stmt.executeUpdate("Insert into letters(id,dept,date,subject,reason,type,status) values('"+id+"','"+dept+"','"+date+"','"+subject+"','"+reason+"','pl','Pending')");
			
		}
		else if(request.getParameter("gp_submit")!=null)
		{
			
				String id=request.getSession().getAttribute("user_id").toString();
				String dept=request.getParameter("gp_dept");
				String date=request.getParameter("gp_date");
				date=date.substring(0,11);
				String subject=request.getParameter("gp_subject");
				String reason=request.getParameter("gp_reason");
				
				stmt.executeUpdate("Insert into letters(id,dept,date,subject,reason,type,status) values('"+id+"','"+dept+"','"+date+"','"+subject+"','"+reason+"','gp','Pending')");
			
		}
		else
		{
			out.print("<h4>Error Occur</h4>");
		}
		response.sendRedirect("student_home.html");
		
		
		
		stmt.close();
		conn.close();
%>