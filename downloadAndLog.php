<?php

session_start();
require_once('DBConnection.php');

if (!isset($_SESSION['id']) || $_SESSION['id'] <= 0) 
{
    // Redirect to the login page or display an error message
    header("Location: ./login.php");
    exit; // Terminate script execution
}

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "audit_trailing";

// Initialize variables for file upload
$targetDirectory = "uploads/";
$targetFile = "";
$uploadOk = 1;
$FileType = "";
$alerts = array(); // Store alerts for later display

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve the POST data
    $downloadLink = $_POST['downloadLink'];
    $evidenceName = $_POST['evidenceName'];
    $evidenceLocation = $_POST['imagePath'];
    $caseid = $_POST['caseid'];

    // Connect to your database (you should define your database connection here)
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        echo "Connection failed: " . $conn->connect_error;
    } else {
        // Perform the download operation (you should define your download logic here)
        // Example: You might use headers and file_get_contents to send the file to the user
        // You should define the appropriate file path based on the downloadLink
        // ...

        // Create a log entry
        $logMessage = "Downloaded '" . $evidenceName . "' from location '" . $evidenceLocation . "'";
        $logSql = "INSERT INTO logs (user_id, action_made) VALUES (?, ?)";
        $stmt = $conn->prepare($logSql);

        if ($stmt) {
            // Bind parameters
            $stmt->bind_param("is", $_SESSION['id'], $logMessage);
            if ($stmt->execute()) {
                echo "success";
            } else {
                echo "Error inserting log data: " . $stmt->error;
            }
            // Close the prepared statement
            $stmt->close();
        } else {
            echo "Error preparing the log statement: " . $conn->error;
        }

        // Close the database connection
        $conn->close();
    }
} else {
    echo "Invalid request";
}
