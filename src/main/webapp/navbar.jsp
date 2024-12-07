<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Placement Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom Navbar Styles */
        .navbar {
            background-color: #1e3d59;
        }

        .navbar-brand {
            font-size: 1.5rem;
            color: #ffffff !important;
            font-weight: bold;
        }

        .nav-link {
            color: #d1d5db !important;
            font-size: 1.1rem;
            transition: color 0.3s ease-in-out;
        }

        .nav-link:hover {
            color: #f0ad4e !important;
            text-decoration: underline;
        }

        .navbar-toggler {
            border: none;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='rgba%28168, 218, 220, 1%29' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
        }

        /* Navbar Dropdown (Optional) */
        .dropdown-menu {
            background-color: #1e3d59;
        }

        .dropdown-item {
            color: #d1d5db;
        }

        .dropdown-item:hover {
            color: #f0ad4e;
            background-color: #2b506e;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Placement Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/employer/view-applicants">View Applications</a>
                </li>
              
                <li class="nav-item">
                    <a class="nav-link" href="/student/profile">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/settings">Settings</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>