<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/managementOfAttendance.png"
				width="50" height="50">
			<h1>근태기록/관리</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-right">
				<select class="reginput-select">
					<option value="">선택해주세요.</option>
				</select>
				<br>
				<table class="empRegister1">
					<thead class="empRegister-head1">
						<tr>
							<th>구분</th>
							<th>사원번호</th>
							<th>성명</th>
							<th>부서</th>
							<th>직위</th>
							<th>근태기록</th>
						</tr>
					</thead>
					<tbody class="empRegister-body">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>

			<form style="margin-top: 60px;">
				<table class=empRegisterblack style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th style="width: 50px;">입력일자</th>
							<th><input type="date" class="reginput-select"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>근태항목</td>
							<td><select>
							<option value="">선택하세요.</option> 
							</select></td>
						</tr>
						<tr>
							<td>기간</td>
							<td><input style="width: 70px; padding: 5px;" type="date" class="reginput-select">~<input style="width: 70px; padding: 5px;" type="date" class="reginput-select"></td>
						</tr>
						<tr>
							<td>근태일수</td>
							<td></td>
						</tr>
						<tr>
							<td>금액(수당)</td>
							<td></td>
						</tr>
						<tr>
							<td>적요</td>
							<td><input class="reginputhide1" placeholder="적요가 있으신 경우 입력해주세요."></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml" style="margin-left: 50px;">
					<button>저장</button>
					<button class="cancel-btn">내용 지우기</button>
				</div>
			</form>

		</div>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
