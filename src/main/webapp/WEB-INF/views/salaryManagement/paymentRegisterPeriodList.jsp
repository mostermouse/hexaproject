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
			<h1>급여대장</h1>
		</div>
		<hr>
		<form>
			<div class="rectanglee sky-blue" style="margin-top: 20px;">
				<select class="reginput-select"">
					<option value="전체">전체</option>
				</select>
				<select class="reginput-select">
					<option value="부서 선택">부서 선택</option>
				</select>
				<select class="reginput-select">
					<option value="전체">전체</option>
				</select>
			</div>
			<div class="rectanglee dark-grayy" style="margin-bottom: 20px; width: 95%;">
				<span>*귀속연도</span>
				<input type="text" value="귀속연도값" readonly="readonly">
				<span>*급여차수</span>
				<input type="text" value="급여차수값" readonly="readonly">
				<span>*정산기간</span>
				<input type="text" value="정산기간값" readonly="readonly">
				<span>*지급일</span>
				<input type="text" value="지급일값" readonly="readonly">
			</div>
		</form>
	
		<table class="empRegisterr">
			<tbody class="empRegister-body">
				<c:forEach var="row" items="${listWageRecordYMP}">
					<tr>
						<c:forEach var="cell" items="${row}">
							<td style="text-align: center;">${cell}</td>
						</c:forEach>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>