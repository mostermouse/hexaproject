<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentRegisterList.png"
				width="50" height="50">
			<h1>給与台帳</h1>
		</div>
		<hr>
		<form method="get">
			<div class="rectanglee sky-blue" style="margin-top: 20px;">
				<select class="reginput-select" name="employmentType">
					<option value="">選択してください。</option>
					<option value="正社員" ${param.employmentType == '正社員' ? 'selected' : ''}>正社員-</option>
					<option value="契約職" ${param.employmentType == '契約職' ? 'selected' : ''}>契約職</option>
					<option value="臨時職" ${param.employmentType == '臨時職' ? 'selected' : ''}>臨時職</option>
					<option value="派遣職" ${param.employmentType == '派遣職' ? 'selected' : ''}>派遣職</option>
					<option value="委嘱職" ${param.employmentType == '委嘱職' ? 'selected' : ''}>委嘱職</option>
					<option value="日雇い" ${param.employmentType == '日雇い' ? 'selected' : ''}>日雇い</option>
				</select> <select class="reginput-select" name="departmentId">
					<option value="부서 선택">選択</option>
					<c:forEach items="${department}" var="dept">
						<option value="${dept.departmentId}" ${param.departmentId == dept.departmentId ? 'selected' : ''}>${dept.departmentName}</option>
					</c:forEach>
				</select>
				<button class="all-button" type="submit">조회</button>
			</div>
			<div class="rectanglee dark-grayy"
				style="margin-bottom: 20px; width: 95%;">
				<span>*帰属年月</span> <input type="text" value="${param.yearMonth}"
					name="yearMonth" readonly="readonly"> <span>*給与次数</span> <input
					type="text" value="${param.wagePeriod}" name="wagePeriod"
					readonly="readonly"> <span>*精算期間</span> <input type="text"
					value="${listWageRecordInfo[0]} ~ ${listWageRecordInfo[1]}"
					readonly="readonly"> <span>*支払日</span> <input type="text"
					value="${listWageRecordInfo[2]}" readonly="readonly">
			</div>
		</form>

	</div>
	<div class="table-container">
		<table class="empRegisterr" style="width: 100%;">
			<tbody class="empRegister-body">
				<c:forEach var="row" items="${listWageRecordYMP}">
					<tr>
						<c:forEach var="cell" items="${row}">
							<td style="text-align: center; font-size: 12px;">${cell}</td>
						</c:forEach>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>