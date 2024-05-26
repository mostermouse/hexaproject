<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<style>
.divbtn {
	text-align: center;
}

.divbtn button {
	background-color: #007bff;
	border: none;
	color: #fff;
	padding: 20px 60px;
	border-radius: 10px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin: 0 20px;
}

.divbtn button:hover {
	background-color: #0056b3;
}

.divbtn .cancel-btn {
	background-color: #6c757d;
	color: #fff;
}

.divbtn .cancel-btn:hover {
	background-color: #5a6268;
}
</style>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img src="<%=request.getContextPath()%>/resources/images/contentimages/membersInfo.png" width="50" height="50">
			<h1>사용자 정보</h1>
		</div>
		<hr>

		<div class="search-container">
			<div class="title-table-left">
				<h3>회사정보</h3>
				<table style="max-width: 800px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">상호</th>
							<th class="empRegister-body"><input class="reginputhide"></th>
							<th class="empRegister-head1">대표자직급/대표자</th>
							<th class="empRegister-body">
								<select class="reginput-select"></select>/<input class="reginput">
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">사업자번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">법인등록번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">설립일</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">홈페이지</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">사업장 주소</td>
							<td colspan="3" class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">전화번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">팩스번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">업태</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">종목</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="title-table-left">
				<h3>담당자정보</h3>
				<table style="max-width: 320px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">성명</th>
							<th class="empRegister-body"><input class="reginputhide"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">부서</td>
							<td class="empRegister-body"><select class="reginput-select"></select></td>
						</tr>
						<tr>
							<td class="empRegister-head1">직위</td>
							<td class="empRegister-body"><select class="reginput-select"></select></td>
						</tr>
						<tr>
							<td class="empRegister-head1">전화번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">휴대폰번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">이메일</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<br><br><br>
		<div class="search-container">
			<div class="title-table-left">
				<h3>급여지급정보</h3>
				<table style="max-width: 800px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">급여 산정기간</th>
							<th class="empRegister-body" colspan="2" style="width: 300px;">
								<select class="reginput-select">
									<option value="">선택</option>
									<option value="">당월</option>
									<option value="">전월</option>
								</select>
								<select class="reginput-select">
									<option value="">선택</option>
								</select>
								~
								<select class="reginput-select">
									<option value="">선택</option>
									<option value="">당월</option>
									<option value="">전월</option>
								</select>
								<select class="reginput-select">
									<option value="">선택</option>
								</select>
							</th>
							<th class="empRegister-head1">급여지급일</th>
							<th class="empRegister-body" colspan="2"><select class="reginput-select">
									<option value="">선택</option>
									<option value="">당월</option>
									<option value="">익월</option>
								</select>
								<select class="reginput-select">
									<option value="">선택</option>
								</select>일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">금융기관</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">계좌번호</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">예금주</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<br><br>
		<div class="divbtn">
			<button type="submit">저장</button>
			<button type="submit" class="cancel-btn">취소</button>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>