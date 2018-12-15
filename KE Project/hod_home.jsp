<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    PA Student - HOME
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="./assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />
  <link href="./assets/css/bootstrap-select.css" rel="stylesheet" />
  
  
  
</head>
<body>


<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>


<%
	
	
	
	//jdbc logic section

		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pa_database","root","");
		Statement stmt = conn.createStatement();
		
		String dept=request.getParameter("dept");
		String date=request.getParameter("date");
		date=date.substring(0,11);
		
		ResultSet letters=null;
		
		
		if(request.getParameter("search")!=null)
		{
			letters = stmt.executeQuery("Select type,subject,id from letters where status='Pending' and dept='"+dept+"' and date='"+date+"'");
		}
		%>
		
		<div class="table-responsive">          
			<table class="table">
				<thead>
					<tr>
						<th>S.No</th>
						<th>ID</th>
						<th>Type</th>
						<th>Subject</th>
						<th>Applied_on</th>
					</tr>
				</thead>
				<tbody>
			<%
				int sno=1;
				while(letters.next()){
					
					out.print("<tr>");	
						out.print("<td>"+sno+"</td>");
						out.print("<td>"+letters.getString(3)+"</td>");
						sno++;
						if(letters.getString(1).equals("pl"))
							out.print("<td>Permission Letter</td>");
						else if(letters.getString(1).equals("gp"))
							out.print("<td>Gate Pass</td>");
						out.print("<td><a href='letter_view_hod.jsp?id="+letters.getString(3)+"&subject="+letters.getString(2)+"&date="+date+"&type="+letters.getString(1)+"' target='_blank'>"+letters.getString(2)+"</a></td>");
						out.print("<td>"+date+"</td>");								
					out.print("</tr>");}
					
				%>
				</tbody>
			</table>
		</div>
		
		
		
		
		
		
		
<%	
	stmt.close();
	conn.close();
%>



<!--   Core JS Files   -->
  <script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="./assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="./assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--	Plugin for Sharrre btn -->
  <script src="./assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/material-kit.js?v=2.0.4" type="text/javascript"></script>
  <script src="./assets/js/bootstrap-select.js" type="text/javascript"></script>

</body>
</html>