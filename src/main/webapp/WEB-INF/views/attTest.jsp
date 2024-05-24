<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">
    <h1>Employee List Test</h1>
    <div>
<table border="1">
    
  
		<c:forEach items="${att}" var="att">
		<tr>
		<td>${att.employmentType}</td>
		<td>${att.koreanName}</td>
		<td>${att.inputDate}</td>
		<td>${att.startDate}</td>
		<td>${att.endDate}</td>
		<td>${att.attendanceDays}</td>
		<td>${att.amount}</td>
		<td>${att.summary}</td>
		<td>${att.attendanceTypeName}</td>
		<td>${att.departmentName}</td>
		<td>${att.positionName}</td>
		</tr>
		</c:forEach>
		
			<c:forEach items="${att1}" var="att1">
		<tr>
		<td>${att1.inputDate}</td>
		<td>${att1.employmentType}</td>
		<td>${att1.koreanName}</td>
		<td>${att1.departmentId}</td>
		<td>${att1.positionId}</td>
		<td>${att1.attendanceTypeId}</td>
		<td>${att1.startDate}</td>
		<td>${att1.endDate}</td>
		<td>${att1.attendanceDays}</td>
		<td>${att1.amount}</td>
		<td>${att1.summary}</td>
		</tr>
		</c:forEach>
</table>
</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>