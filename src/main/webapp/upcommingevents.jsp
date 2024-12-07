<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #003366;
            color: white;
            padding-top: 20px;
            position: fixed;
            top: 0;
            left: 0;
        }

        .sidebar h2 {
            text-align: center;
            color: white;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background-color: #00c6ff;
        }

        .main-content {
            margin-left: 250px;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: calc(100% - 250px);
            padding: 20px;
        }

        header {
            background-color: #003366;
            color: white;
            padding: 15px 20px;
            text-align: center;
            width: 100%;
        }

        .container {
            max-width: 900px;
            width: 100%;
            margin: 20px 0;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        .section {
            margin-bottom: 30px;
        }

        .section h2 {
            border-bottom: 2px solid #003366;
            padding-bottom: 5px;
            margin-bottom: 20px;
            color: #333;
        }

        .card {
            display: flex;
            flex-direction: column;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 20px;
            transition: transform 0.2s;
            background: #f9f9f9;
        }

        .card:hover {
            transform: scale(1.02);
            background: #eef7ee;
        }

        .card h3 {
            color: #003366;
        }

        .card p {
            color: #555;
        }

        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #003366;
            color: white;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Admin Dashboard</h2>
        <a href="/admin/manage-users">Manage Students</a>
        <a href="/jobapplication.jsp">Job Applications</a>
        <a href="/upcommingevents.jsp">Upcoming Events</a>
        <a href="/admin/manage-companies">Manage Employees</a>
        <a href="/index.html">Logout</a>
    </div>

    <div class="main-content">
        <header>
            <h1>Upcoming Events</h1>
        </header>

        <div class="container">
            <div class="section">
                <h2>Upcoming Internships</h2>
                <div class="card">
                    <h3>Software Development Internship</h3>
                    <p>Location: Remote | Duration: 6 months</p>
                    <p>Application will open from: Jan 10,2025</p>
                    <p>Application Deadline: Jan 15, 2025</p>
                </div>
                <div class="card">
                    <h3>Marketing Internship</h3>
                    <p>Location: New York, USA | Duration: 3 months</p>
                      <p>Application will open from: Jan 8,2025</p>
                    <p>Application Deadline: Jan 20, 2025</p>
                </div>
            </div>

            <div class="section">
                <h2>Upcoming Jobs</h2>
                <div class="card">
                    <h3>Junior Software Engineer</h3>
                    <p>Location: Bangalore, India | Experience: Fresher</p>
                     <p>Application will open from: Dec 20,2024</p>
                    <p>Application Deadline: Jan 5, 2025</p>
                </div>
                <div class="card">
                    <h3>Data Analyst</h3>
                    <p>Location: London, UK | Experience: 1-2 years</p>
                      <p>Application will open from: Feb 10,2025</p>
                    <p>Application Deadline: Feb 11, 2025</p>
                </div>
            </div>
        </div>

        <footer>
            <p>&copy; 2024 Placement Management System</p>
        </footer>
    </div>
</body>
</html>
