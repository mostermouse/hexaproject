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
			<h1>有休/出勤設定</h1>
			<link rel="stylesheet" type="text/css"
				href="<%=request.getContextPath()%>/resources/css/modal.css">
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>有休項目設定</h3>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">有休項目</th>
							<th class="empRegister-head1">適用期間</th>
							<th class="empRegister-head1">従業員ごとの有休日数</th>
							<th class="empRegister-head1">使用可否</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vacationType" items="${vacationTypes}">
							<tr class="table-row" data-id="${vacationType.vacationTypeId}"
								data-name="${vacationType.vacationTypeName}"
								data-period1="${vacationType.applyPeriod1}"
								data-period2="${vacationType.applyPeriod2}"
								data-usage="${vacationType.usage}" data-type="vacation">
								<td class="empRegister-body">${vacationType.vacationTypeName}</td>
								<td class="empRegister-body">${vacationType.applyPeriod1}~${vacationType.applyPeriod2}</td>
								<td class="empRegister-body" style="text-align: center;">
									<button type="button"
										onclick="manageEmployeeVacation('${vacationType.vacationTypeId}')">管理</button>
								</td>
								<td class="empRegister-body" style="text-align: center;">
									${vacationType.usage ? 'O' : 'X'}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<form id="vacationForm" method="post">
				<input type="hidden" id="vacationTypeId" name="vacationTypeId">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th style="width: 70px;"><label for="vacationTypeName">有休項目</label></th>
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
									<option value="false">使用不可</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button type="button"
						onclick="submitVacationForm('/createDnlItem')">追加</button>
					<button type="button"
						onclick="submitVacationForm('/updateDnlItem')">修正</button>
					<button type="button" onclick="deleteItem()">削除</button>
					<button class="cancel-btn" type="reset">内容をクリア</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
    function submitVacationForm(action) {
        var form = document.getElementById('vacationForm');
        form.action = action;
        form.submit();
    }

    document.addEventListener('DOMContentLoaded', function() {
        var rows = document.querySelectorAll('.table-row');
        rows.forEach(function(row) {
            row.addEventListener('click', function() {
                // 有休項目か出勤項目かを確認
                var type = this.getAttribute('data-type');
                // 対応する情報を取得して入力フィールドに設定
                if (type === 'vacation') {
                    document.getElementById('vacationTypeId').value = this.getAttribute('data-id');
                    document.getElementById('vacationTypeName').value = this.getAttribute('data-name');
                    document.getElementById('applyPeriod1').value = this.getAttribute('data-period1');
                    document.getElementById('applyPeriod2').value = this.getAttribute('data-period2');
                    document.getElementById('usage').value = this.getAttribute('data-usage') === 'true' ? 'true' : 'false';
                } else if (type === 'attendance') {
                    document.getElementById('attendanceTypeId').value = this.getAttribute('data-id');
                    document.getElementById('attendanceTypeName').value = this.getAttribute('data-name');
                    document.getElementById('unit').value = this.getAttribute('data-unit');
                    document.getElementById('attendanceGroupId').value = this.getAttribute('data-attendanceGroupId');
                    document.getElementById('vacationTypeId').value = this.getAttribute('data-vacationTypeId');
                    document.getElementById('usage').value = this.getAttribute('data-usage') === 'true' ? 'true' : 'false';
                }
            });
        });
    });

    function deleteItem() {
        var vacationTypeId = document.getElementById('vacationTypeId').value;
        fetch('/deleteDnlItem?id=' + vacationTypeId, {
            method: 'DELETE'
        }).then(response => {
            if (response.redirected) {
                window.location.href = response.url;
            }
        }).catch(error => console.error('Error deleting item:', error));
    }

    
    function manageEmployeeVacation(vacationTypeId) {
        // この関数は従業員の有休日数を管理するのに使用されます。
        console.log("有休タイプIDに対する従業員の有休日数管理: " + vacationTypeId);
    }
</script>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<link rel="stylesheet" type="text/css"
				href="<%=request.getContextPath()%>/resources/css/modal.css">
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>出勤項目設定</h3>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">出勤項目</th>
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
								data-vacationTypeId="${vacationType.vacationTypeId}"
								data-usage="${attendanceType.usage}"
								data-attendanceGroupId="${attendanceType.attendanceGroupId}"
								data-type="attendance">
								<td class="empRegister-body">${attendanceType.attendanceTypeName}</td>
								<td class="empRegister-body">${attendanceType.unit}</td>
								<td class="empRegister-body">${attendanceType.attendanceGroupId}</td>
								<td class="empRegister-body">${vacationType.vacationTypeId}</td>
								<td class="empRegister-body" style="text-align: center;"><c:choose>
										<c:when test="${attendanceType.usage}">O</c:when>
										<c:otherwise>X</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<form id="attendanceForm" method="post">
				<input type="hidden" id="attendanceTypeId" name="attendanceTypeId">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th style="width: 70px;"><label for="attendanceTypeName">出勤項目</label></th>
							<th><input type="text" id="attendanceTypeName"
								name="attendanceTypeName" required></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label for="unit">単位</label></td>
							<td><select id="unit" name="unit">
									<option value="">選んでください。</option>
									<option value="日">日</option>
									<option value="時間">時間</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="attendanceGroupId">グループ管理</label></td>
							<td><select id="attendanceGroupId" name="attendanceGroupId">
									<c:forEach var="attendanceGroup" items="${attendanceGroups}">
										<option value="${attendanceGroup.attendanceGroupId}">${attendanceGroup.attendanceGroupName}</option>
									</c:forEach>
							</select>
								<button type="button" onclick="manageGroup()">管理</button></td>
						</tr>
						<tr>
							<td><label for="vacationTypeId">休暇控除</label></td>
							<td><select id="vacationTypeId" name="vacationTypeId">
									<c:forEach var="vacationType" items="${vacationTypes}">
										<option value="${vacationType.vacationTypeId}">${vacationType.vacationTypeName}</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td><label for="usage">使用可否</label></td>
							<td><select id="usage" name="usage">
									<option value="true">使用</option>
									<option value="false">使用不可</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button type="button"
						onclick="submitAttendanceForm('/createAttItem')">追加</button>
					<button type="button"
						onclick="submitAttendanceForm('/updateAttItem')">修正</button>
					<button class="cancel-btn" type="button" onclick="deleteAttItem()">削除</button>
					<button class="cancel-btn" type="reset">内容をクリア</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
    function submitAttendanceForm(action) {
        var form = document.getElementById('attendanceForm');
        form.action = action;
        form.submit();
    }

    function deleteAttItem() {
        var attendanceTypeId = document.getElementById('attendanceTypeId').value;
        fetch('/deleteAttItem?id=' + attendanceTypeId, {
            method: 'DELETE'
        }).then(response => {
            if (response.redirected) {
                window.location.href = response.url;
            }
        }).catch(error => console.error('Error deleting item:', error));
    }

    function manageGroup() {
        // グループ管理機能を実装するJavaScript関数
        console.log("グループ管理機能の呼び出し");
    }
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
