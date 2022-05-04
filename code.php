<?php 
error_reporting(0);
$conn=mysqli_connect("localhost","root","","test");

require_once('plugin/php-excel-reader/excel_reader2.php');
require_once('plugin/SpreadsheetReader.php');

if (isset($_POST["import"]))
{
$allowedFileType = ['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];
if(in_array($_FILES["file"]["type"],$allowedFileType)){

	// is uploaded file
	 $targetPath = 'uploads/'.$_FILES['file']['name'];
        move_uploaded_file($_FILES['file']['tmp_name'], $targetPath);

        // end is uploaded file

        $Reader = new SpreadsheetReader($targetPath);
        
        $sheetCount = count($Reader->sheets());
		
		
		
        for($i=0;$i<$sheetCount;$i++)
        {
           $Reader->ChangeSheet($i);

           foreach ($Reader as $Row)
            {
                $name = "";
                if(isset($Row[0])) {
                    $name = mysqli_real_escape_string($conn,$Row[0]);
                }


                     $sure = "";
                if(isset($Row[1])) {
                    $sure = mysqli_real_escape_string($conn,$Row[1]);
                }
				
				
                     $asses = "";
                if(isset($Row[2])) {
                    $asses = mysqli_real_escape_string($conn,$Row[2]);
                }
				
				
				
				
				
                     $assestwo = "";
                if(isset($Row[3])) {
                    $assestwo = mysqli_real_escape_string($conn,$Row[3]);
                }
				
				
				
				
                     $assesthree = "";
                if(isset($Row[4])) {
                    $assesthree = mysqli_real_escape_string($conn,$Row[4]);
                }
				
				
				
				
				
				
                if (!empty($name) || !empty($sure) || !empty($asses)  || !empty($assestwo)  || !empty($assesthree)) {
                    $query = "insert into student(name,surename,assessement_one,assessement_two,assessement_three) values('".$name."','".$sure."','".$asses."','".$assestwo."','".$assesthree."')";
                    $result = mysqli_query($conn, $query);
                
                    if ($result) {
                        
						header("location:db.php");
						$type = "success";
                        $message = "Excel Data Imported into the Database";
                    } else {
                        $type = "error";
                        $message = "Problem in Importing Excel Data";
                    }
                }


            }

        }
        echo "<script>alert('done')</script>";
        


}
else
  { 
        $type = "error";
        $message = "Invalid File Type. Upload Excel File.";
  }

}

 ?>
 
 