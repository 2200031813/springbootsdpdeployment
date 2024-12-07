
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #003366;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            padding-top: 20px;
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
            padding: 20px;
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
        <h1>Welcome to the Admin Dashboard</h1>
        <p>Manage all aspects of the student placement system here.</p>
    </div>
</body>
</html>