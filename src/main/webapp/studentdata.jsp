<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #003366;
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

        .container {
            padding: 20px;
            text-align: center;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .stats {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 20px;
        }

        .stat {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 200px;
        }

        .stat h3 {
            margin: 0;
            font-size: 2rem;
        }

        .stat p {
            margin: 0;
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
    <header>
        <h1>Student Data</h1>
        <p>Current Number of Registered Students: ${userCount}</p>
    </header>
    <nav>
        <a href="/dashboard">Dashboard</a>
        <a href="/updateprofile.jsp">Update Profile</a>
        <a href="/employer/post-job">Add Job</a>
        <a href="/studentsdata.jsp">Students Data</a>
        <a href="/logout">Logout</a>
    </nav>
    <div class="container">
        <h2>Total Registered Students: ${userCount}</h2>

        <!-- Displaying the statistics -->
        <div class="stats">
            <div class="stat">
                <h3>${userCount}</h3>
                <p>Students Registered</p>
            </div>
            <div class="stat">
                <h3>${companyCount}</h3>
                <p>Companies Posted</p>
            </div>
            <div class="stat">
                <h3>${jobCount}</h3>
                <p>Jobs Posted</p>
            </div>
        </div>

        <a href="/employer/dashboard" class="btn">Back to Dashboard</a>
    </div>
    <footer>
        <p>&copy; 2024 Student Placement Management System. All rights reserved.</p>
    </footer>
</body>
</html>
