<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				    <select name="vacationTypeName" class="reginput-select" id="vacationTypeName" onchange="handleSelectChange(this)">
                   
                    <option value="">休暇選択 </option>
                    <c:forEach items="${vacTypeList}" var="vacType">
                        <option value="${vacType.vacationTypeName}">${vacType.vacationTypeName}</option>
                    </c:forEach>
                     <option value="navigateToDnLItemSet">休暇項目 設定</option>
                </select> 
				<input type="text" class="reginput-input" name="searchKeyword" placeholder="検索項目　入力"
					value="${searchKeyword}"> <select name="status" class="reginput-select" id="status"
					style="margin-left: auto;">
					<option value="">在職</option>
					<c:forEach items="${statusList}" var="status">
						<option value="${status}">${status}</option>
					</c:forEach>
				</select> 
				<select name="employmentType" class="reginput-select" id="employmentType">
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
					<option value="100"<c:if test="${viewCount == 100}">selected</c:if>>100個ずつ</option>
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
			<tbody class="empRegister-body">
				<c:forEach items="${vacList}" var="vacation">
					<tr onclick="openDetails(${vacation.employeeId})">
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

<script>
function handleSelectChange(selectElement) {
    if (selectElement.value === "navigateToDnLItemSet") { 
        window.location.href = '<%= request.getContextPath() %>/dnLItem';
    }
}

function goToPage(page) {
	const urlParams = new URLSearchParams(window.location.search);
	urlParams.set('page', page);
	window.location.search = urlParams.toString();
        }
</script>




<%@ include file="/WEB-INF/views/includes/footer.jsp"%>