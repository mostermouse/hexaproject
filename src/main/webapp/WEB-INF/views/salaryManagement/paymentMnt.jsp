<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>


<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentMnt.png"
				width="50" height="50">
			<h1>給与入力/管理</h1>
		</div>
		<hr>
		<div class="form-container">
			<div class="red-box">
				<label>*帰属年月</label> <select class="reginput-select">
					<c:forEach var="y" begin="2010"
						end="<%=java.time.LocalDate.now().getYear()%>">
						<option value="${y}"
							<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
					</c:forEach>
				</select> <select class="monthSelect reginput-select">
					<option value="">選択</option>
				</select> <br> <label>*給与次数</label> <select class="reginput-select">
					<option value="">선택해주세요</option>
				</select>
			</div>
			<div class="grey-box">
				<label for="calc-date-start">*精算期間</label> <input type="date"
					class="reginput-select"> ~ <input type="date"
					class="reginput-select"> <br> <label>*給与支払日</label> <input
					type="date" class="reginput-select">
			</div>
		</div>

		<div class="search-container">
			<div class="title-table-right">
				<table class="empRegister1" style="margin-top: 50px;">
					<thead class="empRegister-head1">
						<tr style="text-align: center;">
							<th>区分</th>
							<th>氏名</th>
							<th>部署</th>
							<th>支払総額</th>
							<th>控除額</th>
							<th>実支給額</th>
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
							<th colspan="2" style="text-align: center;">支給項目</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>基本給</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>食費</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>保育手当</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>職責手当</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>車両維持費</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>勤続手当</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>当直手当</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>賞与金</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr>
							<td>休日手当</td>
							<td><input type="text" style="width: 95%;"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="計算方法" style="width: 97%;"></td>
						</tr>
						<tr style="background-color: #f1f1f1">
							<td colspan="1">支払総額</td>
							<td style="text-align: right; color: blue;"></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml" style="margin-left: 50px;">
					<button type="submit">保存</button>
					<button type="button" class="cancel-btn" onclick="resetForm()">内容消去</button>
				</div>
			</form>
		</div>
		<hr style="margin-top: 50px;">

		<div class="table-container">
			<div class="header-container">
				<h3>給与総合情報</h3>
			</div>


		</div>
		<div class="rectangle-container">
			<div class="rectangle dark-gray">
				<span class="text-left">月合計</span> <span class="text-right">件</span>
			</div>
			<div class="rectangle sky-blue">
				<span class="text-left">支払総額</span> <span class="text-right">円</span>
			</div>
			<div class="rectangle orange">
				<span class="text-left">控除総額</span> <span class="text-right">円</span>
			</div>
			<div class="rectangle gray">
				<span class="text-left">実支給額</span> <span class="text-right">円</span>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>