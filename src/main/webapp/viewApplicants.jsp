<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Job Applicants</title>
    <style>
        /* General Page Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        /* Form Styling */
        form {
            text-align: center;
            margin: 20px auto;
        }

        label {
            font-size: 16px;
            color: #555;
            margin-right: 10px;
        }

        select {
            padding: 8px 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 8px 16px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        td {
            color: #333;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <h2>Applicants for Job</h2>

    <!-- Branch Filter Form -->
    <form method="get" action="/employer/view-applicants">
        <label for="branch">Filter by Branch:</label>
        <select name="branch" id="branch" onchange="this.form.submit()">
            <option value="">All Branches</option>
            <option value="CSE" ${selectedBranch == 'CSE' ? 'selected' : ''}>CSE</option>
            <option value="ECE" ${selectedBranch == 'ECE' ? 'selected' : ''}>ECE</option>
            <option value="Mechanical" ${selectedBranch == 'Mechanical' ? 'selected' : ''}>Mechanical</option>
            <option value="Civil" ${selectedBranch == 'Civil' ? 'selected' : ''}>Civil</option>
            <option value="Electrical" ${selectedBranch == 'Electrical' ? 'selected' : ''}>Electrical</option>
            <!-- Add other branches as needed -->
        </select>
        <noscript>
            <button type="submit">Filter</button>
        </noscript>
    </form>

    <!-- Applicants Table -->
    <table>
        <thead>
            <tr>
                <th>Applicant Name</th>
                <th>College</th>
                <th>Branch</th>
                <th>Passing Year</th>
                <th>10th Marks Percentage</th>
                <th>Inter Marks Percentage</th>
                <th>CGPA</th>
                <th>Certificates</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="applicant" items="${applicants}">
                <tr>
                    <td>${applicant.name}</td>
                    <td>${applicant.college}</td>
                    <td>${applicant.branch}</td>
                    <td>${applicant.passingYear}</td>
                    <td>${applicant.tenthMarks}</td>
                    <td>${applicant.interMarks}</td>
                    <td>${applicant.cgpa}</td>
                    <td>${applicant.certificates}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
