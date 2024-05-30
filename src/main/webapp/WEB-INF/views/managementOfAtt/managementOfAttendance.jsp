<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
/* Modal styling */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 0 auto; /* 가로 가운데 정렬 */
	margin-top: 10%; /* 수직 가운데 정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

.modal-content table {
	width: 100%;
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

.table-container {
	display: flex;
	flex-direction: column;
	max-width: 100%; /* 테이블이 부모 요소 내에서 최대 크기를 가지도록 설정 */
	overflow-x: auto; /* 가로 스크롤을 표시하여 내용이 넘칠 때 스크롤 할 수 있도록 함 */
}

.table-row {
	display: flex;
	flex-direction: row;
}

.table-cell {
	border: 1px solid #000;
	padding: 5px 10px;
	flex: 1;
	white-space: nowrap; /* 텍스트가 잘리지 않고 한 줄로 표시되도록 함 */
}
</style>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/managementOfAttendance.png"
				width="50" height="50">
			<h1>勤怠記録/管理</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-right">
				<select class="reginput-select">
					<option value="">상태별</option>
					<option value="">재직</option>
					<option value="">퇴직</option>
				</select> <br>
				<table class="empRegister1">
					<thead class="empRegister-head1">
						<tr>
							<th style="width: 100px;"><input type="checkbox" id="selectAll">全体選択</th>
							<th>区分</th>
							<th>社員番号</th>
							<th>氏名</th>
							<th>部署</th>
							<th>職位</th>
						</tr>
					</thead>
					<tbody class="empRegister-body">
						<c:forEach items="${attendancelist}" var="attlist"
							varStatus="status">
							<tr class="AttRegister-body" id="attlist">
								<td><input type="checkbox" class="selectItem"
									onchange="updateEmployeeId(this)"></td>
								<td>${attlist.employmentType}</td>
								<td>${attlist.employeeId}</td>
								<td>${attlist.koreanName}</td>
								<td>${attlist.departmentName}</td>
								<td>${attlist.positionName}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<form id="attendanceForm" method="post"
				action="${pageContext.request.contextPath}/addDiligenceMnt"
				style="margin-top: 50px;" onsubmit="return validateForm()">
				<table class="empRegisterblack"
					style="margin-bottom: 10px; width: 410px;">
					<thead>
						<tr>
							<th style="width: 80px;">入力日</th>
							<th><input id="inputDate" name="inputDate" type="date"
								class="reginput-select" required></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>勤怠項目</td>
							<td><select class="reginput-select" id="attendanceType"
								name="attendanceTypeId" onchange="calculateAttendanceTime()"
								required>
									<option value="0">選択してください。</option>
									<c:forEach var="attendanceType" items="${attendanceTypeList}">
										<option value="${attendanceType.attendanceTypeId}">${attendanceType.attendanceTypeName}</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td>期間</td>
							<td><input id="startDate" name="startDate" type="date"
								class="reginput-select" onchange="calculateAttendanceTime()"
								required> ~ <input id="endDate" name="endDate"
								type="date" class="reginput-select"
								onchange="calculateAttendanceTime()" required></td>
						</tr>
						<tr>
							<td>勤怠日数</td>
							<td style=""><input style="width: 80%;" id="attendanceDays"
								name="attendanceDays" class="reginputhide1" readonly /><span>日</span></td>
						</tr>
						<tr>
							<td>金額(手当)</td>
							<td><input id="amount" name="amount" class="reginputhide1"
								placeholder="支給手当に該当する場合入力してください"></td>
						</tr>
						<tr>
							<td>摘要</td>
							<td><input id="summary" name="summary" class="reginputhide1"
								placeholder="摘要がある場合は入力してください"></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="employeeId" />
				<div class="divbtnsml" style="margin-left: 120px;">
					<button type="submit">保存</button>
					<button type="button" class="cancel-btn" onclick="resetForm()">内容消去</button>
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

<script>
// 모두 선택 기능
document.getElementById('selectAll').addEventListener('click', function() {
    var checkboxes = document.querySelectorAll('.selectItem');
    for (var checkbox of checkboxes) {
        checkbox.checked = this.checked;
    }
    document.querySelector('form#attendanceForm button[type="submit"]').disabled = !this.checked;
});

// 직원 선택에 따라 직원 ID를 업데이트하는 함수
function updateEmployeeId(checkbox) {
    var row = checkbox.closest('tr');
    var employeeId = row.querySelector('td:nth-child(3)').textContent;
    document.getElementsByName('employeeId')[0].value = employeeId;
}

// 근태 기간 계산 함수
function calculateAttendanceTime() {
    var attendanceType = document.getElementById('attendanceType').value;
    var startDate = document.getElementById('startDate').value;
    var endDate = document.getElementById('endDate').value;
    var attendanceDays = document.getElementById('attendanceDays');

    if (attendanceType !== "0" && startDate && endDate) {
        var start = new Date(startDate);
        var end = new Date(endDate);
        var timeDiff = end - start;
        var daysDiff = Math.ceil(timeDiff / (1000 * 60 * 60 * 24)) + 1;

        if (attendanceType === "早退") {
            daysDiff = 1;
        }

        attendanceDays.value = daysDiff;
    } else {
        attendanceDays.value = "";
    }
}

// 폼 유효성 검사 함수
function validateForm() {
    var attendanceType = document.getElementById('attendanceType').value;
    var employeeId = document.getElementsByName('employeeId')[0].value;
    
    // 근태 유형이 선택되었는지 확인
    if (attendanceType === "0") {
        alert("근태 항목을 선택해주세요.");
        return false;
    }
    
    // 어떤 직원이 선택되었는지 확인
    if (employeeId === "") {
        alert("사원을 선택해주세요.");
        return false;
    }
    
    return true;
}

// 폼 리셋 함수
function resetForm() {
    document.getElementById('attendanceForm').reset();
    document.querySelector('form#attendanceForm button[type="submit"]').disabled = true;
}
</script>



<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
