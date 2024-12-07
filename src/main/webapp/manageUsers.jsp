<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
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
        .sidebar h2 {
            text-align: center;
            color: #fff;
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
        h2 {
            color: #333;
        }
        .container {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }
        table thead {
            background-color: #003366;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .actions a, .actions button {
            margin-right: 10px;
            padding: 5px 10px;
            text-decoration: none;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .actions a {
            background-color: #007bff;
        }
        .actions a:hover {
            background-color: #0056b3;
        }
        .actions button {
            background-color: #dc3545;
        }
        .actions button:hover {
            background-color: #b52a37;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Dashboard</h2>
        <a href="/admin/manage-users">Manage Students</a>
        <a href="/jobapplication.jsp">Job Applications</a>
        <a href="/upcommingevents.jsp">Upcoming Events</a>
        <a href="/admin/manage-companies">Manage Employees</a>
        <a href="/index.html">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h2>Manage Users</h2>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td class="actions">
                                <!-- Redirect to update user page -->
                                <a href="/admin/update-user?id=${user.id}">Update</a>
                                <form action="/admin/delete-user" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="${user.id}">
                                    <button type="submit">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
