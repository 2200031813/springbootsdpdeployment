<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Details</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css' />"> <!-- Link to your external CSS file -->
</head>
<body>
    <header>
        <h1>Company Details</h1>
    </header>
    <nav>
        <a href="/employer/dashboard">Dashboard</a>
        <a href="/employer/register">Logout</a>
    </nav>
    <div class="container">
        <div class="main-content">
            <div class="card">
                <h2>Company Overview</h2>
                <p><strong>Company Name:</strong> ${companyName}</p>
                <p><strong>Job Position:</strong> ${jobPosition}</p>
                <p><strong>Location:</strong> ${location}</p>
                <p><strong>CTC:</strong> ${ctc}</p>
                <p><strong>Eligibility Criteria:</strong> ${eligibilityCriteria}</p>
                <p><strong>Application Deadline:</strong> ${applicationDeadline}</p>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Employer Dashboard. All rights reserved.</p>
    </footer>
</body>
</html>
