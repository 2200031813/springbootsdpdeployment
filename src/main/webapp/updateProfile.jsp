<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .update-profile-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
        }

        .update-profile-container h1 {
            margin: 0 0 20px;
            font-size: 24px;
            text-align: center;
            color: #333;
        }

        .update-profile-container form {
            display: flex;
            flex-direction: column;
        }

        .update-profile-container form label {
            font-size: 14px;
            margin-bottom: 8px;
            color: #555;
        }

        .update-profile-container form input[type="text"],
        .update-profile-container form input[type="email"],
        .update-profile-container form input[type="password"],
        .update-profile-container form input[type="tel"] {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .update-profile-container form input[type="text"]:focus,
        .update-profile-container form input[type="email"]:focus,
        .update-profile-container form input[type="password"]:focus,
        .update-profile-container form input[type="tel"]:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 4px rgba(76, 175, 80, 0.6);
        }

        .update-profile-container form button {
            padding: 12px 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .update-profile-container form button:hover {
            background-color: #45a049;
        }

        .update-profile-container .back-link {
            text-align: center;
            margin-top: 10px;
        }

        .update-profile-container .back-link a {
            text-decoration: none;
            font-size: 14px;
            color: #4CAF50;
            transition: color 0.3s;
        }

        .update-profile-container .back-link a:hover {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="update-profile-container">
        <h1>Update Profile</h1>
        <form action="/updateProfile" method="post">
            <label for="empid">User ID</label>
            <input type="text" id="empid" name="empid" value="${users.id}" >

            <label for="mail">User Email Address</label>
            <input type="email" id="mail" name="mail" value="${users.mail}" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter a new password">
            
            <label for="confirmpassword">Confirm Password</label>
            <input type="password" id="confirmpassword" name="confirmPassword" placeholder="Confirm your password" required>
            
            <button type="submit">Update</button>
        </form>

        <div class="back-link">
            <a href="/employer/dashboard">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
