<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Applications - Admin Module</title>
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

        header {
            background-color: #003366;
            color: white;
            padding: 15px 20px;
            text-align: center;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #003366;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .actions button {
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .approve {
            background-color: #28a745;
            color: white;
        }

        .reject {
            background-color: #dc3545;
            color: white;
        }

        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #003366;
            color: white;
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
            <h1>Job Applications - Admin Module</h1>
        </header>

        <div class="container">
            <h2>Job Application Details</h2>
            <table>
                <thead>
                    <tr>
                        <th>Application ID</th>
                        <th>Job Title</th>
                        <th>Student Name</th>
                        <th>Department</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>101</td>
                        <td>Software Developer</td>
                        <td>John Doe</td>
                        <td>Computer Science</td>
                        <td>Pending</td>
                        <td class="actions">
                            <button class="approve" onclick="updateStatus('approve', 101)">Approve</button>
                            <button class="reject" onclick="updateStatus('reject', 101)">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>102</td>
                        <td>Data Analyst</td>
                        <td>Jane Smith</td>
                        <td>Information Technology</td>
                        <td>Pending</td>
                        <td class="actions">
                            <button class="approve" onclick="updateStatus('approve', 102)">Approve</button>
                            <button class="reject" onclick="updateStatus('reject', 102)">Reject</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <footer>
            <p>&copy; 2024 Student Placement Management System</p>
        </footer>
    </div>

    <script>
        function updateStatus(action, applicationId) {
            const actionMessage = action === 'approve' ? 'approved' : 'rejected';
            alert(`Application ID ${applicationId} has been ${actionMessage}.`);
            // Add an AJAX call here to update the status in the backend if required.
        }
    </script>
</body>
</html>
