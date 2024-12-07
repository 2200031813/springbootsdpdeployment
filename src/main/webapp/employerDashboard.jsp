<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Placement Management - Dashboarddd</title>
    <style>d
        /* General Styles */
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
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

        .main-content {
            flex: 70%;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .sidebar {
            flex: 30%;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .card {
            background-color: #e2e2e2;
            margin-bottom: 15px;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-top: 0;
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
            text-align: center;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .quick-links ul {
            padding: 0;
            list-style-type: none;
        }

        .quick-links li {
            margin-bottom: 10px;
        }

        .quick-links a {
            color: #003366;
            text-decoration: none;
            font-size: 16px;
        }

        .quick-links a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <header>
        <h1>Student Placement Management Dashboard</h1>
        <p>Welcome, Employer!</p>
    </header>
    <nav>
        <a href="/dashboard">Dashboard</a>
        <a href="/updateprofile.jsp">Update Profile</a>
        <a href="/employer/post-job">Add Job</a>
        <a href="/employer/view-applicants">View Applicants</a>
        <a href="/logout">Logout</a>
    </nav>
    <div class="container">
        <div class="main-content">
            <div class="card">
                <h2>Update Profile</h2>
                <p>Update your profile details to keep your information accurate and up-to-date.</p>
                <a href="/updateprofile.jsp" class="btn">Go to Update Profile</a>
            </div>
            <div class="card">
                <h2>Add Job</h2>
                <p>Create new job postings for students to apply to.</p>
                <a href="/employer/post-job" class="btn">Go to Add Job</a>
            </div>
            <div class="card">
                <h2>Students Data</h2>
                <p>Access and manage the data of registered students.</p>
                <a href="/employer/view-applicants" class="btn">View Applicants</a>
            </div>
            <div class="card">
                <h2>Track Applications</h2>
                <p>Monitor the applications submitted by students for various jobs.</p>
                <a href="/applications.jsp" class="btn">Track Applications</a>
            </div>
        </div>
        <div class="sidebar">
            <div class="card quick-links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="/updateprofile.jsp">Update Profile</a></li>
                    <li><a href="/employer/post-job">Add Job</a></li>
                    <li><a href="/employer/view-applicants">View Applicants</a></li>
                    <li><a href="/applications.jsp">Track Applications</a></li>
                    <li><a href="/statistics.jsp">View Statistics</a></li>
                </ul>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Student Placement Management System. All rights reserved.</p>
    </footer>
</body>
</html>