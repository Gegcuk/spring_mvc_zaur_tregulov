<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, you are welcome</h2>
<br>
<br>
<br>
<%-- Your name: ${param.employeeName} --%>

Your name: ${employee.name} ${employee.surname}
<br>
Salary: ${employee.salary}
<br>
Department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li> ${lang} </li>
    </c:forEach>
</ul>
Phone number: ${employee.phoneNumber}
</body>
</html>
