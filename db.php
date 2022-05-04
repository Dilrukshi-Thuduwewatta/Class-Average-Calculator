


<html>
<head>
<style>






.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;


}












.table{
	
	margin-left:200px;
	font-weight:bold;
	
	
}


.table tbody tr :nth-of-type(even){
background-color:#dddddd;
	
}



.table tbody tr :nth-of-type(odd){
background-color:#f3f3f3;
	
}

.table-head{
	color:red;
}


.table tbody tr{
	border bottom: 1px solid #f3f3f3;
}



h1{
	
	margin-left:250px;
	font-style:tahoma;
	
}


#one{
	width:300px;
	height:100px;
	border:px gray solid;
	float:left
	
	
}




#two{
	width:300px;
	height:100px;
	border:px gray solid;
	float:left;
	
	
}




#three{
	width:300px;
	height:100px;
	border:px gray solid;
	float:left;
	
}
</style>
</head>
<body>





<div class="topnav">
  <a class="active" href="index.php"><<<</a>
    <a href="j.php">Convert To json</a>


</div>






<table class="table">
<tr>
<td>Name</td>
<td>Sure_name</td>
<td>First_assessemnt</td>
<td>Seound_assessment</td>
<td>Third_assessement</td>

</tr>


<?php

$username = "root";
$password = "";
$database = "test";
$mysqli = new mysqli("localhost", $username, $password, $database);

$query = "SELECT * FROM student";


$result=$mysqli->query($query);
if($result->num_rows > 0){
	
	while($row=$result->fetch_assoc()){
		
		
		if($row<0){
			echo"minus values are not allowed ";
		}else{
		
		
		
		
		
		echo "<tr><td>".$row['name']."</td>"."<td>".$row['surename']."</td>"."<td>".$row['assessement_one']."</td>"."<td>".$row['assessement_two']."</td>"."<td>".$row['assessement_three']."</td></tr>";;;;
		 
		}
	}
	
	
	
	
}
else {
		echo"No data to shown";
		
		}
	


?>
</table>


<h1>AVARAGE CALCULATION</h1>


<div id="one">

<?php

$con=mysqli_connect("localhost","root","","test");
	if(!$con){
		
		echo "could not connected";
		
	}
	
	
	$query="select AVG(assessement_one) AS avg from my;";
	
	$result=mysqli_query($con,$query);
	
		if(!$result){
			
			echo "error occur";
		}else{
			
			
			while($row=mysqli_fetch_assoc($result)){
				
				
				$out="avarage of first assesment is:"."".$row['avg'];
			}
				
				
			
			
		}
	
echo $out;
	
	
?>
</div>






<div id="two">


<?php

$con=mysqli_connect("localhost","root","","test");
	if(!$con){
		
		echo "could not connected";
		
	}
	
	
	$query="select AVG(assessement_two) AS avg from my1 ;";
	
	$result=mysqli_query($con,$query);
	
		if(!$result){
			
			echo "error occur";
		}else{
			
			
			while($row=mysqli_fetch_assoc($result)){
				
				
				$out="avarage of second assesment is:"."".$row['avg'];
			}
				
				
			
			
		}
	
echo $out;
	
	
?>



</div>




<div id="three">



<?php

$con=mysqli_connect("localhost","root","","test");
	if(!$con){
		
		echo "could not connected";
		
	}
	
	
	$query="select AVG(assessement_three) AS avg from my2 ;";
	
	$result=mysqli_query($con,$query);
	
		if(!$result){
			
			echo "error occur";
		}else{
			
			
			while($row=mysqli_fetch_assoc($result)){
				
				
				$out="avarage of third assesment is:"."".$row['avg'];
			}
				
				
			
			
		}
	
echo $out;
	
	
?>



</div>

</body>
</html>











