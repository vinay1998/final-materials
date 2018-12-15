<?php


	// how to read values from html form
	//note:check method="post" in html file
	//variable = $_POST["name"];
	$username_v = $_POST["input1"];
	$password_v = $_POST["input2"];
	$emailid_v = $_POST["input3"];
	
	
	

	// Create connection
	//note: change database_name
	$conn = mysqli_connect("localhost", "root", "", "database_name");
	
	
	
	
	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
	
	//insert query
	$conn->query(" insert into stable(uname,upass,emailid) values('".$username_v."','".$password_v."','".$emailid_v."');");
	
	
	
	//connection close
	$conn->close();
?>



<html>
	<head>
	</head>
	<body>
		<h3>inserted</h3>
		<form action="display.php" method="post">
		<input type="submit" name="submit2" value="display">
		</form>
	</body>
</html>