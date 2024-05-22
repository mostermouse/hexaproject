<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<h1></h1>
<div id="content">
    <h1>Employee List Test</h1>
    <div>
<table border="1">
    <tr>
        <th>재직자</th>
        <th>정규직</th>
        <th>계약직</th>
        <th>임시직</th>
        <th>파견직</th>
        <th>위촉직</th>
        <th>일용직</th>
        <th>퇴사자</th>
        <th>전체</th>
        <th>asd</th>
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
</div>
<div>
<table border="1">
	<tr>
		<th>구분</th>
		<th>입사일</th>
		<th>사원번호</th>
		<th>성명(한글)</th>
		<th>부서</th>
		<th>직위</th>
		<th>주민번호</th>
		<th>휴대폰</th>
		<th>이메일</th>
		<th>퇴사일</th>
		<th>상태</th>
	</tr>
	
		<c:forEach items="${list}" var="employee">
		<tr>
		<td>${employee.employmentType}</td>
		<td>${employee.hireDate}</td>
		<td>${employee.employeeId}</td>
		<td>${employee.koreanName}</td>
		<td>${employee.departmentId}</td>
		<td>${employee.positionId}</td>
		<td>${employee.residentNumber1}-${employee.residentNumber2}</td>
		<td>${employee.telPhone}</td>
		<td>${employee.email}</td>
		<td>${employee.resignationDate}</td>
		<td>${employee.status}</td>
		</tr>
		</c:forEach>
</table>
</div>
</div>
</body>
</html>