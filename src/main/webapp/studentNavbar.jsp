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

        /* Navbar Menu Links */
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

        /* Navbar Toggle for Mobile View */
        .navbar-toggler {
            background-color: #00c6ff;
            border: none;
        }

        .navbar-toggler-icon {
            background-color: white;
        }

        @media screen and (max-width: 768px) {
            .navbar-nav {
                flex-direction: column;
                margin-top: 15px;
            }

            .navbar-nav .nav-item {
                margin: 5px 0;
            }

            .navbar-nav .nav-link {
                padding: 12px 20px;
            }
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
                    <a class="nav-link" href="trackApplicationStatus.jsp">Track Application Status</a> <!-- Updated here -->	
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/update-employer">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/create-profile">Create Profile</a>
                </li>
                <li class="nav-item">
                     <a class="nav-link" href="/index.html">Logout</a>
                 
                    
                </li>
            </ul>
        </div>
    </nav>

    <!-- Scripts for Bootstrap Collapse and Toggle -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
