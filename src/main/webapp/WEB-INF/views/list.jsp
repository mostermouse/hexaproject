<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
<h1>Employee List</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>position</th>
    </tr>
    <c:forEach items="${list}" var="employee">
        <tr>
            <td>${employee.employeeId}</td>
            <td>${employee.koreanName}</td>
            <td>${employee.position}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
