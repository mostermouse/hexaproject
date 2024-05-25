<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <style>
/*모달 팝업 영역 스타일링*/
.modal {
	/*팝업 배경*/
	display: none; /*평소에는 보이지 않도록*/
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	overflow: hidden;
	background: rgba(0, 0, 0, 0.5);
	z-index: 1000;
}

.modal.on {
	display: block;
}

.modal .modal_popup {
	/*팝업*/
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	background: #ffffff;
	border-radius: 20px;
}

.modal .modal_popup .close_btn {
	display: block;
	padding: 10px 20px;
	background-color: rgb(116, 0, 0);
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	transition: box-shadow 0.2s;
}

.li_table {
	border: 1px solid black; /* 바깥선 */
	display: inline-block; /* 내용물에 맞게 크기 조절 */
	width: 100%; /* 전체 너비 */
	box-sizing: border-box; /* 패딩과 테두리를 포함하여 크기 조절 */
}

.li_table ul {
	list-style-type: none; /* 기본 리스트 스타일 제거 */
	margin: 0; /* 외부 여백 제거 */
	padding: 0; /* 내부 여백 제거 */
}

.li_table li {
	border-bottom: none; /* 각 항목 아래에 선 추가 */
	padding: 10px; /* 항목 내부 여백 */
	display: flex; /* 항목 내용을 수평으로 배치 */
	justify-content: space-between; /* 내용 양 끝 정렬 */
}

.li_table li:last-child {
	justify-content: flex-end; /* 마지막 리스트 항목을 오른쪽으로 정렬 */
}

.li_table span {
	display: inline-block; /* 요소를 inline-block으로 설정 */
	min-width: 100px; /* 최소 너비 설정 */
	white-space: nowrap; /* 줄 바꿈 방지 */
	overflow: hidden; /* 내용이 넘치면 숨김 */
	text-overflow: ellipsis; /* 넘친 내용은 '...'으로 표시 */
}

.li_table a {
	text-decoration: none; /* 링크 밑줄 제거 */
	color: blue; /* 링크 색상 지정 */
}
</style> -->



<script type="text/javascript">
	$(document).ready(function() {
		$("#btnSrchAll").click(function() {
			location.replace("/dayWorkerMnt");
			return;
		});

		$("#Search").click(function() {
			var srchKwrd = $('#srchKwrd');
			if (srchKwrd.val() === '검색어 입력') {
				srchKwrd.val('');
			}
			if (srchKwrd.val().trim() === '') {
				alert("검색어를 입력해주세요.");
				return false;
			}
			return true;
		});
	});

	$(document).ready(function() {
		$("#workDate").datepicker({
			dateFormat : "yy-mm-dd", // 날짜 형식 설정
			onSelect : function(dateText, inst) {
				// 선택한 날짜를 입력 필드에 설정
				$(this).val(dateText);
			}
		});
	});

	// 전체 선택 체크박스의 클릭 이벤트 처리
	function toggleAll(source) {
		var checkboxes = document.getElementsByName('selectedWorkers');
		for (var i = 0, n = checkboxes.length; i < n; i++) {
			checkboxes[i].checked = source.checked;
		}
	}

	function filterByStatus() {
		var status = document.getElementById("statusSelect").value;
		window.location.href = "/dayWorkerMnt?status=" + status;
	}

	function updateFeildOrProject(button) {
		var buttonText = button.innerText;
		var span = button.parentElement.previousElementSibling;
		var name = span.innerText;

		if (buttonText === '수정') {
			var input = document.createElement("input");
			input.type = "text";
			input.value = name;
			span.innerHTML = "";
			span.appendChild(input);

			button.innerText = '저장';
			alert('수정을 완료하려면 "저장"을 클릭하세요.');
		} else if (buttonText === '저장') {
			var newName = span.firstChild.value;
			span.innerHTML = newName;

			button.innerText = '수정';
			alert('저장되었습니다: ' + newName);
		}
	}
