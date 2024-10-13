<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
        }
        h2 {
            text-align: center;
            color: #4CAF50;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .error {
            color: red;
            font-size: 12px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Dear Employee, please enter your details</h2>
    <form:form action="showDetails" modelAttribute="employee" method="get">
        <label for="name">Name:</label>
        <form:input path="name" id="name"/>
        <form:errors path="name" class="error"/>

        <label for="surname">Last Name:</label>
        <form:input path="surname" id="surname"/>
        <form:errors path="surname" class="error"/>

        <label for="salary">Salary:</label>
        <form:input path="salary" id="salary"/>
        <form:errors path="salary" class="error"/>

        <label for="department">Department:</label>
        <form:select path="department" id="department">
            <form:options items="${employee.departments}"/>
        </form:select>

        <label for="car">What car do you want?</label>
        <form:radiobuttons path="carBrand" items="${employee.carBrands}" id="car"/>
        <br>
        <br>

        <label>Languages:</label>
        <form:checkboxes path="languages" items="${employee.languagesList}"/>

        <label for="phoneNumber">Phone Number:</label>
        <form:input path="phoneNumber" id="phoneNumber"/>
        <form:errors path="phoneNumber" class="error"/>

        <label for="email">Email:</label>
        <form:input path="email" id="email"/>
        <form:errors path="email" class="error"/>

        <input type="submit" value="Submit">
    </form:form>
</body>
</html>