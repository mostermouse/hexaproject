<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentPayList.png"
				width="50" height="50">
			<h1>社員別給与内訳</h1>
		</div>
		<hr>

		<form>
			<div class="search-container grey-box"
				style="margin-top: 30px; display: inline-block; width: 100%;">
				<span>*期間選択</span> <input type="date"
					name="settlementPeriodStartDate"
					value="${param.settlementPeriodStartDate}"> <span>~</span>
				<input type="date" name="settlementPeriodEndDate"
					value="${param.settlementPeriodEndDate}"> <span>*社員選択</span>
				<input id="employeeName" onclick="openModal()" name="employeeName"
					value="${param.employeeName}" readonly> <input
					type="hidden" id="employeeId" name="employeeId"
					value="${employeeId}">
				<button class="all-button" type="submit">給与明細照会</button>
			</div>
		</form>
		
		<c:if test="${not empty listWageRecordEMP}">
			<table class="empRegisterr">
				<tbody class="empRegister-body">
					<c:forEach var="row" items="${listWageRecordEMP}">
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

<!-- 모달 창 -->
<div id="employeeModal" class="modal">
	<div class="modal-content">
		<span class="close" onclick="closeModal()">&times;</span>
		<h2>社員選択</h2>
		<table class="empRegisterr">
			<thead class="empRegister-head1">
				<tr>
					<th>区分</th>
					<th>社員番号</th>
					<th>氏名</th>
					<th>部署</th>
					<th>職位</th>
					<th>状態</th>
					<th>選択</th>
				</tr>
			</thead>
			<tbody class="empRegister-body">
				<c:forEach items="${employeeList}" var="emp">
					<tr>
						<td>${emp.employmentType}</td>
						<td>${emp.employeeId}</td>
						<td>${emp.koreanName}</td>
						<td>${emp.departmentName}</td>
						<td>${emp.positionName}</td>
						<td>${emp.status}</td>
						<td><button type="button" class="all-button"
								onclick="selectEmployee('${emp.employeeId}', '${emp.koreanName}')">선택</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<!-- 모달 창 스타일 -->
<style>
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 60px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 5% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 40%;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

<!-- 모달 창 스크립트 -->
<script>
	// 모달 요소를 가져옵니다.
	var modal = document.getElementById('employeeModal');

	document.addEventListener('DOMContentLoaded', function() {
		// 검색창 요소를 가져옵니다.
		var searchInput = document.getElementById('employeeName');

		// 검색창을 클릭했을 때 모달을 열도록 이벤트 리스너를 추가합니다.
		searchInput.addEventListener('click', function() {
			openModal();
		});

		// 모달 외부를 클릭했을 때 모달이 닫히도록 이벤트 리스너를 추가합니다.
		window.addEventListener('click', function(event) {
			if (event.target == modal) {
				closeModal();
			}
		});
	});

	function openModal() {
		document.getElementById('employeeModal').style.display = 'block';
	}

	function closeModal() {
		document.getElementById('employeeModal').style.display = 'none';
	}

	function selectEmployee(id, name) {
		document.getElementById('employeeName').value = name;
		document.getElementById('employeeId').value = id;
		closeModal();
	}
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>