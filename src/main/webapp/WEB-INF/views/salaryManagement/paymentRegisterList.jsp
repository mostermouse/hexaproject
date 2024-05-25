<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="content">

	<div class="divtitle">
		<h3>Wage Records for Year ${param.year}</h3>
		<%-- 년도 선택 창 --%>
		<form action="/payment/paymentRegisterList" method="get">
			<label for="year">Select Year:</label> <select name="year" id="year">
				<%-- 2010년부터 현재 연도까지의 년도를 선택할 수 있도록 --%>
				<c:forEach var="y" begin="2010"
					end="<%=java.time.LocalDate.now().getYear()%>">
					<option value="${y}"
						<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
				</c:forEach>
			</select> <input type="submit" value="Submit">
		</form>
	</div>

	<%-- 급여 대장 표시 --%>
	<div class="table-container">
		<table class="pay">
			<thead>
				<tr>
					<th class="pay-head">귀속연월</th>
					<th class="pay-head">급여차수</th>
					<th class="pay-head">정산기간</th>
					<th class="pay-head">지급일</th>
					<th class="pay-head">인원</th>
					<th class="pay-head">총지급액</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listWageRecord}" var="record">
					<tr>
						<td class="pay-body">${record.yearMonth}</td>
						<td class="pay-body">${record.wagePeriod}</td>
						<td class="pay-body">${record.settlementPeriodStartDate}~
							${record.settlementPeriodEndDate}</td>
						<td class="pay-body">${record.wagePaymentDate}</td>
						<td class="pay-body">${record.paidEmployeeCount}</td>
						<td class="pay-total">${record.totalPaidWage}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>