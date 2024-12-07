<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Job Application Form</h2>
        <c:if test="${not empty error}">
            <p class="text-danger">${error}</p>
        </c:if>
        <c:if test="${not empty message}">
            <p class="text-success">${message}</p>
        </c:if>
        <form action="/student/apply-job" method="post">
            <div class="form-group">
                <label for="idNumber">ID Number</label>
                <input type="text" class="form-control" id="idNumber" name="idNumber" required>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="college">College</label>
                <input type="text" class="form-control" id="college" name="college" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch</label>
                <input type="text" class="form-control" id="branch" name="branch" required>
            </div>
            <div class="form-group">
                <label for="passingYear">Passing Out Year</label>
                <input type="number" class="form-control" id="passingYear" name="passingYear" required>
            </div>
            <div class="form-group">
                <label for="tenthMarks">10th Marks Percentage</label>
                <input type="number" step="0.01" class="form-control" id="tenthMarks" name="tenthMarks" required>
            </div>
            <div class="form-group">
                <label for="interMarks">Intermediate Marks Percentage</label>
                <input type="number" step="0.01" class="form-control" id="interMarks" name="interMarks" required>
            </div>
            <div class="form-group">
                <label for="cgpa">CGPA</label>
                <input type="number" step="0.01" class="form-control" id="cgpa" name="cgpa" required>
            </div>
            <div class="form-group">
                <label for="certificates">Certificates Done</label>
                <textarea class="form-control" id="certificates" name="certificates"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit Application</button>
        </form>
    </div>
</body>
</html>
