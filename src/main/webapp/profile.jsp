<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>

    <!-- Link to Bootstrap CSS for modern UI -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom styles for this page -->
    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

        .table {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        .table th {
            background-color: #007bff;
            color: white;
        }

        .table td {
            vertical-align: middle;
        }

        .table td a {
            color: #007bff;
            text-decoration: none;
        }

        .table td a:hover {
            text-decoration: underline;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .action-links {
            text-align: center;
            margin-top: 30px;
        }

        .action-links a {
            margin: 0 10px;
            text-decoration: none;
            font-size: 16px;
            color: #007bff;
        }

        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>User Profile</h2>

        <!-- Displaying User Profile in a Table -->
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th>First Name</th>
                    <td>${userProfile.firstName}</td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td>${userProfile.lastName}</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>${userProfile.age}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${userProfile.address}</td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td>${userProfile.phoneNumber}</td>
                </tr>
                <tr>
                    <th>Blood Group</th>
                    <td>${userProfile.bloodGroup}</td>
                </tr>
                <tr>
                    <th>Mother's Phone Number</th>
                    <td>${userProfile.mothersPhoneNumber}</td>
                </tr>
                <tr>
                    <th>Father's Phone Number</th>
                    <td>${userProfile.fathersPhoneNumber}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${userProfile.email}</td>
                </tr>
                <tr>
                    <th>10th Marks</th>
                    <td>${userProfile.tenthMarks}</td>
                </tr>
                <tr>
                    <th>Inter Marks</th>
                    <td>${userProfile.interMarks}</td>
                </tr>
                <tr>
                    <th>Specialization</th>
                    <td>${userProfile.specialization}</td>
                </tr>
                <tr>
                    <th>Resume</th>
                    <td>
                        <c:choose>
                            <c:when test="${not empty userProfile.resumeUrl}">
                                <a href="${userProfile.resumeUrl}" target="_blank">Download Resume</a>
                            </c:when>
                            <c:otherwise>No resume uploaded</c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Edit Profile Link -->
        <div class="action-links">
            <a href="/student/edit-user-profile?id=${userProfile.id}" class="btn-custom">Edit Profile</a>
        </div>
    </div>

    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.10/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
