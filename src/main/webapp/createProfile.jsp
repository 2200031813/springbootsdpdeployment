<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Profile</title>
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

        /* Form Section */
        .container {
            margin: 40px auto;
            max-width: 800px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            text-align: center;
            color: #003366;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        label {
            font-weight: 600;
            color: #555;
            margin-bottom: 8px;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 10px 15px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
            transition: border-color 0.3s ease;
        }

        input:focus,
        select:focus,
        textarea:focus {
            outline: none;
            border-color: #003366;
            background-color: #ffffff;
        }

        textarea {
            resize: none;
            grid-column: span 2;
        }

        button {
            grid-column: span 2;
            padding: 12px;
            font-size: 18px;
            font-weight: 600;
            color: white;
            background-color: #003366;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0052a3;
        }

        @media (max-width: 768px) {
            form {
                grid-template-columns: 1fr;
            }

            button {
                grid-column: span 1;
            }
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

    <!-- Create Profile Form -->
    <div class="container">
        <h2>Create Profile</h2>
        <form action="/student/create-profile" method="post" enctype="multipart/form-data">
            <!-- First Name -->
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>

            <!-- Last Name -->
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>

            <!-- Age -->
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <!-- Address -->
            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="3"></textarea>

            <!-- Phone Number -->
            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber">

            <!-- Blood Group -->
            <label for="bloodGroup">Blood Group:</label>
            <input type="text" id="bloodGroup" name="bloodGroup">

            <!-- Mother's Phone Number -->
            <label for="mothersPhoneNumber">Mother's Phone Number:</label>
            <input type="text" id="mothersPhoneNumber" name="mothersPhoneNumber">

            <!-- Father's Phone Number -->
            <label for="fathersPhoneNumber">Father's Phone Number:</label>
            <input type="text" id="fathersPhoneNumber" name="fathersPhoneNumber">

            <!-- Email -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <!-- 10th Marks -->
            <label for="tenthMarks">10th Marks:</label>
            <input type="number" id="tenthMarks" name="tenthMarks">

            <!-- Inter Marks -->
            <label for="interMarks">Inter Marks:</label>
            <input type="number" id="interMarks" name="interMarks">

            <!-- Specialization -->
            <label for="specialization">Specialization:</label>
            <input type="text" id="specialization" name="specialization">

            <!-- Resume (Optional) -->
            <label for="resume">Resume (optional):</label>
            <input type="file" id="resume" name="resume">

            <!-- Submit Button -->
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
