<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>


<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentMnt.png"
				width="50" height="50">
			<h1>급여입력/관리</h1>
		</div>
		<hr>
		<div class="form-container">
			<div class="red-box">
				<label>*귀속연월</label> <select class="reginput-select">
					<c:forEach var="y" begin="2010"
						end="<%=java.time.LocalDate.now().getYear()%>">
						<option value="${y}"
							<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
					</c:forEach>
				</select> <select class="monthSelect reginput-select">
					<option value="">선택</option>
				</select> <br> <label>*급여차수</label> <select class="reginput-select">
					<option value="">선택해주세요</option>
				</select>
			</div>
			<div class="grey-box">
				<label for="calc-date-start">*정산기간</label> <input type="date"
					class="reginput-select"> ~ <input type="date"
					class="reginput-select"> <br> <label>*급여지급일</label> <input
					type="date" class="reginput-select">
			</div>
		</div>

		<div class="search-container">
			<div class="title-table-right">
				<table class="empRegister1" style="margin-top: 50px;">
					<thead class="empRegister-head1">
						<tr style="text-align: center;">
							<th>구분</th>
							<th>성명</th>
							<th>부서</th>
							<th>지급총액</th>
							<th>공제금액</th>
							<th>실지급액</th>
						</tr>
					</thead>

					<tbody class="empRegister-body">
						<tr style="text-align: center;">
							<td></td>
							<td></td>
							<td></td>
							<td style="text-align: right; color: blue;"></td>
							<td style="text-align: right; color: red;"></td>
							<td style="text-align: right;"></td>
						</tr>
					</tbody>
				</table>
			</div>

			<form style="margin-top: 50px;">
				<table class="empRegisterblack" style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr style="background-color: #f1f1f1">
							<th colspan="2" style="text-align: center;">지급항목</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>기본급</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>식비</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>보육수당</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>직책수당</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>차량유지비</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>근속수당</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>당직수당</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>상여금</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>휴일수당</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="계산방법" style="width: 97%;"></td>
						</tr>
						<tr style="background-color: #f1f1f1">
							<td colspan="1">지급총액</td>
							<td style="text-align: right; color: blue;"></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml" style="margin-left: 50px;">
					<button type="submit">저장</button>
					<button type="button" class="cancel-btn" onclick="resetForm()">내용
						지우기</button>
				</div>
			</form>
		</div>
		<hr style="margin-top: 50px;">

		<div class="table-container">
			<div class="header-container">
				<h3>급여 종합정보</h3>
			</div>


		</div>
		<div class="rectangle-container">
			<div class="rectangle dark-gray">
				<span class="text-left">월합계</span> <span class="text-right">건</span>
			</div>
			<div class="rectangle sky-blue">
				<span class="text-left">지급 총액</span> <span class="text-right">원</span>
			</div>
			<div class="rectangle orange">
				<span class="text-left">공제 총액</span> <span class="text-right">원</span>
			</div>
			<div class="rectangle gray">
				<span class="text-left">실지급액</span> <span class="text-right">원</span>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>