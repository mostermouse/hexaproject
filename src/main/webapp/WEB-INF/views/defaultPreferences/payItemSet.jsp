<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/payItemSet.png"
				width="50" height="50">
			<h1>급여항목 설정</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>지급항목 설정</h3>
				<table class="empRegister1">
					<thead class="empRegister-head1">
						<tr>
							<th>지급항목</th>
							<th>과세여부</th>
							<th>비과세한도액</th>
							<th>절사단위</th>
							<th>근태연결/일괄지급</th>
							<th>사용여부</th>
						</tr>
					</thead>
					<tbody class="empRegister-body">
						<tr>
							<td>기본급</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>

			<form style="margin-top: 60px;">
				<table class=empRegisterblack style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th>지급항목</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>과세여부</td>
							<td></td>
						</tr>
						<tr>
							<td>비과세명</td>
							<td></td>
						</tr>
						<tr>
							<td>비과세 한도액</td>
							<td></td>
						</tr>
						<tr>
							<td>계산방법</td>
							<td></td>
						</tr>
						<tr>
							<td>절사단위</td>
							<td></td>
						</tr>
						<tr>
							<td>근태연결/일괄지급</td>
							<td></td>
						</tr>
						<tr>
							<td>일괄지급액</td>
							<td></td>
						</tr>
						<tr>
							<td>사용여부</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button>추가</button>
					<button>수정</button>
					<button class="cancel-btn">삭제</button>
					<button class="cancel-btn">내용 지우기</button>
				</div>
			</form>

		</div>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>