<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/holidaysSearchResult.png"
				width="50" height="50">
			<h1>休暇照会</h1>
		</div>
		<hr>

		<form method="get"
			action="${pageContext.request.contextPath}/holidaysSearchResult">
			<div class="search-container" style="margin-top: 30px;">
				<select name="vacationTypeName" id="vacationTypeName"
					onchange="handleSelectChange(this)">
					<option value="">休暇選択</option>
					<c:forEach items="${vacTypeList}" var="vacType">
						<option value="${vacType.vacationTypeName}">${vacType.vacationTypeName}</option>
					</c:forEach>
					<option value="navigateToDnLItemSet">休暇項目 設定</option>
				</select> <input type="text" name="searchKeyword" placeholder="検索項目　入力"
					value="${searchKeyword}"> <select name="status" id="status"
					style="margin-left: auto;">
					<option value="">在職状態</option>
					<c:forEach items="${statusList}" var="status">
						<option value="${status}">${status}</option>
					</c:forEach>
				</select> <select name="employmentType" id="employmentType">
					<option value="">区分別</option>
					<c:forEach items="${employmentTypeList}" var="employmentType">
						<option value="${employmentType}">${employmentType}</option>
					</c:forEach>
				</select> <select name="departmentId" class="reginput-select" id="departmentId">
					<option value="">部署別</option>
					<c:forEach items="${departmentList}" var="department">
						<option value="${department.departmentId}">${department.departmentName}</option>
					</c:forEach>
				</select> <select name="positionId" class="reginput-select" id="positionId">
					<option value="">職級別</option>
					<c:forEach items="${positionList}" var="position">
						<option value="${position.positionId}">${position.positionName}</option>
					</c:forEach>
				</select> <select name="viewCount" class="reginput-select">
					<option value="30" <c:if test="${viewCount == 30}">selected</c:if>>30個ずつ</option>
					<option value="50" <c:if test="${viewCount == 50}">selected</c:if>>50個ずつ</option>
					<option value="100"
						<c:if test="${viewCount == 100}">selected</c:if>>100個ずつ</option>
				</select>
				<button type="submit" class="cancel-btnn">照会</button>
			</div>
		</form>
		<table class="empRegister" style="width: 100%; margin-top: 10px;">
			<thead class="empRegister-head1">
				<tr>
					<th>区分</th>
					<th>社員番号</th>
					<th>氏名</th>
					<th>部署</th>
					<th>職級別</th>
					<th>休暇項目</th>
					<th>全体</th>
					<th>使用日数</th>
					<th>休暇残日数</th>
				</tr>
			</thead>
			<tbody class="empRegister-body"
				style="white-space: nowrap; text-align: center;">
				<c:forEach items="${vacList}" var="vacation">
					<tr data-toggle="modal" data-target="#vacationModal"
						data-employee-id="${vacation.employeeId}">
						<td>${vacation.employmentType}</td>
						<td>${vacation.employeeId}</td>
						<td>${vacation.koreanName}</td>
						<td>${vacation.departmentName}</td>
						<td>${vacation.positionName}</td>
						<td>${vacation.vacationTypeName}</td>
						<td>${vacation.totalVacationDays}</td>
						<td>${vacation.usedVacationDays}</td>
						<td>${vacation.remainingVacationDays}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="pagination">
			<button onclick="goToPage(${currentPage - 1})"
				<c:if test="${currentPage == 1}">disabled</c:if>>
				<span style="color: red;">&lt;</span>Prev
			</button>
			<c:forEach begin="1" end="${totalPages}" var="i">
				<button onclick="goToPage(${i})"
					<c:if test="${currentPage == i}">class="active"</c:if>>${i}</button>
			</c:forEach>
			<button onclick="goToPage(${currentPage + 1})"
				<c:if test="${currentPage == totalPages}">disabled</c:if>>
				Next<span style="color: red;">&gt;</span>
			</button>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="vacationModal" tabindex="-1" role="dialog"
	aria-labelledby="vacationModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="vacationModalLabel">休暇使用内訳</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="empRegister" style="width: 100%;">
					<thead class="empRegister-head1" style="white-space: nowrap;">
						<tr>
							<th>番号</th>
							<th>入力日</th>
							<th>休暇項目</th>
							<th>勤怠項目</th>
							<th>開始日</th>
							<th>終了日</th>
							<th>使用日数</th>
						</tr>
					</thead>
					<tbody class="empRegister-body" id="vacationUsageBody"
						style="white-space: nowrap; text-align: center;">
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<script>
function handleSelectChange(selectElement) {
    if (selectElement.value === "navigateToDnLItemSet") {
        window.location.href = '<%=request.getContextPath()%>/dnLItem';
    }
}

function goToPage(page) {
    const urlParams = new URLSearchParams(window.location.search);
    urlParams.set('page', page);
    window.location.search = urlParams.toString();
}

$('#vacationModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var employeeId = button.data('employee-id');
    console.log('Employee ID: ', employeeId); // 디버깅용 로그 추가

    $.ajax({
        url: '${pageContext.request.contextPath}/vacationUsage',
        type: 'GET',
        data: { employeeId: employeeId },
        success: function (data) {
            console.log('Data received: ', data); // 디버깅용 로그 추가
            var tbody = $('#vacationUsageBody');
            tbody.empty();
            var counter = 1;
            $(data).find('item').each(function() { // XML 데이터를 파싱하여 처리
                var vacationTypeName = $(this).find('vacationTypeName').text();
                var inputDate = $(this).find('inputDate').text();
                var attendanceTypeName = $(this).find('attendanceTypeName').text();
                var startDate = $(this).find('startDate').text();
                var endDate = $(this).find('endDate').text();
                var attendanceDays = $(this).find('attendanceDays').text();

                var row = '<tr>' +
                    '<td>' + counter++ + '</td>' +
                    '<td>' + inputDate + '</td>' +
                    '<td>' + vacationTypeName + '</td>' +
                    '<td>' + attendanceTypeName + '</td>' +
                    '<td>' + startDate + '</td>' +
                    '<td>' + endDate + '</td>' +
                    '<td>' + attendanceDays + '</td>' +
                    '</tr>';
                tbody.append(row);
            });
        },
        error: function() {
            alert('データの取得に失敗しました。');
        }
    });
});
</script>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>