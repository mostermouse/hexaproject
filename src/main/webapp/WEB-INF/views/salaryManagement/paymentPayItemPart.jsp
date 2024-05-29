<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentPayItemPart.png"
				width="50" height="50">
			<h1>項目別台帳</h1>
		</div>
		<hr>

		<form id="dateForm">
			<div class="search-container grey-box"
				style="margin-top: 30px; display: inline-block; width: 100%;">
				<span>*期間選択</span> <input type="month"
					name="settlementPeriodStartDate"
					value="${param.settlementPeriodStartDate}"> <span>~</span>
				<input type="month" name="settlementPeriodEndDate"
					value="${param.settlementPeriodEndDate}"> <span>*項目選択</span>
				<select name="wageTypeId">
					<option value="">給与項目選択</option>
					<c:forEach items="${wageType}" var="wt">
						<option value="${wt.wageTypeId}"
							${wt.wageTypeId == param.wageTypeId ? 'selected' : ''}>${wt.wageTypeName}</option>
					</c:forEach>
				</select>
				<button class="all-button" type="submit">給与明細照会</button>
			</div>
		</form>
		
		<c:if test="${not empty listWageRecordWT}">
			<table class="empRegisterr">
				<tbody class="empRegister-body">
					<c:forEach var="row" items="${listWageRecordWT}">
						<tr>
							<c:forEach var="cell" items="${row}">
								<td style="text-align: center;">${cell}</td>
							</c:forEach>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		
	</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>