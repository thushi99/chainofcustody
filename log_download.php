<?php
session_start();
require_once('DBConnection.php');

if (!isset($_SESSION['id']) || $_SESSION['id'] <= 0) {
    // Redirect to the login page or display an error message
    header("Location: ./login.php");
    exit; // Terminate script execution
}

// Get the file identifier from the query parameter (e.g., file ID or file name)
if (isset($_GET['file_id'])) {
    $fileID = $_GET['file_id'];

    // Create a connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check for connection errors
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve the username from the session
    $staffUser = $_SESSION['username'];

    // Update the download count in the database for the specific file
    $updateDownloadCountSql = "UPDATE evidence SET downloadCount = downloadCount + 1, lastDownloadedBy = ? WHERE fileID = ?";
    $stmt = $conn->prepare($updateDownloadCountSql);

    // Bind parameters
    $stmt->bind_param("si", $staffUser, $fileID);

    if ($stmt->execute()) {
        // Perform the file download here
        // You can use headers to force the download of the file
        // Example: header('Content-Disposition: attachment; filename="filename.ext"');
        // Example: readfile($file_path);

        // Log the download action
        $downloadAction = "Downloaded file with ID: " . $fileID;
        $currentDateTime = date("Y-m-d H:i:s");

        // Insert a log entry for the download action
        $logSql = "INSERT INTO logs (user_id, action_made, date_created) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($logSql);

        // Bind parameters
        $stmt->bind_param("iss", $_SESSION['id'], $downloadAction, $currentDateTime);

        if ($stmt->execute()) {
            // The download action and download count have been logged
        } else {
            // Handle any error that occurs during the logging process
            echo 'Error logging download action: ' . $stmt->error;
        }

        // Close the prepared statement
        $stmt->close();
    } else {
        echo 'Error updating download count: ' . $stmt->error;
    }

    // Close the database connection
    $conn->close();
}
