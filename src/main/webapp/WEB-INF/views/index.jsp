<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">

	<%-- 사원 숫자 표시 --%>
	<div class="table-container1">

		<table class="tg">
			<thead>
				<tr>
					<th class="tg-ev56">在職者</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${employed}</td>
				</tr>
			</tbody>
		</table>

		<table class="tg">
			<thead>
				<tr>
					<th class="tg-c5zh">正社員</th>
					<th class="tg-c5zh">契約職</th>
					<th class="tg-c5zh">臨時職</th>
					<th class="tg-c5zh">派遣職</th>
					<th class="tg-c5zh">委嘱職</th>
					<th class="tg-c5zh">日雇い</th>
					<th class="tg-c5zh">退社者</th>
					<th class="tg-c5zh">全体</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${regular}</td>
					<td class="tg-jc02">${contract}</td>
					<td class="tg-jc02">${temporary}</td>
					<td class="tg-jc02">${dispatched}</td>
					<td class="tg-jc02">${appointed}</td>
					<td class="tg-jc02">${daily}</td>
					<td class="tg-jc02">${resigned}</td>
					<td class="tg-jc02">${allemployees}</td>
				</tr>
			</tbody>
		</table>
	</div>

	<hr>

	<div class="divtitle">

		<%-- 년도 선택 창 --%>
		<form action="/" method="get">
			<label for="year">選択年:</label> <select name="year" id="year">
				<%-- 2010년부터 현재 연도까지의 년도를 선택할 수 있도록 --%>
				<c:forEach var="y" begin="2010"
					end="<%=java.time.LocalDate.now().getYear()%>">
					<option value="${y}"
						<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
				</c:forEach>
			</select> <input type="submit" value="照会">
		</form>
	</div>

	<%-- 급여 대장  --%>
	<div class="table-container">
		<table class="pay">
			<thead>
				<tr>
					<th class="pay-head">帰属年月</th>
					<th class="pay-head">給与次数</th>
					<th class="pay-head">精算期間</th>
					<th class="pay-head">支払日</th>
					<th class="pay-head">人員</th>
					<th class="pay-head">総支払額</th>
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
