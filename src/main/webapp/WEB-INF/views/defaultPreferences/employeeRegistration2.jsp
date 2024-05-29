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
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
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
					<th class="head" >社員番号</th>
					<th class="body"> </th>
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
					<td class="head">職位</td>
					<td class="body"></td>
				</tr>
				<tr>
					<td class="head">入社日</td>
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
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section6'">자격면허</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section7'">교육훈련</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section8'">상벌</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section9'">발령</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section10'">추천신원보증</button>
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