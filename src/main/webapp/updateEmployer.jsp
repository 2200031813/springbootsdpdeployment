<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
            display: block;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        button {
            width: 100%;
            background-color: #003366;
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
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #003366;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Profile</h2>
        <form action="/student/update-employer?id=${users.id}" method="post">
            <input type="hidden" name="id" value="${users.id}">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="${users.username}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${users.email}" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="${users.password}" required>
            
            <input type="hidden" name="id" value="${users.id}">
            
            <button type="submit">Update Profile</button>
        </form>
        <a href="/student/viewJobs">Back to Job Listings</a>
    </div>
</body>
</html>
