<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentPayList.png"
				width="50" height="50">
			<h1>사원별 급여내역</h1>
		</div>
		<hr>

		<form>
			<div class="search-container grey-box"
				style="margin-top: 30px; display: inline-block; width: 100%;">
				<span>*기간선택</span> <input type="date"><span>~</span><input
					type="date"> <span>*사원선택</span> <input>
				<button class="all-button" type="submit">급여내역조회</button>
			</div>
		</form>

		<table class="empRegisterr">
			<tbody class="empRegister-body">
				<c:forEach var="row" items="${listWageRecordEMP}">
					<tr>
						<c:forEach var="cell" items="${row}">
							<td style="text-align: center;">${cell}</td>
						</c:forEach>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="pagination">
			<button onclick="goToPage(${currentPage - 1})"
				<c:if test="${currentPage == 1}">disabled</c:if>>
				<span style="color: red;">&lt;</span>이전페이지
			</button>
			<c:forEach begin="1" end="${totalPages}" var="i">
				<button onclick="goToPage(${i})"
					<c:if test="${currentPage == i}">class="active"</c:if>>${i}</button>
			</c:forEach>
			<button onclick="goToPage(${currentPage + 1})"
				<c:if test="${currentPage == totalPages}">disabled</c:if>>
				다음페이지<span style="color: red;">&gt;</span>
			</button>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>