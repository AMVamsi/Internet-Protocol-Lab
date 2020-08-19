<!DocType html>
<html>
<head>
<style>
    .error {color: #FF0000;}
 </style>
</head>
<body>
<h2>Student Registration</h2>

<?php

$nameErr = $emailErr = $regnoErr = "";
$name = $email = $regno = "";
 $error = 0;
          
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
$name = $_POST["name"];
$email = $_POST["email"];
$regno = $_POST["regno"];

if (empty(trim($name))) 
           {
               	   $nameErr = "Name field should not be empty"; 
              	   $error =  1;
           }
            elseif(!preg_match("/^([a-zA-Z' ]+)$/",$name))
           {
	   $nameErr = "Name contain invalid characters"; 
               	    $error =  1;
	}
           if (!preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/", 
                                                                                                      $email)) 
           {
                  $emailErr = "Invalid Email"; 
                  $error =  1;
            }
            if (!preg_match("/^[0-9]{12}$/", $regno))
            {
                  $regnoErr = "Reg No must contain 12 digits"; 
                   $error =  1;
             }
            if($error==0)
           {
$servername = "localhost:3306"; //specify the port no. for mysql
$database = "student";
$username = "root";
$password = "";
$conn = mysqli_connect($servername, $username, $password, $database);
  if (!$conn) 
   	      	die("Connection failed: " . mysqli_connect_error());
		$sql = "INSERT INTO Student (name, regno, email) VALUES 
('$name', '$regno','$email')"; 
   		if (mysqli_query($conn, $sql)) 
   	      		echo "New record created successfully";
   		else 
   	     	echo "Error: " . $sql . "<br>" . mysqli_error($conn);  
  		mysqli_close($conn);
             }
        }
    ?>
<pre>
<form method = "post">
Name:  
<input type = "text" name = "name">
 <span class = "error">* <?php echo $nameErr;?></span>
E-mail: 
<input type = "text" name = "email" size=40> 
<span class = "error">* <?php echo $emailErr;?></span>
Register Number(12 digits):
<input type = "text" name = "regno"> 
<span class = "error">* <?php echo $regnoErr;?></span>
<input type = "submit">
</form>
</body>
</html>
