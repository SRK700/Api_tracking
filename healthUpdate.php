<?php
include 'conn.php';
header("Access-Control-Allow-Origin: *");

// Check if the required keys are present in the $_POST array
if (
    isset($_POST['id_card'], $_POST['titlename'], $_POST['firstname'],
    $_POST['lastname'], $_POST['date_of_birth'], $_POST['heart_value'], $_POST['pulse_value'])
) {
    $id_card = $_POST['id_card'];
    $titlename = $_POST['titlename'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $date_of_birth = $_POST['date_of_birth'];
    $heart_value = $_POST['heart_value'];
    $pulse_value = $_POST['pulse_value'];

    $xok = 401;

    // Ensure that the table name is correct in your database
    $stmt = mysqli_prepare($conn, "UPDATE health_db SET titlename=?, firstname=?, lastname=?, date_of_birth=?, heart_value=?, pulse_value=? WHERE id_card=?");

    mysqli_stmt_bind_param($stmt, 'sssssss', $titlename, $firstname, $lastname, $date_of_birth, $heart_value, $pulse_value, $id_card);

    if (mysqli_stmt_execute($stmt)) {
        $xok = 200;
        echo "Data updated successfully";
    } else {
        echo "Failed to update data. " . mysqli_error($conn);
    }

    mysqli_stmt_close($stmt);
} else {
    echo "Missing required POST parameters.";
}

mysqli_close($conn);
?>
