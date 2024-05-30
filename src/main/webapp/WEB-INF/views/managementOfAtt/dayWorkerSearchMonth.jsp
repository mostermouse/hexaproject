<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/dayWorkerSearchMonth.png"
				width="50" height="50">
			<h1>日雇い勤務の照会</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-right">
				<form id="searchForm" style="margin-top: 60px;"
					action="/dayWorkerSearchMonth" method="get">
					<table class="empRegisterblack"
						style="margin-bottom: 20px; width: 400px;">
						<thead>
							<tr>
								<!-- <th style="width: 20px;"><input type="checkbox"></th> -->
								<th style="width: 80px;">勤務日</th>
								<th style="width: 200px;"><input type="date"
									class="reginput-select" name="inputDate"></th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td>氏名</td>
								<td style="height: 20px;"><input type="text"
									placeholder="氏名を入力してください" class="reginputhide1"
									name="koreanName"></td>
							</tr>
							<tr>

								<td>部署</td>
								<td><select class="reginput-select" name="departmentName">
										<option value="0">選択してください</option>
										<c:forEach var="department" items="${departmentList}">
											<option value="${department.departmentName}">${department.departmentName}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>

								<td>現場 / プロジェクト</td>
								<td><select class="reginput-select" name="name">
										<option value="0">選択してください</option>
										<c:forEach var="feildOrProject" items="${feildOrProjectList}">
											<option value="${feildOrProject.name}">${feildOrProject.name}</option>
										</c:forEach>
								</select></td>
							</tr>
						</tbody>
					</table>

					<div class=divbtnsml style="margin-right: 120px;">
						<button type="button" onclick="searchSpecific()">検索</button>
						<button type="button" onclick="searchAll()" class="cancel-btn">全体表示</button>
					</div>
				</form>
			</div>

			<div>
				<table class="empRegister1" style="margin-top: 60px;">
					<thead class="empRegister-head1">
						<tr>
							<th>勤務日</th>
							<th>社員ID</th>
							<th>氏名</th>
							<th>部署名</th>
							<th>現場 / プロジェクト</th>
							<th>給与</th>
						</tr>
					</thead>

					<tbody class="empRegister-body">
						<c:forEach items="${Dj}" var="dj">
							<tr>
								<td>${dj.inputDate}</td>
								<td>${dj.employeeId}</td>
								<td>${dj.koreanName}</td>
								<td>${dj.departmentName}</td>
								<td>${dj.name}</td>
								<td>${dj.amount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<div class="page-buttons">
					<c:forEach begin="1" end="${totalPages}" var="i">
						<button onclick="goToPage(${i})"
							<c:if test="${currentPage == i}">class="active"</c:if>>${i}</button>
					</c:forEach>
				</div>
				<%--  <div class="navigation-buttons">
        <button onclick="goToPage(${currentPage - 1})"
            <c:if test="${currentPage == 1}">disabled</c:if>>
            <span style="color: red;">&lt;</span> Prev
        </button>
        <button onclick="goToPage(${currentPage + 1})"
            <c:if test="${currentPage == totalPages}">disabled</c:if>>
            Next <span style="color: red;">&gt;</span>
        </button>
    </div> --%>
			</div>
		</div>
	</div>
</div>

<script>
	function searchSpecific() {
		document.getElementById("searchForm").submit();
	}

	function searchAll() {
		const baseUrl = window.location.origin + window.location.pathname;
		window.location.href = baseUrl;
	}
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
