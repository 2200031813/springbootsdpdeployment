<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Application Status</title>
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
            max-width: 800px;
            padding: 20px;
        }

        .container h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }

        .table {
            width: 100%;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        .table thead {
            background-color: #003366;
            color: white;
        }

        .table th, .table td {
            padding: 15px;
            text-align: center;
        }

        .alert {
            font-size: 1.2rem;
            text-align: center;
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
                    <a class="nav-link" href="trackApplicationStatus.jsp">Track Application Status</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/create-profile">Create Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="updateProfile.jsp">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/index.html">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Track Applications Section -->
    <div class="container">
        <h2>Your Applied Companies</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Company Name</th>
                    <th>Position</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Google</td>
                    <td>Software Engineer Intern</td>
                    <td>Under Review</td>
                </tr>
                <tr>
                    <td>Microsoft</td>
                    <td>Cloud Solutions Associate</td>
                    <td>Shortlisted</td>
                </tr>
                <tr>
                    <td>Amazon</td>
                    <td>Operations Analyst</td>
                    <td>Rejected</td>
                </tr>
                <tr>
                    <td>Facebook</td>
                    <td>Data Scientist Intern</td>
                    <td>Interview Scheduled</td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Student Placement Management System. All rights reserved.
    </footer>

    <!-- Scripts for Bootstrap Collapse and Toggle -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
