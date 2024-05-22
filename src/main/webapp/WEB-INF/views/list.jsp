<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <tr>
        <td>${employed}</td>
        <td>${regular}</td>
        <td>${contract}</td>
        <td>${temporary}</td>
        <td>${dispatched}</td>
        <td>${appointed}</td>
        <td>${daily}</td>
        <td>${resigned}</td>
        <td>${allemployees}</td>
    </tr>
</table>
</body>
</html>