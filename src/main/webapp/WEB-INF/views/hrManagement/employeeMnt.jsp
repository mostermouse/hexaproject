<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
    <div class="table-container1">
		<h3>Employee Count</h3>
		<table class="tg">
			<thead>
				<tr>
					<th class="tg-ev56">재직자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${employed}</td>
				</tr>
			</tbody>
		</table>

		<table class="tg">
			<thead>
				<tr>
					<th class="tg-c5zh">정규직</th>
					<th class="tg-c5zh">계약직</th>
					<th class="tg-c5zh">임시직</th>
					<th class="tg-c5zh">파견직</th>
					<th class="tg-c5zh">위촉직</th>
					<th class="tg-c5zh">일용직</th>
					<th class="tg-c5zh">퇴사자</th>
					<th class="tg-c5zh">전체</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${regular}</td>
					<td class="tg-jc02">${contract}</td>
					<td class="tg-jc02">${temporary}</td>
					<td class="tg-jc02">${dispatched}</td>
					<td class="tg-jc02">${appointed}</td>
					<td class="tg-jc02">${daily}</td>
					<td class="tg-jc02">${resigned}</td>
					<td class="tg-jc02">${allemployees}</td>
				</tr>
			</tbody>
		</table>
	</div>
    <div>
        <table border="1">
            <tr>
                <th>구분</th>
                <th>입사일</th>
                <th>사원번호</th>
                <th>성명(한글)</th>
                <th>부서</th>
                <th>직위</th>
                <th>주민번호</th>
                <th>휴대폰</th>
                <th>이메일</th>
                <th>퇴사일</th>
                <th>상태</th>
            </tr>
            <c:forEach items="${list}" var="employee">
                <tr>
                    <td>${employee.employmentType}</td>
                    <td>${employee.hireDate}</td>
                    <td>${employee.employeeId}</td>
                    <td>${employee.koreanName}</td>
                    <td>${employee.departmentId}</td>
                    <td>${employee.positionId}</td>
                    <td>${employee.residentNumber1}-${employee.residentNumber2}</td>
                    <td>${employee.telPhone}</td>
                    <td>${employee.email}</td>
                    <td>${employee.resignationDate}</td>
                    <td>${employee.status}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>