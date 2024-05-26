<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<style>
.form-container {
	display: flex;
}

.red-box, .grey-box {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 7px;
	padding-right: 7px;
	display: flex;
	align-items: center;
}

.red-box {
	background-color: red;
	color: white;
}

.grey-box {
	background-color: #a6a6a6;
	color: black;
}

.red-box label, .grey-box label {
	margin-right: 10px;
}

.red-box select, .grey-box input, .grey-box select {
	margin-right: 10px;
}
</style>
<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentMnt.png"
				width="50" height="50">
			<h1>급여입력/관리</h1>
		</div>
		<hr>
		<div class="form-container">
			<div class="red-box">
				<label>*귀속연월</label> <select class="reginput-select">
					<c:forEach var="y" begin="2010"
						end="<%=java.time.LocalDate.now().getYear()%>">
						<option value="${y}"
							<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
					</c:forEach>
				</select> <select class="monthSelect reginput-select">
					<option value="">선택</option>
				</select> <br> <label>*급여차수</label> <select class="reginput-select">
					<option value="">선택해주세요</option>
				</select>
			</div>
			<div class="grey-box">
				<label for="calc-date-start">*정산기간</label> <input type="date"
					class="reginput-select"> ~ <input type="date"
					class="reginput-select"> <br> <label>*급여지급일</label> <input
					type="date" class="reginput-select">
			</div>
		</div>

		<div class="search-container" style="margin-top: 50px;">
			<table class="empRegister1">
				<thead>
					<tr>
						<th class="empRegister-head1">구분</th>
						<th class="empRegister-head1">성명</th>
						<th class="empRegister-head1">부서</th>
						<th class="empRegister-head1">지급총액</th>
						<th class="empRegister-head1">공제총액</th>
						<th class="empRegister-head1">실지급액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="empRegister-body"></td>
						<td class="empRegister-body"></td>
						<td class="empRegister-body"></td>
						<td style="color: blue;" class="empRegister-body"></td>
						<td style="color: red;" class="empRegister-body"></td>
						<td class="empRegister-body"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>