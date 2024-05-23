<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
  
  
<div id="content">
    <h1>Wage List</h1>
    <div>
    <table border="1">
        <thead>
            <tr>
                <th>고용형태</th>
                <th>이름</th>
                <th>부서</th> 
                <th>지급총액</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="wage" items="${wageList}">
                <tr>
                    <td>${wage.employmentType}</td>
                    <td>${wage.koreanName}</td>
                    <td>${wage.departmentId}</td> 
                    <td>${wage.wageValue}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    <div>
    <h2>급여 항목 입력</h2>
    <form action="/submitWageItems" method="post">
        <table border="1">
            <tr>
                <td>기본급</td>
                <td><input type="number" name="basicSalary" ></td>
            </tr>
            <tr>
                <td>식비</td>
                <td><input type="number" name="mealAllowance" ></td>
            </tr>
            <tr>
                <td>보육수당</td>
                <td><input type="number" name="childcareAllowance" ></td>
            </tr>
            <tr>
                <td>직책수당</td>
                <td><input type="number" name="positionAllowance" ></td>
            </tr>
            <tr>
                <td>차량유지비</td>
                <td><input type="number" name="vehicleMaintenance" ></td>
            </tr>
            <tr>
                <td>근속수당</td>
                <td><input type="number" name="longevityAllowance" ></td>
            </tr>
            <tr>
                <td>당직수당</td>
                <td><input type="number" name="dutyAllowance" ></td>
            </tr>
            <tr>
                <td>상여급</td>
                <td><input type="number" name="bonus" ></td>
            </tr>
            <tr>
                <td>휴일수당</td>
                <td><input type="number" name="holidayAllowance" ></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>