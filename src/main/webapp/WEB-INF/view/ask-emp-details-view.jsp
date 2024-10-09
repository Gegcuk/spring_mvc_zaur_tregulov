<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, please enter your details</h2>

<form:form action = "showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br>
    <br>
    Last name <form:input path = "surname"/>
    <br>
    <br>
    Salary <form:input path = "salary"/>
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
    <input type="submit" value="OK"/>

</form:form>

</body>
</html>
