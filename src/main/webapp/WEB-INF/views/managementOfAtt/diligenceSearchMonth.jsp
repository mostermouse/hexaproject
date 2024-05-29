<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
/* 여기에 CSS 스타일링 추가 */
</style>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/diligenceSearchMonth.png"
				width="50" height="50">
			<h1>勤怠照会</h1>
		</div>
		<hr>
		<div class="search-container">
			<form style="margin-top: 60px;">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 400px;">
					<thead>
						<tr>
							<th style="width: 20px;"><input type="checkbox"></th>
							<th style="width: 80px;">入力日</th>
							<th style="width: 200px;"><input type="date"
								class="reginput-select"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>勤怠期間</td>
							<td style="height: 20px;"><input style="height: 20px;"
								type="date" class="reginput-select"><span>~</span><input
								style="height: 20px;" type="date" class="reginput-select"></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>部署</td>
							<td><select class="reginput-select">
									<option value="">選択してください。</option>
									<option value="1">社長室</option>
									<option value="2">開発チーム</option>
									<option value="3">コンテンツチーム</option>
									<option value="4">業務支援チーム</option>
									<option value="5">デザインチーム</option>
									<option value="6">管理チーム</option>
									<option value="7">企画戦略チーム</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>氏名</td>
							<td><input class="reginputhide1" placeholder="氏名を入力してください。"></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>勤怠グループ</td>
							<td><select class="reginput-select">
									<option value="">選択してください。</option>
									<option value="1">休暇</option>
									<option value="2">残業</option>
									<option value="3">遅刻・早退</option>
									<option value="4">特別勤務</option>
									<option value="5">その他</option>
							</select></td>
						</tr>

						<tr>
							<td><input type="checkbox"></td>
							<td>勤怠項目</td>
							<td><select class="reginput-select">
									<option value="">選択してください。</option>
									<option value="1">有給休暇</option>
									<option value="2">半休</option>
									<option value="3">遅刻</option>
									<option value="4">早退</option>
									<option value="5">外出</option>
									<option value="6">休日出勤</option>
									<option value="7">残業</option>
									<option value="8">報奨休暇</option>
									<option value="9">夜間勤務</option>
									<option value="10">特別休暇</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>休暇項目</td>
							<td><select class="reginput-select">
									<option value="">選択してください。</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>摘要</td>
							<td><input type="text" class="reginputhide1"
								placeholder="摘要があれば入力してください。"></td>
						</tr>
					</tbody>
				</table>
				<div class=divbtnsml style="margin-right: 120px;">
					<button>検索</button>
					<button class="cancel-btn">全体表示</button>
				</div>
			</form>

			<div>
				<table class="empRegister1e" style="margin-top: 60px; width: 100%;">
					<thead class="empRegister-head1">
						<tr>
							<th style="width: 100px;">入力日</th>
							<th style="width: 50px;">区分</th>
							<th style="width: 50px;">氏名</th>
							<th style="width: 85px;">部署</th>
							<th style="width: 37px;">職位</th>
							<th>勤怠記録</th>
							<th style="width: 200px;">勤怠期間</th>
							<th>勤怠日数</th>
							<th style="width: 70px;">金額</th>
							<th>摘要</th>
						</tr>
					</thead>

					<tbody class="empRegister-body">
						<c:forEach var="attendance" items="${attendanceList}">
							<tr>
								<td style="height: 30px;">${attendance.inputDate}</td>
								<td>${attendance.attendanceTypeName}</td>
								<td>${attendance.koreanName}</td>
								<td>${attendance.departmentName}</td>
								<td>${attendance.positionName}</td>
								<td>${attendance.attendanceTypeName}</td>
								<td>${attendance.startDate}~ ${attendance.endDate}</td>
								<td>${attendance.attendanceDays}</td>
								<td>${attendance.amount}</td>
								<td>${attendance.summary}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
