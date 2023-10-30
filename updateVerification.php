<?php
// Database configuration
$server = "localhost";
$username = "root";
$password = "";
$database = "audit_trailing";

// Create a connection
$conn = new mysqli($server, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['evidenceNumber'], $_POST['verificationStatus'])) {
    $evidenceNumber = $_POST['evidenceNumber'];
    $verificationStatus = $_POST['verificationStatus'];

    // Prepare and execute the SQL statement with a prepared statement
    $stmt = $conn->prepare("UPDATE evidence SET verification = ? WHERE evidenceNumber = ?");
    $stmt->bind_param("ii", $verificationStatus, $evidenceNumber);

    if ($stmt->execute()) {
        echo 'success';
    } else {
        echo 'Database update failed: ' . $stmt->error;
    }

    $stmt->close();
} else {
    echo 'Invalid POST data.';
}
?>
