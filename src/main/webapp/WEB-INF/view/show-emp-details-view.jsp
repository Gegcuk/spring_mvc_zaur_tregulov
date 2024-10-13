<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            color: #333;
        }
        h2 {
            text-align: center;
            color: #4CAF50;
        }
        .details {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <h2>Dear Employee, you are welcome!</h2>
    <div class="details">
        <p>Your name: ${employee.name} ${employee.surname}</p>
        <p>Salary: ${employee.salary}</p>
        <p>Department: ${employee.department}</p>
        <p>Your car: ${employee.carBrand}</p>
        <p>Language(s):</p>
        <ul>
            <c:forEach var="lang" items="${employee.languages}">
                <li>${lang}</li>
            </c:forEach>
        </ul>
        <p>Phone number: ${employee.phoneNumber}</p>
        <p>Email: ${employee.email}</p>
    </div>
</body>
</html>