<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">

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
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section2'">扶養家族</button>
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
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section6'">資格免許</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section7'">教育訓練</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section8'">賞罰</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section9'">発令</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section10'">推奨身元保証</button>
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
		<form id="registerForm"
			action="${pageContext.request.contextPath}/employeeregistration"
			method="post" onsubmit="return validateForm()">



			<!-- Employee Table -->
			<div class="header-container">
				<h3 id="section2">基本情報</h3>
			</div>
			<table class="empRegister">
				<tr>
					<th class="empRegister-head1"><label for="employeeId">社員番号</label></th>
					<th class="empRegister-body"><input type="number"
						id="employeeId" name="EmployeeEntity.employeeId" class="reginputhide" required></th>
					<th class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="employmentType">雇用形態</label></th>
					<th class="empRegister-body"><select id="employmentType"
						name="EmployeeEntity.employmentType" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="정규직">正社員</option>
							<option value="계약직">契約職</option>
							<option value="임시직">臨時職</option>
							<option value="파견직">派遣職</option>
							<option value="위촉직">委嘱職</option>
							<option value="일용직">日雇い</option>
					</select></th>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="koreanName">日本名</label></td>
					<td class="empRegister-body"><input type="text"
						id="koreanName" name="EmployeeEntity.koreanName" class="reginputhide" required></td>
					<td class="empRegister-head1"><label for="englishName">英語名</label></td>
					<td class="empRegister-body"><input type="text"
						id="englishName" name="EmployeeEntity.englishName" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="hireDate">入社日</label></td>
					<td class="empRegister-body"><input type="date" id="hireDate"
						name="EmployeeEntity.hireDate" class="reginput-select"></td>
					<td class="empRegister-head1"><label for="resignationDate">退社日</label></td>
					<td class="empRegister-body"><input type="date"
						id="resignationDate" name="EmployeeEntity.resignationDate"
						class="reginput-select"></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><label for="departmentName">부서</label></td>
					<td class="empRegister-body"><select id="department"
						name="DepartmentEntity.departmentName" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="사장실">社長室</option>
							<option value="개발팀">開発チーム</option>
							<option value="콘텐츠팀">コンテンツチーム</option>
							<option value="업무지원팀">業務支援チーム</option>
							<option value="디자인팀">デザインチーム</option>
							<option value="관리팀">管理チーム</option>
							<option value="기획전략팀">企画戦略チーム</option>
					</select></td>
					<td class="empRegister-head1"><label for="position">役職</label></td>
					<td class="empRegister-body"><select id="positionName"
						name="PositionEntity.positionName" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="이사">取締役</option>
							<option value="차장">次長</option>
							<option value="사장">社長</option>
							<option value="부장">部長</option>
							<option value="과장">課長</option>
							<option value="대리">代理</option>
							<option value="주임">主任</option>
							<option value="사원">社員</option>
							<option value="실장">室長</option>
					</select></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><label for="foreignOrDomestic">内/外国人</label></td>
					<td class="empRegister-body"><select id="foreignOrDomestic"
						name="EmployeeEntity.foreignOrDomestic" class="reginput-select">
							<option value="">選択してください。</option>
							<option value="내국인">内国人</option>
							<option value="외국인">外国人</option>
					</select></td>
					<td class="empRegister-head1"><label for="residentNumber1">個人別固有番号</label></td>
					<td class="empRegister-body"><input type="text"
						id="residentNumber1" name="EmployeeEntity.residentNumber1" class="reginput">-<input
						type="text" id="residentNumber2" name="EmployeeEntity.residentNumber2"
						class="reginput"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="address">住所</label></td>
					<td class="empRegister-body" colspan="3"><input type="text"
						id="address" name="EmployeeEntity.address" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="telPhone">電話番号</label></td>
					<td class="empRegister-body"><input type="text" id="telPhone"
						name="EmployeeEntity.telPhone" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="mobile">携帯電話番号</label></td>
					<td class="empRegister-body"><input type="text" id="mobile"
						name="EmployeeEntity.mobile" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="email">メール</label></td>
					<td class="empRegister-body"><input type="email" id="email"
						name="EmployeeEntity.email" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="sns">SNS</label></td>
					<td class="empRegister-body"><input type="text" id="sns"
						name="EmployeeEntity.sns" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="otherDetails">その他 詳細情報</label></td>
					<td class="empRegister-body"><input type="text"
						id="otherDetails" name="EmployeeEntity.otherDetails" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="status">状態</label></td>
					<td class="empRegister-body"><select id="status" name="EmployeeEntity.status"
						class="reginput-select">
							<option value="재직">在職</option>
							<option value="퇴사">退社</option>
					</select></td>
				</tr>
			</table>
			<br> <br>
			<hr>

			<h2>社員情報1</h2>
			<div class="table-container">
				<div class="header-container">
					<!-- Dependents Table -->
					<h3 id="section2">扶養家族</h3>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 90px;">関係</th>
							<th class="empRegister-head1" style="width: 100px;">氏名</th>
							<th class="empRegister-head1" style="width: 90px;">区分</th>
							<th class="empRegister-head1" style="width: 300px;">個人別固有番号</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="relationship"
								name="relationship" class="reginput-select">
									<option value="">選択してください。</option>
									<option value="부">配偶者</option>
									<option value="모">息子</option>
									<option value="배우자">娘</option>
									<option value="자녀">父</option>
									<option value="부">母</option>
									<option value="모">兄弟</option>
									<option value="배우자">姉妹</option>
									<option value="자녀">妻の父</option>
									<option value="부">妻の母</option>
									<option value="모">夫の父</option>
									<option value="배우자">夫の母</option>
									<option value="자녀">祖父</option>
									<option value="자녀">祖母</option>
									<option value="자녀">孫</option>
									<option value="자녀">孫娘</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								id="parentsName" name="parentsName" class="reginputhide1"></td>
							<td class="empRegister-body"><select
								id="foreignOrDomesticDependent"
								name="foreignOrDomesticDependent" class="reginput-select">
									<option value="">選択してください。</option>
									<option value="국내">国内</option>
									<option value="외국인">外国人</option>
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
							<th class="empRegister-head1" style="width: 120px;">入学年月</th>
							<th class="empRegister-head1" style="width: 120px;">卒業年月</th>
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
									<option value="초등학교">小学校</option>
									<option value="중학교">中学校</option>
									<option value="고등학교">高校</option>
									<option value="대학교">大学</option>
									<option value="석사">修士</option>
									<option value="박사">博士</option>
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
									<option value="">卒業</option>
									<option value="">修了</option>
									<option value="">自退</option>
									<option value="">在学中</option>
							</select></td>
						</tr>
					</tbody>
				</table>


				<!-- Career Table -->
				<h3 id="section4">経歴</h3>

				<table class="empRegister1"> <!-- 입사일 퇴사일 안눌려요 센빠이 -->
					<thead>
						<tr>
							<th class="empRegister-head1">会社名</th>
							<th class="empRegister-head1">入社日</th>
							<th class="empRegister-head1">退社日</th>
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
								id="startDate" name="startDate"></td>
							<td class="empRegister-body"><input type="date" id="endDate"
								name="endDate"></td>
							<td class="empRegister-body"><input type="text"
								id="employmentPeriod" name="employmentPeriod"
								class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="finalPosition" name="finalPosition" class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="responsibilities" name="responsibilities"
								class="reginputhide1"></td>
							<td class="empRegister-body"><input type="text"
								id="reasonForLeaving" name="reasonForLeaving"
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
							<th class="empRegister-head1" style="width: 120px;">服務期間(から)</th>
							<th class="empRegister-head1" style="width: 120px;">服務期間(まで)</th>
							<th class="empRegister-head1">最終階級</th>
							<th class="empRegister-head1">兵科</th>
							<th class="empRegister-head1">未了の事由</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="serviceType"
								name="serviceType">
									<option value="">選択</option>
									<option value="군필">転役</option>
									<option value="미필">未了</option>
							</select></td>
							<td class="empRegister-body"><select id="branch"
								name="branch">
									<option value="">選択</option>
									<option value="육군">陸軍</option>
									<option value="해군">海軍</option>
									<option value="공군">空軍</option>
									<option value="상비군">常備軍</option>
									<option value="면제">免除</option>
									<option value="기타">その他</option>
							</select></td>
							<td class="empRegister-body"><input type="date"
								id="servicePeriod1" name="servicePeriod1"></td>
							<td class="empRegister-body"><input type="date"
								id="servicePeriod2" name="servicePeriod2"></td>
							<td class="empRegister-body"><input type="text"
								id="finalRank" name="finalRank" class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								id="militaryClass" name="militaryClass" class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								id="exemptionReason" name="exemptionReason" class="reginputhide"></td>
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