</script>
<div id="content">

	<div class="table-container">
		<div class="header-container">
			<h1>일용직 근무기록/관리</h1>
		</div>
		<hr>

		<div class="search-container">
			<form action="/dayWorkerMnt">
				<input name="srchKwrd" id="srchKwrd" type="text" value="검색어 입력"
					onfocus="if (this.value == '검색어 입력') { this.value = ''; }">
				<button style="background-color: transparent; border: none;" id="searchButton" type="submit">
					<img src="<%= request.getContextPath() %>/resources/images/contentimages/search_25.jpg" alt="Search">
				</button>

			</form>

			<input name="btnSrchAll" id="btnSrchAll" type="button" value="전체보기"
				class="all-button"> <select id="statusSelect"
				onchange="filterByStatus()">
				<option>상태별</option>
				<c:forEach var="status" items="${statuslist}">
					<option value="${status.status}">${status.status}</option>
				</c:forEach>
			</select>
		</div>
		<br>
		<div class="search-container">
			<table class="day-worker-table" border="1">
				<tr class="empRegister-head">
					<th style="width: 20px;"><input type="checkbox"
						onclick="toggleAll(this)"></th>
					<th>구분</th>
					<th>사원번호</th>
					<th>성명</th>
					<th>부서</th>
					<th>근무기록</th>
				</tr>
				<%--  <c:forEach items="${list}" var="dayWorker"> --%>
				<tr onclick="toggleCheckbox(this)">
					<td><input type="checkbox" name="selectedWorkers"
						value="${dayWorker.employeeId}"></td>
					<td onclick="toggleCheckbox(this)">${dayWorker.employmentType}123</td>
					<td onclick="toggleCheckbox(this)">${dayWorker.employeeId}123</td>
					<td onclick="toggleCheckbox(this)">${dayWorker.koreanName}123</td>
					<td onclick="toggleCheckbox(this)">${dayWorker.positionId}123</td>
					<td onclick="toggleCheckbox(this)"><input type="image" src="your-image-path" alt="관리"></td>
				</tr>
				<%-- </c:forEach> --%>
			</table>
			<form action="/ifrmDayWorker">
				<table class="day-worker-form-table" border="1">
					<tr>
						<td>근무일자</td>
						<td><input type="text" id="workDate" class="input-field"></td>
					</tr>
					<tr>
						<td>현장/프로젝트</td>
						<td colspan="2"><select name="inputFeildOrProject"
							id="inputFeildOrProject" class="select-field">
								<option>선택하세요.</option>
								<c:forEach var="feildOrProject" items="${feildOrProjectList}">
									<option value="${feildOrProject.name}">${feildOrProject.name}</option>
								</c:forEach>
						</select>
							<button type="button" class="modal_btn">목록관리</button></td>
					</tr>
					<tr>
						<td>일당</td>
						<td><input type="text" class="input-field"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="저장" class="submit-button"> <input type="button"
							value="내용 지우기" class="reset-button"></td>
					</tr>
				</table>
			</form>
		</div>

	</div>
	<!--모달 팝업-->
	<div class="modal">
		<div class="modal_popup">
			<h3>현장/프로젝트 관리</h3>
			<div class="li_table">
				<ul>
					<c:forEach var="feildOrProject" items="${feildOrProjectList}">
						<li><span>${feildOrProject.name}</span> <a href="#none"
							onclick="updateFeildOrProject(this)">수정</a>| <a href="#none"
							onclick="deleteFeildOrProject(this)">삭제</a></li>
					</c:forEach>
				</ul>
				<ul style="background-color: #a6a6a6;">
					<li><a>추가하기</a></li>
				</ul>
			</div>
			<button type="button" class="close_btn">닫기</button>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>



<script>
	document.addEventListener('DOMContentLoaded', function() {
		/* modal  */
		const modal = document.querySelector('.modal');
		const modalOpen = document.querySelector('.modal_btn');
		const modalClose = document.querySelector('.close_btn');

		//열기 버튼을 눌렀을 때 모달팝업이 열림
		modalOpen.addEventListener('click', function() {
			//'on' class 추가
			modal.classList.add('on');
		});
		//닫기 버튼을 눌렀을 때 모달팝업이 닫힘
		modalClose.addEventListener('click', function() {
			//'on' class 제거
			modal.classList.remove('on');

		});

		// Modal 영역 외부를 클릭하면 Modal을 닫는다.
		window.addEventListener('click', function(event) {
			if (event.target === modal) {
				modal.classList.remove('on');
			}
		});
	});
</script>