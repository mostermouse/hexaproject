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
			<h1>ユーザー情報</h1>
		</div>
		<hr>

		<div class="search-container">
			<div class="title-table-left">
				<h3>会社情報</h3>
				<table style="max-width: 800px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">相互名</th>
							<th class="empRegister-body"><input class="reginputhide"></th>
							<th class="empRegister-head1">代表者職級/代表者</th>
							<th class="empRegister-body">
								<select class="reginput-select"></select>/<input class="reginput">
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">事業者番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">法人登録番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">設立日</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">ホームページ</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">事業所の住所</td>
							<td colspan="3" class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">電話番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">ファックス番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">業態</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">種目</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="title-table-left">
				<h3>担当者情報</h3>
				<table style="max-width: 320px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">氏名</th>
							<th class="empRegister-body"><input class="reginputhide"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">部署</td>
							<td class="empRegister-body"><select class="reginput-select"></select></td>
						</tr>
						<tr>
							<td class="empRegister-head1">役職</td>
							<td class="empRegister-body"><select class="reginput-select"></select></td>
						</tr>
						<tr>
							<td class="empRegister-head1">電話番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">携帯電話番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
						<tr>
							<td class="empRegister-head1">Eメール</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<br><br><br>
		<div class="search-container">
			<div class="title-table-left">
				<h3>給与支払情報</h3>
				<table style="max-width: 800px" class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">給与計算期間</th>
							<th class="empRegister-body" colspan="2" style="width: 300px;">
								<select class="reginput-select">
									<option value="">選択</option>
									<option value="">当月</option>
									<option value="">前月</option>
								</select>
								<select class="reginput-select">
									<option value="">選択</option>
								</select>
								~
								<select class="reginput-select">
									<option value="">選択</option>
									<option value="">当月</option>
									<option value="">前月</option>
								</select>
								<select class="reginput-select">
									<option value="">選択</option>
								</select>
							</th>
							<th class="empRegister-head1">給与支払日</th>
							<th class="empRegister-body" colspan="2"><select class="reginput-select">
									<option value="">選択</option>
									<option value="">当月</option>
									<option value="">前月</option>
								</select>
								<select class="reginput-select">
									<option value="">選択</option>
								</select>日</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-head1">金融機関</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">口座番号</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
							<td class="empRegister-head1">預金株</td>
							<td class="empRegister-body"><input class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<br><br>
		<div class="divbtn">
			<button type="submit">保存</button>
			<button type="submit" class="cancel-btn">キャンセル</button>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>