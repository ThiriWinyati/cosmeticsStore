<?php
session_start(); // Start a session to store user data

$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "cosmetics_store";

// Enable error reporting for MySQLi
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_name = $conn->real_escape_string($_POST['username']); // Inputted username
    $plain_password = $_POST['password']; // Inputted plain text password

    // Query to check if the user exists
    $sql = "SELECT * FROM customers WHERE Name = '$user_name'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();

        // Verify the password
        if (password_verify($plain_password, $user['Password'])) {
            // Store the user's name in the session
            $_SESSION['user_logged_in'] = true;
            $_SESSION['username'] = $user['Name']; // Store the user's name
            
            // Update the last login time
            $updateLoginTime = "UPDATE customers SET LastLogin_time = NOW() WHERE Name = '$user_name'";
            if ($conn->query($updateLoginTime) === TRUE) {
                // Redirect to the user's home page or dashboard
                header("Location: user_homeIndex.php");
                exit();
            } else {
                echo "Error updating login time: " . $conn->error;
            }
        } else {
            // Password does not match
            echo "Incorrect password. Please try again.";
        }
    } else {
        // No account found for this username
        echo "No account found with this username. Please sign up.";
    }
}

$conn->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="icon" href="path/to/favicon.ico">
    <title>LogIn Page</title>
</head>
<body>
<div class="signin-container">
    <div class="signin-card">
        <div class="signin-card-header">
            <h2>Sign In</h2>
        </div>
        <div class="signin-card-body">
            <form action="user_login.php" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="signin-btn">Sign In</button>
            </form>
        </div>
        <div class="signin-card-footer">
            <p>Don't have an account? <a href="/frontEnd/user_signup.php">Sign up here</a></p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
