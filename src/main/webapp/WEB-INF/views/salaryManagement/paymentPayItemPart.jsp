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

		<form>
			<div class="search-container grey-box" style="margin-top: 30px; display: inline-block; width: 100%;">
				<span>*기간선택</span>
				<input type="month"><span>~</span><input type="month">
				<span>*항목선택</span>
				<select>
					<option value="">급여항목 선택</option>
					<option value="">기본급</option>
					<option value="">식비</option>
					<option value="">보육수당</option>
					<option value="">직책수당</option>
					<option value="">차량유지비</option>
					<option value="">근속수당</option>
					<option value="">당직수당</option>
					<option value="">식비</option>
					<option value="">근태수당</option>
					<option value="">휴일수당</option>
				</select>
				<button class="all-button" type="submit">급여내역조회</button>
			</div>
		</form>
		
		<div>
			<table class="empRegister2">
				<thead>
					<tr>
						<th class="empRegister-head1">구분</th>
						<th class="empRegister-head1">성명</th>
						<th class="empRegister-head1">부서</th>
						<th class="empRegister-head1">직위</th>
						<th style="background-color: black; color: white;">합계</th>
					</tr>
				</thead>
					<tr>
						<td class="empRegister-body"></td>
						<td class="empRegister-body"></td>
						<td class="empRegister-body"></td>
						<td class="empRegister-body"></td>
						<td class="empRegister-head1"></td>
					</tr>
					<tr>
						<td colspan="4" style="background-color: #ffffdf">합계</td>
					</tr>
				<tbody>
					<tr>
					
					</tr>
				</tbody>
			</table>
		</div>
		
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>