<?php
// Your database connection code here

if (isset($_POST['evidenceNumber'], $_POST['verificationStatus'])) {
    $evidenceNumber = $_POST['evidenceNumber'];
    $verificationStatus = $_POST['verificationStatus'];

    // Perform the database update here, e.g., using SQL
    $query = "UPDATE evidence SET verification = '$verificationStatus' WHERE evidenceNumber = '$evidenceNumber'";

    if ($conn->query($query) === TRUE) {
        echo 'success';
    } else {
        echo 'Database update failed: ' . $conn->error;
    }
} else {
    echo 'Invalid POST data.';
}
?>
