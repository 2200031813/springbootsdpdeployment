<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Opportunities</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        /* General Body Styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            color: #333;
        }

        /* Navbar Styles */
        nav {
            background-color: #003366;
            padding: 15px 30px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        nav .navbar-brand {
            color: white;
            font-size: 24px;
            font-weight: 700;
            text-transform: uppercase;
        }

        nav .navbar-brand:hover {
            color: #00c6ff;
        }

        .navbar-nav {
            display: flex;
            list-style: none;
            margin-left: auto;
        }

        .navbar-nav .nav-item {
            margin-left: 25px;
        }

        .navbar-nav .nav-link {
            color: white;
            font-size: 16px;
            text-decoration: none;
            font-weight: 500;
            padding: 10px 15px;
            transition: color 0.3s, background-color 0.3s;
            border-radius: 5px;
        }

        .navbar-nav .nav-link:hover {
            background-color: #00c6ff;
            color: white;
        }

        /* Table Section */
        .container {
            margin: 40px auto;
            max-width: 1000px;
            padding: 20px;
        }

        .container h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table th {
            background-color: #003366;
            color: white;
            padding: 12px;
        }

        table td {
            background-color: #fff;
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        .apply-btn {
            padding: 8px 15px;
            background-color: #2ecc71;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 14px;
        }

        .apply-btn:hover {
            background-color: #27ae60;
        }

        /* Footer Styles */
        footer {
            text-align: center;
            margin: 40px 0 20px;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="/home">Student Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/student/viewJobs">View Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/trackApplicationStatus.jsp">Track Application Status</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/create-profile">Create Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/update-employer">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/index.html">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Job Listings Section -->
    <div class="container">
        <h2>Available Job Listings</h2>
        <table>
            <thead>
                <tr>
                    <th>Job Title</th>
                    <th>Company Name</th>
                    <th>Eligibility</th>
                    <th>Salary</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="job" items="${jobs}">
                    <tr>
                        <td>${job.jobTitle}</td>
                        <td>${job.companyName}</td>
                        <td>${job.eligibility}</td>
                        <td>${job.salary}</td>
                        <td>
                            <form action="/student/apply-job" method="post">
                                <input type="hidden" name="jobId" value="${job.id}">
                                <button type="submit" class="apply-btn"><i class="fas fa-paper-plane"></i> Apply</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Student Placement Management System. All rights reserved.
    </footer>
</body>
</html>