<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee and Wage Records</title>
</head>
<body>
    <h2>Employee and Wage Records</h2>
    
    <%-- 년도 선택 창 --%>
    <form action="/home" method="get">
        <label for="year">Select Year:</label>
        <select name="year" id="year">
            <%-- 2010년부터 현재 연도까지의 년도를 선택할 수 있도록 --%>
            <c:forEach var="y" begin="2010" end="<%=java.time.LocalDate.now().getYear()%>">
                <option value="${y}" <c:if test="${y eq param.year}">selected</c:if>>${y}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Submit">
    </form>
    
    <hr>
    
    <%-- 사원 숫자 표시 --%>
    <h3>Employee Count</h3>
    <p>Total Employees: ${TotalEmployeeCount}</p>
    <p>Full-time Employees: ${FulltimeEmployeeCount}</p>
    <p>Contract Employees: ${contractEmployeeCount}</p>
    <p>Temporary Employees: ${temporaryEmployeeCount}</p>
    <p>Daily Workers: ${dailyWorkerCount}</p>
    
    <hr>
    
    <%-- 급여 현황 표시 --%>
    <h3>Wage Records for Year ${param.year}</h3>
    <table border="1">
        <tr>
            <th>Year Month</th>
            <th>Wage Period</th>
            <th>Settlement Period Start Date</th>
            <th>Settlement Period End Date</th>
            <th>Wage Payment Date</th>
            <th>Paid Employee Count</th>
            <th>Total Paid Wage</th>
        </tr>
        <c:forEach items="${listWageRecord}" var="record">
            <tr>
                <td>${record.yearMonth}</td>
                <td>${record.wagePeriod}</td>
                <td>${record.settlementPeriodStartDate}</td>
                <td>${record.settlementPeriodEndDate}</td>
                <td>${record.wagePaymentDate}</td>
                <td>${record.paidEmployeeCount}</td>
                <td>${record.totalPaidWage}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
