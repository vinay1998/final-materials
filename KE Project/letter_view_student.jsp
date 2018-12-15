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


<form action='status_change.jsp' target="_self">
<div class="container ">
<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>




<%
	//jdbc logic section

		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pa_database","root","");
		Statement stmt = conn.createStatement();
		Statement stmt2 = conn.createStatement();
		
		String id=request.getParameter("id");
		String type=request.getParameter("type");
		String date=request.getParameter("date");
		String subject=request.getParameter("subject");
		
		ResultSet reason=stmt.executeQuery("Select dept,reason from letters where id='"+id+"' and type='"+type+"' and date='"+date+"' and subject='"+subject+"'");
		ResultSet student_details=stmt2.executeQuery("Select name from login where id='"+id+"'");
		
		reason.next();
		student_details.next();
		out.print("<br/><br/><br/>");
		if(type.equals("pl"))
			out.print("<b>Purpose:</b>Permission Letter<br/>");
		else if(type.equals("gp"))
			out.print("<b>Purpose:</b>Gate Pass<br/>");
		out.print("<b>Date:</b>"+date+"<br/><br/>");
		
		
		out.print("<b>From,</b><br/>");
		out.print("<b>Name:</b>"+student_details.getString(1)+",<br/>");
		out.print("<b>Id:</b>"+id+",<br/>");
		out.print("<b>Dept:</b>"+reason.getString(1)+".<br/><br/>");
		
		
		out.print("<b>To,</b><br/>");
		out.print("<b>The Head of the Department,</b><br/>");
		out.print("<b>VNR Vignana Jyothi Institute of Engoneering and Technology,</b><br/>");
		out.print("<b>Bachupally,</b><br/>");
		out.print("<b>Hyderabad.</b><br/><br/>");
		
		out.print("<b>Respected Sir/Madam,</b><br/><br/>");
		
		out.print("<b>Subject:"+subject+".</b><br/><br/>");
		out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+reason.getString(2)+".<br/><br/>");
		
		out.print("<b>Yours Sincerely,<br/>");
		out.print("<b>"+student_details.getString(1)+".</b><br/>");
		
		out.print("<input hidden type='text' id='id' name='id' class='form-control' value='"+id+"'>");
		out.print("<input hidden type='text' id='subject' name='subject' class='form-control' value='"+subject+"'>");
		out.print("<input hidden type='text' id='date' name='date' class='form-control' value='"+date+"'>");
	
		%>
		
		</div>
		</form>
		
		
		
		
		
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