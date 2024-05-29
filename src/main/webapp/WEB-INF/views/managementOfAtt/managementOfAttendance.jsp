<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<th style="width: 20px;"><input type="checkbox" id="selectAll"></th>
							<th>区分</th>
							<th>社員番号</th>
							<th>氏名</th>
							<th>部署</th>
							<th>職位</th>
							<th>勤怠記録</th>
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
								<td><button type="button"
										onclick="document.getElementById('attendanceModal${status.count}').style.display='block'">勤怠記録</button></td>
							</tr>
							<!-- Modal Structure -->
							<div id="attendanceModal${status.count}" class="modal">
								<div class="modal-content">
									<span class="close">&times;</span>
									<div>
										<h2>사원별 근퇴기록</h2>
										<p id="employeeInfo">이름: ${attlist.koreanName} (사원 번호: ${attlist.employeeId}) 부서: ${attlist.departmentName} 직책: ${attlist.positionName}</p>
										<div style="display: flex; flex-direction: column;">
											<div style="display: flex; align-items: center;">
												<div
													style="margin-left: auto; display: flex; align-items: center;">
													<select id="selectYear">

														<%-- 여기에 년도 옵션을 동적으로 추가할 수 있습니다. --%>
														<c:forEach var="year" begin="2000" end="2100">
															<option value="${year}">${year}</option>
														</c:forEach>
													</select> <label for="selectYear" style="margin-right: 5px;">년도</label>
												</div>
												<div
													style="margin-left: 10px; display: flex; align-items: center;">
													<select id="selectMonth">
														<%-- 여기에 월 옵션을 동적으로 추가할 수 있습니다. --%>
														<c:forEach var="month" begin="1" end="12">
															<option value="${month}">${month}</option>
														</c:forEach>
													</select> <label for="selectMonth" style="margin-right: 5px;">월</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
// JavaScript to handle modal functionality
document.addEventListener('DOMContentLoaded', function() {
    // Get all close buttons with the "close" class
    var closeButtons = document.querySelectorAll('.close');

    // Add click event listener to each close button
    closeButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            // Find the parent modal of the clicked button
            var modal = button.closest('.modal');
            
            // Hide the modal
            modal.style.display = 'none';
        });
    });
});


document.getElementById('selectAll').addEventListener('click', function() {
    var checkboxes = document.querySelectorAll('.selectItem');
    for (var checkbox of checkboxes) {
        checkbox.checked = this.checked;
    }
});

function updateEmployeeId(checkbox) {
    var row = checkbox.closest('tr');
    var employeeId = row.querySelector('td:nth-child(3)').textContent;
    document.getElementsByName('employeeId')[0].value = employeeId;
}

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

function validateForm() {
    var attendanceType = document.getElementById('attendanceType').value;
    if (attendanceType === "0") {
        alert("근태항목을 선택해주세요.");
        return false;
    }
    return true;
}

function resetForm() {
    document.getElementById('attendanceForm').reset();
}
</script>
