<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentPayItemPart.png"
				width="50" height="50">
			<h1>항목별 대장</h1>
		</div>
		<hr>

		<form id="dateForm">
			<div class="search-container grey-box"
				style="margin-top: 30px; display: inline-block; width: 100%;">
				<span>*기간선택</span> <input type="month" class="reginput-select"> <span>~</span> <input
					type="month" class="reginput-select"> <span>*항목선택</span> 
				<select class="reginput-select">
					<option value="">급여항목 선택</option>
					<option value="기본급">기본급</option>
					<option value="식비">식비</option>
					<option value="보육수당">보육수당</option>
					<option value="직책수당">직책수당</option>
					<option value="차량유지비">차량유지비</option>
					<option value="근속수당">근속수당</option>
					<option value="당직수당">당직수당</option>
					<option value="근태수당">근태수당</option>
					<option value="휴일수당">휴일수당</option>
				</select>
				<button class="all-button" type="submit">급여내역조회</button>
			</div>
		</form>

	</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>