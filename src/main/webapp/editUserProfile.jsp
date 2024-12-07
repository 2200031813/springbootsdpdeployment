<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User Profile</title>
</head>
<body>
    <h2>Edit User Profile</h2>
    <form action="/student/edit-user-profile" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${userProfile.id}">
        <label for="firstName">First Name:</label><br>
        <input type="text" id="firstName" name="firstName" value="${userProfile.firstName}"><br><br>
        <label for="lastName">Last Name:</label><br>
        <input type="text" id="lastName" name="lastName" value="${userProfile.lastName}"><br><br>
        <label for="age">Age:</label><br>
        <input type="number" id="age" name="age" value="${userProfile.age}"><br><br>
        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address" value="${userProfile.address}"><br><br>
        <label for="phoneNumber">Phone Number:</label><br>
        <input type="text" id="phoneNumber" name="phoneNumber" value="${userProfile.phoneNumber}"><br><br>
        <label for="bloodGroup">Blood Group:</label><br>
        <input type="text" id="bloodGroup" name="bloodGroup" value="${userProfile.bloodGroup}"><br><br>
        <label for="mothersPhoneNumber">Mother's Phone Number:</label><br>
        <input type="text" id="mothersPhoneNumber" name="mothersPhoneNumber" value="${userProfile.mothersPhoneNumber}"><br><br>
        <label for="fathersPhoneNumber">Father's Phone Number:</label><br>
        <input type="text" id="fathersPhoneNumber" name="fathersPhoneNumber" value="${userProfile.fathersPhoneNumber}"><br><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="${userProfile.email}"><br><br>
        <label for="tenthMarks">10th Marks:</label><br>
        <input type="number" id="tenthMarks" name="tenthMarks" value="${userProfile.tenthMarks}"><br><br>
        <label for="interMarks">Inter Marks:</label><br>
        <input type="number" id="interMarks" name="interMarks" value="${userProfile.interMarks}"><br><br>
        <label for="specialization">Specialization:</label><br>
        <input type="text" id="specialization" name="specialization" value="${userProfile.specialization}"><br><br>
        <label for="resume">Resume (optional):</label><br>
        <input type="file" id="resume" name="resume"><br><br>
        <button type="submit">Update Profile</button>
    </form>
</body>
</html>
