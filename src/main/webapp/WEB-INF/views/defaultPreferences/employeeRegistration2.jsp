<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<style>
.grey-box {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 7px;
	padding-right: 7px;
	display: flex;
	align-items: center;
}
</style>
<script>
        function add1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table1');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
                <td class="empRegister-body"><input type="checkbox"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="date" class="reginput-select"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table1');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add2(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table2');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="empRegister-body"><input type="checkbox"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="date" class="reginput-select"></td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="상">상</option>
						<option value="중">중</option>
						<option value="하">하</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="상">상</option>
						<option value="중">중</option>
						<option value="하">하</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="상">상</option>
						<option value="중">중</option>
						<option value="하">하</option>
					</select>
				</td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete2(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table2');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table3');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
                <td class="empRegister-body"><input type="checkbox"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="date" class="reginput-select"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table3');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table5');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
                <td class="empRegister-body"><input type="checkbox"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="date" class="reginput-select"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table5');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
    </script>
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
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section1'">기본정보</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section2'">부양가족</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section3'">학력</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section4'">경력</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section5'">병력</button>
		</div>
		<hr>
		<h3 style="text-align: left;">사원정보2</h3>
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section6'">자격면허</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section7'">교육훈련</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section8'">상벌</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section9'">발령</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns2?scrollToSection=section10'">추천신원보증</button>
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
			action="${pageContext.request.contextPath}/employeeregistration2"
			method="post" onsubmit="return validateForm()">

			<!-- Employee Table -->
			<div class="header-container">
				<h3 id="section2">기본정보</h3>
			</div>
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
			<div class="grey-box">
				<h2>사원 정보2</h2>
			</div>
			<div class="table-container">
				<div class="header-container">
					<h3 id="section6">자격.면허 & 어학능력</h3>
				</div>
				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 자격 & 면허</span>
					</h5>
					<div style="margin-left: auto;">
						<button onclick="add1(event)">추가</button>
						<button onclick="delete1(event)">삭제</button>
					</div>
				</div>
				<table class="empRegister1" id="table1">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"><input
								type="checkbox" onclick="toggleAll(this)"></th>
							<th class="empRegister-head1">자격/면허명</th>
							<th class="empRegister-head1">취득일</th>
							<th class="empRegister-head1">발행기관</th>
							<th class="empRegister-head1">증번호</th>
							<th class="empRegister-head1">비고</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="checkbox"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
				<br>
				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 어학능력</span>
					</h5>
					<div style="margin-left: auto;">
						<button onclick="add2(event)">추가</button>
						<button onclick="delete2(event)">삭제</button>
					</div>
				</div>
				<table class="empRegister1" id="table2">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"><input
								type="checkbox" onclick="toggleAll(this)"></th>
							<th class="empRegister-head1">외국어명</th>
							<th class="empRegister-head1">시험</th>
							<th class="empRegister-head1">공인점수</th>
							<th class="empRegister-head1">취득일</th>
							<th class="empRegister-head1">독해</th>
							<th class="empRegister-head1">작문</th>
							<th class="empRegister-head1">회화</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="checkbox"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="상">상</option>
									<option value="중">중</option>
									<option value="하">하</option>
							</select></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="상">상</option>
									<option value="중">중</option>
									<option value="하">하</option>
							</select></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="상">상</option>
									<option value="중">중</option>
									<option value="하">하</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<br>

				<!-- Degree Table -->
				<div class="header-container">
					<h3 id="section7">교육훈련</h3>
					<div style="margin-left: auto;">
						<button onclick="add3(event)">추가</button>
						<button onclick="delete3(event)">삭제</button>
					</div>
				</div>
				<table class="empRegister1" id="table3">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"><input
								type="checkbox" onclick="toggleAll(this)"></th>
							<th class="empRegister-head1">교육구분</th>
							<th class="empRegister-head1">교육명</th>
							<th class="empRegister-head1">교육기간(부터)</th>
							<th class="empRegister-head1">교육기간(까지)</th>
							<th class="empRegister-head1">교육기관</th>
							<th class="empRegister-head1">교육비</th>
							<th class="empRegister-head1">환급교육비</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="checkbox"></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="사내직무">사내직무</option>
									<option value="사외직무">사외직무</option>
									<option value="계층교육">계층교육</option>
									<option value="어학교육">어학교육</option>
									<option value="기타">기타</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhidepay"><span>원</span></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhidepay"><span>원</span></td>
						</tr>
					</tbody>
				</table>
				<br>

				<div class="header-container">
					<h3 id="section8">상벌</h3>
					<div style="margin-left: auto;">
						<button onclick="add4(event)">추가</button>
						<button onclick="delete4(event)">삭제</button>
					</div>
				</div>
				<table class="empRegister1" id="table4">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"><input
								type="checkbox" onclick="toggleAll(this)"></th>
							<th class="empRegister-head1">구분</th>
							<th class="empRegister-head1">상벌명</th>
							<th class="empRegister-head1">상벌권자</th>
							<th class="empRegister-head1">상벌일자</th>
							<th class="empRegister-head1">상벌내용</th>
							<th class="empRegister-head1">비고</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="checkbox"></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="포상">포상</option>
									<option value="표창">표창</option>
									<option value="시상">시상</option>
									<option value="면직">면직</option>
									<option value="정직">정직</option>
									<option value="감봉">감봉</option>
									<option value="견책">견책</option>
									<option value="주의">주의</option>
									<option value="경고">경고</option>
									<option value="조치불가">조치불가</option>
									<option value="해고">해고</option>
							</select></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
				<br>

				<div class="header-container">
					<h3 id="section9">발령</h3>
					<div style="margin-left: auto;">
						<button onclick="add4(event)">추가</button>
						<button onclick="delete4(event)">삭제</button>
					</div>
				</div>
				<table class="empRegister1" id="table5">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"><input
								type="checkbox" onclick="toggleAll(this)"></th>
							<th class="empRegister-head1">발령구분</th>
							<th class="empRegister-head1">발령일자</th>
							<th class="empRegister-head1">부서</th>
							<th class="empRegister-head1">직위</th>
							<th class="empRegister-head1">직책</th>
							<th class="empRegister-head1">비고</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="checkbox"></td>
							<td class="empRegister-body"><select class="reginput-select">
									<option value="">선택</option>
									<option value="포상">채용</option>
									<option value="표창">전보</option>
									<option value="시상">승진</option>
									<option value="면직">승격</option>
									<option value="정직">승호</option>
									<option value="감봉">파견</option>
							</select></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
				<br>

				<div class="header-container">
					<h3 id="section10">추천 & 신원보증</h3>
				</div>
				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 추천인</span>
					</h5>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">성명</th>
							<th class="empRegister-head1">관계</th>
							<th class="empRegister-head1">회사명</th>
							<th class="empRegister-head1">직위</th>
							<th class="empRegister-head1">전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
						</tr>
					</tbody>
				</table>

				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 보증보험</span>
					</h5>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">가입기관</th>
							<th class="empRegister-head1">보험번호</th>
							<th class="empRegister-head1">보험금액</th>
							<th class="empRegister-head1">가입일자</th>
							<th class="empRegister-head1">만료일자</th>
							<th class="empRegister-head1">비고</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhidepay"><span>원</span></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
						</tr>
					</tbody>
				</table>

				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 보증인</span>
					</h5>
				</div>
				<table class="empRegister1">
					<thead>
						<tr>
							<th class="empRegister-head1">성명</th>
							<th class="empRegister-head1">관계</th>
							<th class="empRegister-head1">주민번호</th>
							<th class="empRegister-head1">보증금액</th>
							<th class="empRegister-head1">보증일자</th>
							<th class="empRegister-head1">만료일자</th>
							<th class="empRegister-head1">전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhidepay"><span>원</span></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="date"
								class="reginput-select"></td>
							<td class="empRegister-body"><input type="text"
								class="reginputhide"></td>
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