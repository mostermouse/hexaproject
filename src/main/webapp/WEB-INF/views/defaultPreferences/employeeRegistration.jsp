<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<div id="content">

	<div class="floating-container">
		<table class="floating-table">
			<thead>
				<tr>
					<th class="head">사원번호</th>
					<th class="body"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="head">성명</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">부서</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">직위</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">입사일</td>
					<td class="body"></td>
				</tr>
			</tbody>
		</table>
		<h3 style="text-align: left;">사원정보1</h3>
		<div class="button-container">
			<button onclick="scrollToSection('section1')">기본정보</button>
			<button onclick="scrollToSection('section2')">부양가족</button>
			<button onclick="scrollToSection('section3')">학력</button>
			<button onclick="scrollToSection('section4')">경력</button>
			<button onclick="scrollToSection('section5')">병력</button>
			<button style="background-color: #f3f3f3; cursor: default;"></button>
		</div>
		<hr>
		<h3 style="text-align: left;">사원정보2</h3>
		<div class="button-container">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section6'">자격면허</button>
			<button onclick="scrollToSection('section5')">교육훈련</button>
			<button onclick="scrollToSection('section5')">상벌</button>
			<button onclick="scrollToSection('section5')">발령</button>
			<button onclick="scrollToSection('section5')">추천신원보증</button>
			<button onclick="scrollToSection('section5')">퇴직</button>
		</div>
	</div>
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/employeeMnt.png"
				alt="" width="50" height="50">
			<h1 id="section1">사원 등록</h1>
		</div>
		<h4>사원정보를 등록하는 메뉴입니다. 해당되는 항목만 입력하시면 됩니다. (* 표시는 필수 입력사항)</h4>
		<hr>
		<br>
		<form id="registerForm"
			action="${pageContext.request.contextPath}/employeeregistration"
			method="post" onsubmit="return validateForm()">

			<!-- Employee Table -->
			<table class="empRegister">
				<tr>
					<th class="empRegister-head1"><label for="employeeId">사원번호</label></th>
					<th class="empRegister-body"><input type="text"
						id="employeeId" name="employeeId" class="reginputhide" required></th>
					<th class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="employmentType">고용 형태</label></th>
					<th class="empRegister-body"><select id="employmentType"
						name="employmentType" class="reginput-select">
							<option value="">선택해주세요.</option>
							<option value="정규직">정규직</option>
							<option value="계약직">계약직</option>
							<option value="임시직">임시직</option>
							<option value="파견직">파견직</option>
							<option value="위촉직">위촉직</option>
							<option value="일용직">일용직</option>
					</select></th>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="koreanName">한글 이름</label></td>
					<td class="empRegister-body"><input type="text"
						id="koreanName" name="koreanName" class="reginputhide" required></td>
					<td class="empRegister-head1"><label for="englishName">영문
							이름</label></td>
					<td class="empRegister-body"><input type="text"
						id="englishName" name="englishName" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><span style="color: #FE0000">*</span><label
						for="hireDate">입사일</label></td>
					<td class="empRegister-body"><input type="date" id="hireDate"
						name="hireDate" class="reginput-select"></td>
					<td class="empRegister-head1"><label for="resignationDate">퇴사일</label></td>
					<td class="empRegister-body"><input type="date"
						id="resignationDate" name="resignationDate"
						class="reginput-select"></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><label for="department">부서</label></td>
					<td class="empRegister-body"><select id="department"
						name="department" class="reginput-select">
							<option value="">선택해주세요.</option>
							<option value="사장실">사장실</option>
							<option value="개발팀">개발팀</option>
							<option value="콘텐츠팀">콘텐츠팀</option>
							<option value="업무지원팀">업무지원팀</option>
							<option value="디자인팀">디자인팀</option>
							<option value="관리팀">관리팀</option>
							<option value="기획전략팀">기획전략팀</option>
					</select></td>
					<td class="empRegister-head1"><label for="position">직위</label></td>
					<td class="empRegister-body"><select id="position"
						name="position" class="reginput-select">
							<option value="">선택해주세요.</option>
							<option value="이사">이사</option>
							<option value="차장">차장</option>
							<option value="사장">사장</option>
							<option value="부장">부장</option>
							<option value="과장">과장</option>
							<option value="대리">대리</option>
							<option value="주임">주임</option>
							<option value="사원">사원</option>
							<option value="실장">실장</option>
					</select></td>
				</tr>
				<tr>
					<td class="empRegister-head1"><label for="foreignOrDomestic">내/외국인</label></td>
					<td class="empRegister-body"><select id="foreignOrDomestic"
						name="foreignOrDomestic" class="reginput-select">
							<option value="">선택해주세요.</option>
							<option value="내국인">내국인</option>
							<option value="외국인">외국인</option>
					</select></td>
					<td class="empRegister-head1"><label for="residentNumber1">주민등록번호</label></td>
					<td class="empRegister-body"><input type="text"
						id="residentNumber1" name="residentNumber1" class="reginput">-<input
						type="text" id="residentNumber2" name="residentNumber2"
						class="reginput"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="address">주소</label></td>
					<td class="empRegister-body" colspan="3"><input type="text"
						id="address" name="address" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="telPhone">전화번호</label></td>
					<td class="empRegister-body"><input type="text" id="telPhone"
						name="telPhone" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="mobile">휴대전화번호</label></td>
					<td class="empRegister-body"><input type="text" id="mobile"
						name="mobile" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="email">이메일</label></td>
					<td class="empRegister-body"><input type="email" id="email"
						name="email" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="sns">SNS</label></td>
					<td class="empRegister-body"><input type="text" id="sns"
						name="sns" class="reginputhide"></td>
				</tr>
				<tr>
					<td class="empRegister-head2"><label for="otherDetails">기타
							상세 정보</label></td>
					<td class="empRegister-body"><input type="text"
						id="otherDetails" name="otherDetails" class="reginputhide"></td>
					<td class="empRegister-head2"><label for="status">상태</label></td>
					<td class="empRegister-body"><select id="status" name="status"
						class="reginput-select">
							<option value="재직">재직</option>
							<option value="퇴사">퇴사</option>
					</select></td>
				</tr>
			</table>
			<br> <br>
			<hr>

			<h2>사원 정보1</h2>
			<div class="table-container">
				<div class="header-container">
					<!-- Dependents Table -->
					<h3 id="section2">부양 가족</h3>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 90px;">관계</th>
							<th class="empRegister-head1" style="width: 100px;">이름</th>
							<th class="empRegister-head1" style="width: 90px;">구분</th>
							<th class="empRegister-head1" style="width: 300px;">주민등록번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="relationship"
								name="relationship" class="reginput-select">
									<option value="">선택해주세요.</option>
									<option value="부">배우자</option>
									<option value="모">아들</option>
									<option value="배우자">딸</option>
									<option value="자녀">부</option>
									<option value="부">모</option>
									<option value="모">형제</option>
									<option value="배우자">자매</option>
									<option value="자녀">장인</option>
									<option value="부">장모</option>
									<option value="모">시아버지</option>
									<option value="배우자">시어머니</option>
									<option value="자녀">조부</option>
									<option value="자녀">조모</option>
									<option value="자녀">손자</option>
									<option value="자녀">손녀</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								id="parentsName" name="parentsName" class="reginputhide1"></td>
							<td class="empRegister-body"><select
								id="foreignOrDomesticDependent"
								name="foreignOrDomesticDependent" class="reginput-select">
									<option value="">선택해주세요.</option>
									<option value="국내">국내</option>
									<option value="외국인">외국인</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								id="parentsNumber1" name="parentsNumber1" class="reginput">
								- <input type="text" id="parentsNumber2" name="parentsNumber2"
								class="reginput"></td>
						</tr>
					</tbody>
				</table>
				<!-- Degree Table -->
				<h3 id="section3">학력</h3>

				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 85px;">구분</th>
							<th class="empRegister-head1" style="width: 120px;">입학년월</th>
							<th class="empRegister-head1" style="width: 120px;">졸업년월</th>
							<th class="empRegister-head1">학교명</th>
							<th class="empRegister-head1">전공</th>
							<th class="empRegister-head1" style="width: 75px;">이수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="graduate"
								name="graduate" class="reginput-select">
									<option value="">선택</option>
									<option value="초등학교">초등학교</option>
									<option value="중학교">중학교</option>
									<option value="고등학교">고등학교</option>
									<option value="대학교">대학교</option>
									<option value="석사">석사</option>
									<option value="박사">박사</option>
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
									<option value="">선택</option>
									<option value="">졸업</option>
									<option value="">수료</option>
									<option value="">자퇴</option>
									<option value="">재학중</option>
							</select></td>
						</tr>
					</tbody>
				</table>


				<!-- Career Table -->
				<h3 id="section4">경력</h3>

				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">회사이름</th>
							<th class="empRegister-head1">입사일</th>
							<th class="empRegister-head1">퇴사일</th>
							<th class="empRegister-head1">근무기간</th>
							<th class="empRegister-head1">최종직위</th>
							<th class="empRegister-head1">담당직무</th>
							<th class="empRegister-head1">퇴직사유</th>
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
				<h3 id="section5">병역</h3>

				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1" style="width: 60px;">병역구분</th>
							<th class="empRegister-head1" style="width: 70px;">군별</th>
							<th class="empRegister-head1" style="width: 120px;">복무기간(부터)</th>
							<th class="empRegister-head1" style="width: 120px;">복무기간(까지)</th>
							<th class="empRegister-head1">최종계급</th>
							<th class="empRegister-head1">병과</th>
							<th class="empRegister-head1">미필사유</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><select id="serviceType"
								name="serviceType">
									<option value="">선택</option>
									<option value="군필">군필</option>
									<option value="미필">미필</option>
							</select></td>
							<td class="empRegister-body"><select id="branch"
								name="branch">
									<option value="">선택</option>
									<option value="육군">육군</option>
									<option value="해군">해군</option>
									<option value="공군">공군</option>
									<option value="상비군">상비군</option>
									<option value="면제">면제</option>
									<option value="기타">기타</option>
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
					<button type="submit">등록</button>
				</div>
			</div>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
