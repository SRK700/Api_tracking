<?php
include './conn.php';

// Ensure the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    header("Access-Control-Allow-Origin: *");
    $xok = 401;

    // Get user input
    $imei_no = mysqli_real_escape_string($conn, $_POST['imei_no']);
    $device_name = mysqli_real_escape_string($conn, $_POST['device_name']);

    // Check if the input values are not empty
    if (!empty($imei_no) && !empty($device_name)) {
        // Prepare and execute the SQL query
        $stmt = mysqli_prepare($conn, "SELECT * FROM tb_device WHERE imei_no = ? AND device_name = ?");
        mysqli_stmt_bind_param($stmt, "ss", $imei_no, $device_name);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        // Check if the query was successful
        if ($result) {
            $output = array();

            // Fetch results
            while ($row = mysqli_fetch_assoc($result)) {
                $output[] = $row;
                $xok = 200;
            }

            // Send response code and JSON data
            http_response_code($xok);
            echo json_encode($output);
        } else {
            // Send error response code
            http_response_code(500);
            echo json_encode(array("message" => "Internal Server Error"));
        }

        // Close prepared statement
        mysqli_stmt_close($stmt);
    } else {
        // Send validation error response code
        http_response_code(422); // Unprocessable Entity
        echo json_encode(array("message" => "Invalid input values"));
    }

    // Close database connection
    mysqli_close($conn);
} else {
    // Invalid request method
    http_response_code(405); // Method Not Allowed
    echo json_encode(array("message" => "Invalid Request Method"));
}
