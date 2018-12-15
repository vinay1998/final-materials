<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  
  
  
  <title>
    project title
  </title>
  
  
  
  <!-- CSS Files -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="./assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />
  <link href="./assets/css/bootstrap-select.css" rel="stylesheet" />
  
</head>
<body>

<?php
	
	//------------------------------------------------------------------------------------------------------------------------------------
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
	//------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	//select query ---> returns values
	$result = $conn->query(" select * from stable  ");

	if ($result->num_rows > 0) {
?>






<!-- ------------------------------------------------------------- html section -------------------------------------------------------------------------  -->
	<div class="container table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>username</th>
					<th>password</th>
					<th>email</th>	
				</tr>
			</thead>
			<tbody>


<!--
	if ($result->num_rows > 0)
	{
		while($row = $result->fetch_assoc()) 
		{
			echo "<tr><td>".$row["uname"]."</td><td>".$row["upass"]."</td><td>".$row["emailid"]."</td></tr><br/>";
		}
		echo "</tbody></table></div>";
	} 
	else 
	{
		echo "0 results";
	}
-->


			
<?php
	while($row = $result->fetch_assoc()) 
	{
		echo "<tr><td>".$row["uname"]."</td><td>".$row["upass"]."</td><td>".$row["emailid"]."</td></tr><br/>";
	}
		
	echo "</tbody></table></div>";
	} else {
		echo "0 results";
	}

	$conn->close();
?>



</body>
</html>