<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
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

        /* Overview Section */
        .overview {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 800px;
        }

        .overview h2 {
            font-size: 28px;
            color: #003366;
            margin-bottom: 20px;
        }

        .overview p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
        }

        .overview p span {
            font-weight: bold;
            color: #4CAF50;
        }

        /* Features Section */
        .features {
            margin: 40px auto;
            max-width: 1000px;
            padding: 20px;
        }

        .features h2 {
            font-size: 24px;
            color: #003366;
            text-align: center;
            margin-bottom: 20px;
        }

        .features ul {
            list-style-type: none;
            padding: 0;
        }

        .features ul li {
            background-color: #fff;
            margin: 10px 0;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 16px;
            color: #555;
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
                    <a class="nav-link" href="/student/update-employer">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/index.html">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Overview Section -->
    <div class="overview">
        <h2>Welcome to the Student Placement Management System</h2>
        <p>
            The <span>Student Placement Management System</span> is designed to simplify the placement process for students, administrators, and employers. 
            Our platform provides a seamless experience for managing job applications, tracking statuses, and updating profiles.
        </p>
    </div>

    <!-- Features Section -->
    <div class="features">
        <h2>Key Features</h2>
        <ul>
            <li>View job postings and apply directly through the dashboard.</li>
            <li>Track your application status in real-time.</li>
            <li>Update your profile to keep your information up-to-date for recruiters.</li>
            <li>Secure login and logout functionality for a safe user experience.</li>
            <li>Access detailed company profiles and upcoming placement events.</li>
        </ul>
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
