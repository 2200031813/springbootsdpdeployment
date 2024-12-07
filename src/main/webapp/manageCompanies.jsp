
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Employers</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
            border-radius: 5px;
            overflow: hidden;
        }
        table th, table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        table th {
            background-color: #003366;
            color: white;
        }
        a, button {
            text-decoration: none;
            color: white;
            background-color: #003366;
            padding: 5px 10px;
            border-radius: 3px;
            border: none;
        }
        button:hover, a:hover {
            background-color: #0056b3;
        }
        form {
            display: inline;
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
        <h1>Manage Employers</h1>
        <table>
            <thead>
                <tr>
                    <th>Employer ID</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employer" items="${employers}">
                    <tr>
                        <td>${employer.empid}</td>
                        <td>${employer.mail}</td>
                        <td>
                            <a href="/admin/update-employer?empid=${employer.empid}">Update</a>
                            <form action="/admin/delete-employer" method="post">
                                <input type="hidden" name="empid" value="${employer.empid}">
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
