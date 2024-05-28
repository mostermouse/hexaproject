<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/employeeMnt.png"
				width="50" height="50">
			<h1>社員の現況/管理</h1>
		</div>
			<hr>
		<div>
			<table class="tg">
				<thead>
					<tr>
						<th class="tg-ev56">在職者</th>
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
						<th class="tg-c5zh">正社員</th>
						<th class="tg-c5zh">契約職</th>
						<th class="tg-c5zh">臨時職</th>
						<th class="tg-c5zh">派遣職</th>
						<th class="tg-c5zh">委嘱職</th>
						<th class="tg-c5zh">日雇い</th>

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
					</tr>
				</tbody>
			</table>
			<table class="tg">
				<thead>
					<tr>
						<th class="tg-c5zh">退社者</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="tg-jc02">${resigned}</td>
					</tr>
				</tbody>
			</table>
			<table class="tg">
				<thead>
					<tr>
						<th class="tg-c5zh">全体</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="tg-jc02">${allemployees}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<table class="empRegister1" style="max-width: 1557px; margin-top: 30px;">
			<tr class="empRegister-head1">
				<th>区分</th>
				<th>入社日</th>
				<th>社員番号</th>
				<th>氏名(漢字)</th>
				<th>部署</th>
				<th>職位</th>
				<th>住民番号</th>
				<th>携帯電話</th>
				<th>メール</th>
				<th>退社日</th>
				<th>状態</th>
			</tr>
			<c:forEach items="${list}" var="employee">
				<tr class="empRegister-body">
					<td>${employee.employmentType}</td>
					<td>${employee.hireDate}</td>
					<td>${employee.employeeId}</td>
					<td>${employee.koreanName}</td>
					<td>${employee.departmentName}</td>
					<td>${employee.positionName}</td>
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