<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/dnLItemSet.png"
				width="50" height="50">
			<h1>休暇/勤怠設定</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>休暇項目の設定</h3>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">休暇項目</th>
							<th class="empRegister-head1">適用期間</th>
							<th class="empRegister-head1">使用可否</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vacationType" items="${vacationTypes}">
							<tr class="table-row" data-id="${vacationType.vacationTypeId}"
								data-name="${vacationType.vacationTypeName}"
								data-period1="${vacationType.applyPeriod1}"
								data-period2="${vacationType.applyPeriod2}"
								data-usage="${vacationType.usage}">
								<td class="empRegister-body">${vacationType.vacationTypeName}</td>
								<fmt:parseDate value="${vacationType.applyPeriod1}"
									pattern="yyyy-MM-dd" var="vacationPeriod1" type="date" />
								<fmt:parseDate value="${vacationType.applyPeriod2}"
									pattern="yyyy-MM-dd" var="vacationPeriod2" type="date" />
								<td class="empRegister-body"><fmt:formatDate
										value="${vacationPeriod1}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
										value="${vacationPeriod2}" pattern="yyyy-MM-dd" /></td>
								<td class="empRegister-body" style="text-align: center;"><c:choose>
										<c:when test="${vacationType.usage}">O</c:when>
										<c:otherwise>X</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<form id="vacationForm" method="post" style="margin-top: 60px;">
				<input type="hidden" id="vacationTypeId" name="vacationTypeId">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th style="width: 70px;"><label for="vacationTypeName">休暇項目</label></th>
							<th><input type="text" id="vacationTypeName"
								name="vacationTypeName" required></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label for="applyPeriod1">適用期間</label></td>
							<td style="display: flex; align-items: center;"><input
								type="date" id="applyPeriod1" name="applyPeriod1" required>
								~ <input type="date" id="applyPeriod2" name="applyPeriod2"
								required></td>
						</tr>
						<tr>
							<td><label for="usage">使用可否</label></td>
							<td><select id="usage" name="usage">
									<option value="true">使用</option>
									<option value="false">使用なし</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button type="submit" onclick="submitForm('/addDnlItem')">追加</button>
					<button type="submit" onclick="submitForm('/updateDnlItem')">修整</button>
					<button class="cancel-btn" type="submit"
						onclick="submitForm('/deleteDnlItem')">削除</button>
					<button class="cancel-btn" type="reset">内容消去</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	function submitForm(action) {
		var form = document.getElementById('vacationForm');
		form.action = action;
	}

	document.addEventListener('DOMContentLoaded', function() {
		var rows = document.querySelectorAll('.table-row');
		rows.forEach(function(row) {
			row.addEventListener('click', function() {
				document.getElementById('vacationTypeId').value = this
						.getAttribute('data-id');
				document.getElementById('vacationTypeName').value = this
						.getAttribute('data-name');
				document.getElementById('applyPeriod1').value = this
						.getAttribute('data-period1');
				document.getElementById('applyPeriod2').value = this
						.getAttribute('data-period2');
				document.getElementById('usage').value = this
						.getAttribute('data-usage') === 'true';
			});
		});
	});
</script>
<div id="content">
	<div class="table-container">
		<div class="header-container"></div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>勤怠項目設定</h3>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">勤怠項目</th>
							<th class="empRegister-head1">単位</th>
							<th class="empRegister-head1">グループ管理</th>
							<th class="empRegister-head1">休暇控除</th>
							<th class="empRegister-head1">使用可否</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="attendanceType" items="${attendanceTypes}">
							<tr class="table-row"
								data-id="${attendanceType.attendanceTypeId}"
								data-name="${attendanceType.attendanceTypeName}"
								data-unit="${attendanceType.unit}"
								data-group="${attendanceType.group}"
								data-deduction="${attendanceType.deduction}"
								data-workingHour="${attendanceType.workingHour}"
								data-usage="${attendanceType.usage}">
								<td class="empRegister-body">${attendanceType.attendanceTypeName}</td>
								<td class="empRegister-body">${attendanceType.unit}</td>
								<td class="empRegister-body">${attendanceType.group}</td>
								<td class="empRegister-body">${attendanceType.deduction}</td>
								<td class="empRegister-body" style="text-align: center;"><c:choose>
										<c:when test="${attendanceType.usage}">O</c:when>
										<c:otherwise>X</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<form id="attendanceForm" method="post" style="margin-top: 60px;">
				<input type="hidden" id="attendanceTypeId" name="attendanceTypeId">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th style="width: 70px;"><label for="attendanceTypeName">勤怠項目</label></th>
							<th><input type="text" id="attendanceTypeName"
								name="attendanceTypeName" required></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label for="unit">単位</label></td>
							<td><select id="unit" name="unit">
									<option value="">選択してください。</option>
									<option value="일">日</option>
									<option value="시간">時間</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="group">勤怠グループ</label></td>
							<td><select id="group" name="group">
									<option value="">選択してください。</option>
									<option value="휴가">休暇</option>
									<option value="연장근무">延長勤務</option>
									<option value="지각조퇴">遅刻早退</option>
									<option value="특근">特別勤務</option>
									<option value="기타">その他</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="deduction">休暇控除</label></td>
							<td><select id="deduction" name="deduction">
									<option value="">選択してください。</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="workingHour">労働時間連携</label></td>
							<td><select id="workingHour" name="workingHour">
									<option value="">選択してください。</option>
									<option value="소정근로">所定労働</option>
									<option value="연장근로">延長労働</option>
									<option value="야간근로">夜間労働</option>
									<option value="휴일근로">休日労働</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="usage">使用可否</label></td>
							<td><select id="usage" name="usage">
									<option value="true">使用</option>
									<option value="false">使用なし</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button type="submit" onclick="submitForm('/addAttItem')">追加</button>
					<button type="submit" onclick="submitForm('/updateAttItem')">修整</button>
					<button class="cancel-btn" type="submit"
						onclick="submitForm('/deleteAtteItem')">削除</button>
					<button class="cancel-btn" type="reset">内容消去</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	function submitForm(action) {
		var form = document.getElementById('attendanceForm');
		form.action = action;
	}

	document.addEventListener('DOMContentLoaded', function() {
		var rows = document.querySelectorAll('.table-row');
		rows.forEach(function(row) {
			row.addEventListener('click', function() {
				document.getElementById('attendanceTypeId').value = this
						.getAttribute('data-id');
				document.getElementById('attendanceTypeName').value = this
						.getAttribute('data-name');
				document.getElementById('unit').value = this
						.getAttribute('data-unit');
				document.getElementById('group').value = this
						.getAttribute('data-group');
				document.getElementById('deduction').value = this
						.getAttribute('data-deduction');
				document.getElementById('workingHour').value = this
						.getAttribute('data-workingHour');
				document.getElementById('usage').value = this
						.getAttribute('data-usage') === 'true';
			});
		});
	});
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
