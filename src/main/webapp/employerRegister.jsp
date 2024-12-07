<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            text-align: center;
            color: #333333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 14px;
        }
        input:focus {
            border-color: #007bff;
            outline: none;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-bottom: -10px;
        }
    </style>
    <script>
        function validateForm() {
            const empid = document.forms["registrationForm"]["empid"].value;
            const email = document.forms["registrationForm"]["mail"].value;
            const password = document.forms["registrationForm"]["password"].value;
            const confirmPassword = document.forms["registrationForm"]["confirmPassword"].value;

            if (!/^[a-zA-Z0-9]+$/.test(empid)) {
                alert("Employer ID can only contain alphanumeric characters.");
                return false;
            }
            if (!/\S+@\S+\.\S+/.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }
            if (password !== confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
    
        <h2>Employer Registration</h2>
        <form name="registrationForm" action="/employer/register" method="post" onsubmit="return validateForm()">
            <input type="text" name="empid" placeholder="Employer ID" required>
            <input type="email" name="mail" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
            <button type="submit">Register</button>
        </form>
        
         <!-- Login Button -->
        <form action="/employer/login" method="get">
            <button type="submit" class="login-button">Emp login</button>
        </form>
    </div>
</body>
</html>