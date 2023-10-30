<?php
session_start();
require_once('DBConnection.php');

if (!isset($_SESSION['id']) || $_SESSION['id'] <= 0) {
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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve the POST data
    $evidenceNumber = $_POST['evidenceNumber'];
    $verificationStatus = $_POST['verificationStatus'];

    // Connect to your database
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        echo "Connection failed: " . $conn->connect_error;
    } else {
        // Construct the verification log message
        $logMessage = "Verification status updated to ";
        $logMessage .= ($verificationStatus == 1) ? "Verified" : "Not Verified";

        // Insert the log entry into the database
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
?>
