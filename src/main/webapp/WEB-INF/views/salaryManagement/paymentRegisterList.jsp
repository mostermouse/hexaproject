<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- table의 한 줄 전체에 링크를 걸기 위한 CSS -->
<style>
table {
	width: 100%;
	border-collapse: collapse;
}

tr {
	position: relative;
}

tr a {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-decoration: none;
	color: inherit;
}
</style>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentRegisterList.png"
				width="50" height="50">
			<h1>급여대장</h1>
		</div>
		<hr>
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
	<div class="table-container" style="margin-top: 20px;">
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
					<tr onclick="submitForm('/payment/paymentRegisterPeriodList')">
						<td class="pay-body">${record.yearMonth}</td>
						<td class="pay-body">${record.wagePeriod}</td>
						<td class="pay-body">${record.settlementPeriodStartDate}~
							${record.settlementPeriodEndDate}</td>
						<td class="pay-body">${record.wagePaymentDate}</td>
						<td class="pay-body">${record.paidEmployeeCount}</td>
						<td class="pay-total"><a
							href="/payment/paymentRegisterPeriodList?yearMonth=${record.yearMonth}&wagePeriod=${record.wagePeriod}"></a>${record.totalPaidWage}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>