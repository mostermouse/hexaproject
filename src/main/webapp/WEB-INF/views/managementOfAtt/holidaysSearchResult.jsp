<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">

	<div class="container">
		<div class="table-container">
			<div class="header-container">
				<img
					src="<%=request.getContextPath()%>/resources/images/contentimages/head_2.jpg"
					alt="">
				<h1 id="section1">휴가조회</h1>
			</div>
			<h4>전체 사원 휴가현황을 한 번에 보실 수 있습니다. 사원별 상세 휴가내역도 확인할 수 있습니다.</h4>
			<hr>
			<br>

			<form method="get"
				action="${pageContext.request.contextPath}/holiday">
				<div class="filters">
					<select name="vacationTypeName" id="vacationTypeName">
						<option value="">휴가항목 선택</option>
						<c:forEach items="${vacTypeList}" var="vacType">
							<option value="${vacType.vacationTypeName}">${vacType.vacationTypeName}</option>
						</c:forEach>
					</select> <select name="status" id="status">
						<option value="">재직</option>
						<c:forEach items="${statusList}" var="status">
							<option value="${status}">${status}</option>
						</c:forEach>
					</select> <select name="employmentType" id="employmentType">
						<option value="">구분별</option>
						<c:forEach items="${employmentTypeList}" var="employmentType">
							<option value="${employmentType}">${employmentType}</option>
						</c:forEach>
					</select> <select name="departmentId" id="departmentId">
						<option value="">부서별</option>
						<c:forEach items="${departmentList}" var="department">
							<option value="${department.departmentId}">${department.departmentName}</option>
						</c:forEach>
					</select> <select name="positionId" id="positionId">
						<option value="">직급별</option>
						<c:forEach items="${positionList}" var="position">
							<option value="${position.positionId}">${position.positionName}</option>
						</c:forEach>
					</select> <select name="viewCount">
						<option value="30">30개씩 보기</option>
						<option value="50">50개씩 보기</option>
						<option value="100">100개씩 보기</option>
					</select>
					<button type="submit">조회</button>
				</div>
			</form>

			<table class="empRegister1">
				<thead>
					<tr>
						<th class="empRegister-head1">구분</th>
						<th class="empRegister-head1">사원번호</th>
						<th class="empRegister-head1">성명</th>
						<th class="empRegister-head1">부서</th>
						<th class="empRegister-head1">직위</th>
						<th class="empRegister-head1">휴가항목</th>
						<th class="empRegister-head1">전체</th>
						<th class="empRegister-head1">사용</th>
						<th class="empRegister-head1">잔여</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${vacList}" var="vacation">
					<tr class="holiday-body">
						<td class="empRegister-body" style="text-align: center;">${vacation.employmentType}</td>
						<td class="empRegister-body" style="text-align: center;">${vacation.employeeId}</td>
						<td class="empRegister-body" style="text-align: center;">${vacation.koreanName}</td>
						<td class="empRegister-body" style="text-align: center;">${vacation.departmentName}</td>
						<td class="empRegister-body" style="text-align: center;">${vacation.positionName}</td>
						<td class="empRegister-body" style="text-align: center;">${vacation.vacationTypeName}</td>
						<td class="empRegister-body" style="text-align: center; font-weight:bold;">${vacation.totalVacationDays}</td>
						<td class="empRegister-body" style="text-align: center; color:#3166ff;">${vacation.usedVacationDays}</td>
						<td class="empRegister-body" style="text-align: center; color:#cb0000;">${vacation.remainingVacationDays}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pagination">
				<button><span class="pagination-symbol">&lt;</span> 이전페이지</button>
				<span>1</span>
				<button>다음페이지 <span class="pagination-symbol">&gt;</span></button>
			</div>
		</div>
    </div>
</div>



	<!-- <script>
		document.getElementById('vacationTypeSelect').addEventListener(
				'change', function() {
					if (this.value === 'setting') {
						window.location.href = '/vacationSettingPage'; // Change this to the actual URL of the vacation setting page
					}
				});
	</script> -->

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>