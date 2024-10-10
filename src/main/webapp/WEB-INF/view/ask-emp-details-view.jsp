<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, please enter your details</h2>

<form:form action = "showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    <br>
    Last name <form:input path = "surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path = "salary"/>
    <form:errors path="salary"/>
    <br>
    <br>
    Department <form:select path = "department">
        <form:options items="${employee.departments}"/>
    </form:select>
    <br>
    <br>
    What car do you want?
    <br>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Languages
    <br>
        <form:checkboxes path="languages" items="${employee.languagesList}"/>
    <br>
    <br>
        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
    <br>
    <br>
    email: <form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <br>
    <input type="submit" value="OK"/>

</form:form>

</body>
</html>
