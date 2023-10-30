<?php
// Start the session to access user information
session_start();

// Define the directory where your files are stored
$targetDirectory = 'uploads/'; // Change this to the directory where your files are stored

// Check if the user is logged in
if (!isset($_SESSION['id']) || $_SESSION['id'] <= 0) {
    echo 'You must be logged in to download files.';
    exit;
}

// Get the file name from the URL parameter 'file'
if (isset($_GET['file'])) {
    $fileName = basename($_GET['file']);
    $filePath = $targetDirectory . $fileName;

    // Check if the file exists
    if (file_exists($filePath)) {
        // Set the appropriate headers for the download
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');
        header('Content-Length: ' . filesize($filePath));

        // Output the file content
        readfile($filePath);

        // Log the download action after successfully serving the file
        $user_id = $_SESSION['id'];
        $action_made = $_SESSION['username'] . ' downloaded "' . $fileName . '"';
        $datecreated = date('Y-m-d H:i:s');

        // Create a database connection (modify these settings as needed)
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "your_database_name";

        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            echo 'Database connection failed: ' . $conn->connect_error;
            exit;
        }

        // Insert the download log entry into the "logs" table
        $sql = "INSERT INTO logs (user_id, action_made, datecreated) VALUES ('$user_id', '$action_made', '$datecreated')";

        if ($conn->query($sql) === TRUE) {
            // Successfully logged the download action
            // Retrieve the username of the user who downloaded the file
            $downloaded_by = $_SESSION['username'];
            // Display the downloaded file name and user
            echo 'File "' . $fileName . '" downloaded by ' . $downloaded_by;
        } else {
            echo 'Error logging the download action: ' . $conn->error;
        }

        exit;
    } else {
        echo 'File not found.';
    }
} else {
    echo 'Invalid request.';
}
?>
