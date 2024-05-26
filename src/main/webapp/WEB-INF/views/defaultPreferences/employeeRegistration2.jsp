<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">

	<div class="floating-container">
		<table class="floating-table">
			<thead>
				<tr>
					<th class="head">사원번호</th>
					<th class="body"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="head">성명</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">부서</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">직위</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">입사일</td>
					<td class="body"></td>
				</tr>
			</tbody>
		</table>
		<h3 style="text-align: left;">사원정보1</h3>
		<div class="button-container">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section1'">기본정보</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section2'">부양가족</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section3'">학력</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section4'">경력</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section5'">병력</button>
			<button style="background-color: #f3f3f3; cursor: default;"></button>
		</div>
		<hr>
		<h3 style="text-align: left;">사원정보2</h3>
		<div class="button-container">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section6'">자격면허</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section7'">교육훈련</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section8'">상벌</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section9'">발령</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section10'">추천신원보증</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section11'">퇴직</button>
		</div>
	</div>
	<!-- 이 페이지로 넘어가게 할때 url은 /personnel/employeeIns2이걸로 해주세요!! -->
	<!-- 여기 안에다가 테이블등등 작성해주세요 -->
	<h3 id="section6">자격면허</h3>
	<h3 id="section7">교육훈련</h3>
	<h3 id="section8">상벌</h3>
	<h3 id="section9">발령</h3>
	<h3 id="section10">추천신원보증</h3>
	<h3 id="section11">퇴직</h3>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>