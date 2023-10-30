<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "audit_trailing";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get user details from the form
$caseid = $_POST["caseID"];
$evidencename = $_POST["evidenceName"];
$fingerprint = $_POST["fingerprint"];
$recoveredfrom = $_POST["recoveredFrom"];
$assignedOfficer = $_POST["assignedOfficer"];

// Handle file upload
$targetDirectory = "uploads/";
$targetFile = $targetDirectory . basename($_FILES["profile_picture"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

// Check if image file is an actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["profile_picture"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}

// Check file size (adjust the size limit as needed)
if ($_FILES["profile_picture"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Allow certain file formats (you can customize this)
$allowedFormats = array("jpg", "jpeg", "png", "gif");
// if(!in_array($imageFileType, $allowedFormats)) {
//     echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
//     $uploadOk = 0;
// }

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["profile_picture"]["tmp_name"], $targetFile)) {
        echo "The file ". htmlspecialchars(basename($_FILES["profile_picture"]["name"])). " has been uploaded.";
        
        // Insert user details and file path into the database
        $sql = "INSERT INTO users (caseID, evidenceName, fingerPrint, recoveredFrom, assignedOfficer) VALUES ('$caseid', '$evidencename', '$fingerprint', '$recoveredfrom', '$assignedOfficer')";
        
        if ($conn->query($sql) === TRUE) {
            echo "Upload successful!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

// Close the database connection
$conn->close();
?>
