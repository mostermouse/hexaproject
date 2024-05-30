<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">
	<style>
.input-container {
	position: relative; /* 부모 요소를 기준으로 자식 요소 위치를 설정하기 위해 사용 */
}

.placeholder-text {
	color: red; /* 빨간색 */
	opacity: 0.5; /* 희미하게 */
	font-size: 12px; /* 텍스트 크기 */
	position: absolute; /* 절대 위치 지정 */
	top: 50%; /* 수직 중앙 정렬 */
	left: 10px; /* 좌측 패딩 */
	transform: translateY(-50%); /* 수직 중앙 정렬 */
	pointer-events: none; /* 텍스트가 클릭되지 않도록 설정 */
}

.reginputhide {
	position: relative; /* 상대 위치 지정 */
	z-index: 1; /* 입력 필드가 텍스트 위에 오도록 설정 */
	background: transparent; /* 배경 투명 설정 */
	color: transparent; /* 텍스트 투명 설정 */
}
</style>
	<div class="floating-container">
		<table class="floating-table">
			<thead>
				<tr>
					<th class="head">社員番号</th>
					<th class="body"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="head">氏名</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">部署</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">役職</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">入社日</td>
					<td class="body"></td>
				</tr>
			</tbody>
		</table>
		<h3 style="text-align: left;">社員情報1</h3>
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section1'">基本情報</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section6'">扶養家族</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section3'">学歴</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section4'">キャリア</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section5'">兵力</button>
		</div>
		<hr>
		<h3 style="text-align: left;">社員情報2</h3>
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section6'">資格免許</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section7'">教育訓練</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section8'">賞罰</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section9'">発令</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section10'">推奨身元保証</button>
		</div>
	</div>



	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/employeeMnt.png"
				alt="" width="50" height="50">
			<h1 id="section1">社員登録</h1>
		</div>
		<h4>社員情報を登録するメニューです。該当する項目だけを入力してください。 （*表示は必須入力事項)</h4>
		<hr>
		<br>
		<form id="registerForm2" action="/employeeregistration" method="post">



			<!-- Employee Table -->
			<div class="header-container">
				<h3 id="section2">基本情報</h3>
			</div>
			<table class="empRegister">
				<tr>
					<th class="empRegister-head1">社員番号</th>
					<th class="empRegister-body">
						<div class="input-container">
							<input type="number" id="employeeId" name="employeeId"
								class="reginputhide" readonly> <span
								class="placeholder-text">自動入力されます</span>
						</div>
					</th>
					<th class="empRegister-head1"><span style="color: #FE0000">*</span>雇用形態</th>
					<th class="empRegister-body"><select id="employmentType"
						name="employmentType" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="正社員">正社員</option>
							<option value="契約職">契約職</option>
							<option value="臨時職">臨時職</option>
							<option value="派遣職">派遣職</option>
							<option value="委嘱職">委嘱職</option>
							<option value="日雇い">日雇い</option>
					</select></th>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span>日本名</td>
					<td class="empRegister-body"><input type="text"
						id="koreanName" name="koreanName" class="reginputhide1" required></td>
					<td class="empRegister-head1">英語名</td>
					<td class="empRegister-body"><input type="text"
						id="englishName" name="englishName" class="reginputhide1"></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span>入社日</td>
					<td class="empRegister-body"><input type="date" id="hireDate"
						name="hireDate" class="reginput-select"></td>
					<td class="empRegister-head1">退社日</td>
					<td class="empRegister-body"><input type="date"
						id="resignationDate" name="resignationDate"
						class="reginput-select"></td>
				</tr>
				<tr>
					<td class="empRegister-head1">部署</td>
					<td class="empRegister-body"><select id="departmentId"
						name="departmentId" class="reginput-select">
							<option value="">選択</option>
							<c:forEach items="${department}" var="dept">
								<option value="${dept.departmentId}">${dept.departmentName}</option>
							</c:forEach>
					</select></td>
					<td class="empRegister-head1">役職</td>
					<td class="empRegister-body"><select id="positionId"
						name="positionId" class="reginput-select">
							<option value="">選択</option>
							<c:forEach items="${position}" var="posi">
								<option value="${posi.positionId}">${posi.positionName}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td class="empRegister-head1">内/外国人</td>
					<td class="empRegister-body"><select id="foreignOrDomestic"
						name="foreignOrDomestic" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="内国人">内国人</option>
							<option value="外国人">外国人</option>
					</select></td>
					<td class="empRegister-head1">個人別固有番号</td>
					<td class="empRegister-body"><input type="text"
						id="residentNumber1" name="residentNumber1" class="reginput">-<input
						type="text" id="residentNumber2" name="residentNumber2"
						class="reginput"></td>
				</tr>
				<tr>
					<td class="empRegister-head2">住所</td>
					<td class="empRegister-body" colspan="3"><input type="text"
						id="address" name="address" class="reginputhide1"></td>
				</tr>
				<tr>
					<td class="empRegister-head2">電話番号</td>
					<td class="empRegister-body"><input type="text" id="telPhone"
						name="telPhone" class="reginputhide1"></td>
					<td class="empRegister-head2">携帯電話番号</td>
					<td class="empRegister-body"><input type="text" id="mobile"
						name="mobile" class="reginputhide1"></td>
				</tr>
				<tr>
					<td class="empRegister-head2">メール</td>
					<td class="empRegister-body"><input type="text" id="email"
						name="email" class="reginputhide1"></td>
					<td class="empRegister-head2">SNS</td>
					<td class="empRegister-body"><input type="text" id="sns"
						name="sns" class="reginputhide1"></td>
				</tr>
				<tr>
					<td class="empRegister-head2">その他 詳細情報</td>
					<td class="empRegister-body"><input type="text"
						id="otherDetails" name="otherDetails" class="reginputhide1"></td>
					<td class="empRegister-head2">状態</td>
					<td class="empRegister-body"><select id="status" name="status"
						class="reginput-select">
							<option value="在職">在職</option>
							<option value="退社">退社</option>
					</select></td>
				</tr>
			</table>
			<br> <br>
			<hr>
			<div class="table-container">
			<div class="grey-box" style="height: 30px;">
				<h2>社員情報1</h2>
			</div>
			</div>
			<div class="table-container">
				<div class="header-container">
					<!-- Dependents Table -->
					<h3 id="section6">扶養家族</h3>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 100px;">関係</th>
							<th class="empRegister-head1" style="width: 100px;">氏名</th>
							<th class="empRegister-head1" style="width: 100px;">区分</th>
							<th class="empRegister-head1" style="width: 270px;">個人別固有番号</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="relationship"
								name="relationship" class="reginput-select">
									<option value="">選択してください。</option>
									<option value="配偶者">配偶者</option>
									<option value="息子">息子</option>
									<option value="娘">娘</option>
									<option value="父">父</option>
									<option value="母">母</option>
									<option value="兄弟">兄弟</option>
									<option value="姉妹">姉妹</option>
									<option value="妻の父">妻の父</option>
									<option value="妻の母">妻の母</option>
									<option value="夫の父">夫の父</option>
									<option value="夫の母">夫の母</option>
									<option value="祖父">祖父</option>
									<option value="祖母">祖母</option>
									<option value="孫">孫</option>
									<option value="孫娘">孫娘</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								id="parentsName" name="parentsName" class="reginputhide1"></td>
							<td class="empRegister-body"><select id="foreignOrDomestic1"
								name="foreignOrDomestic1" class="reginput-select">
									<option value="">選択してください。</option>
									<option value="国内">国内</option>
									<option value="外国人">外国人</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								id="parentsNumber1" name="parentsNumber1" class="reginput">
								- <input type="text" id="parentsNumber2" name="parentsNumber2"
								class="reginput"></td>
						</tr>
					</tbody>
				</table>
				<!-- Degree Table -->
				<h3 id="section3">学歴</h3>

				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 85px;">区分</th>
							<th class="empRegister-head1" style="width: 140px;">入学年月</th>
							<th class="empRegister-head1" style="width: 140px;">卒業年月</th>
							<th class="empRegister-head1">学校名</th>
							<th class="empRegister-head1">専攻</th>
							<th class="empRegister-head1" style="width: 75px;">履修</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="graduate"
								name="graduate" class="reginput-select">
									<option value="">選択</option>
									<option value="小学校">小学校</option>
									<option value="中学校">中学校</option>
									<option value="高校">高校</option>
									<option value="大学">大学</option>
									<option value="修士">修士</option>
									<option value="博士">博士</option>
							</select></td>
							<td class="empRegister-body"><input type="date"
								id="admissionDate" name="admissionDate" class="reginput-select"></td>
							<td class="empRegister-body"><input type="date"
								id="graduationDate" name="graduationDate"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								id="schoolName" name="schoolName" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text" id="major"
								name="major" class="reginputhide1"></td>
							<td class="empRegister-body"><select id="completion"
								name="completion" class="reginput-select">
									<option value="">選択</option>
									<option value="卒業">卒業</option>
									<option value="修了">修了</option>
									<option value="自退">自退</option>
									<option value="在学中">在学中</option>
							</select></td>
						</tr>
					</tbody>
				</table>


				<!-- Career Table -->
				<h3 id="section4">経歴</h3>

				<table class="empRegister1">
					<!-- 입사일 퇴사일 안눌려요 센빠이 -->
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 85px;">会社名</th>
							<th class="empRegister-head1" style="width: 140px;">入社日</th>
							<th class="empRegister-head1" style="width: 140px;">退社日</th>
							<th class="empRegister-head1">勤務期間</th>
							<th class="empRegister-head1">最終職位</th>
							<th class="empRegister-head1">担当職務</th>
							<th class="empRegister-head1">退職事由</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="text"
								id="companyName" name="companyName" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="date"
								id="startDate" name="startDate" class="reginput-select"></td>
							<td class="empRegister-body"><input type="date" id="endDate"
								name="endDate" class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								id="employmentPeriod" name="employmentPeriod"
								class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="finalPosition" name="finalPosition" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="responsibilities" name="responsibilities"
								class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="reasonForResignation" name="reasonForResignation"
								class="reginputhide1"></td>
						</tr>
					</tbody>
				</table>

				<!-- MilitaryService Table -->
				<h3 id="section5">兵役</h3>

				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 60px;">兵役区分</th>
							<th class="empRegister-head1" style="width: 70px;">軍の種類</th>
							<th class="empRegister-head1" style="width: 140px;">服務期間(から)</th>
							<th class="empRegister-head1" style="width: 140px;">服務期間(まで)</th>
							<th class="empRegister-head1">最終階級</th>
							<th class="empRegister-head1">兵科</th>
							<th class="empRegister-head1">未了の事由</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="serviceType"
								name="serviceType" class="reginput-select">
									<option value="">選択</option>
									<option value="転役">転役</option>
									<option value="未了">未了</option>
							</select></td>
							<td class="empRegister-body"><select id="branch"
								name="branch" class="reginput-select">
									<option value="">選択</option>
									<option value="陸軍">陸軍</option>
									<option value="海軍">海軍</option>
									<option value="空軍">空軍</option>
									<option value="常備軍">常備軍</option>
									<option value="免除">免除</option>
									<option value="その他">その他</option>
							</select></td>
							<td class="empRegister-body"><input type="date"
								id="servicePeriod1" name="servicePeriod1" class="reginput-select"></td>
							<td class="empRegister-body"><input type="date"
								id="servicePeriod2" name="servicePeriod2" class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								id="finalRank" name="finalRank" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="department1" name="department1" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="exemptionReason" name="exemptionReason" class="reginputhide1"></td>
						</tr>
					</tbody>
				</table>
				<!-- Submit Button -->
				<br>
				<div class="divbtn">
					<button type="submit">登録</button>
				</div>
			</div>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
