<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
.selected {
	background-color: #1C59A5;
	color: white;
}

.selected input, .selected select, .selected textarea {
	color: white;
}

/* 모달 창 스타일 */
.modal {
	display: none; /* 기본적으로 숨김 */
	position: fixed; /* 위치를 고정 */
	z-index: 1; /* 다른 요소 위에 표시 */
	left: 0;
	top: 0;
	width: 100%; /* 창 전체 너비 */
	height: 100%; /* 창 전체 높이 */
	background-color: rgba(0, 0, 0, 0.4); /* 배경색과 투명도 설정 */
}

/* 모달 내용 스타일 */
.modal-content {
	font-size: 12px;
	background-color: #fefefe; /* 모달 내용 배경색 */
	margin: 15% auto; /* 모달 내용을 화면 중앙에 위치 */
	padding: 20px;
	border: 1px solid #888;
	width: 15%; /* 모달 내용 너비 */
}

/* 모달 닫기 버튼 스타일 */
.close {
	color: #aaa;
	float: right; /* 오른쪽에 위치 */
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

a {
	text-decoration: none;
}

ul, li {
	list-style: none;
}

ul.title {
	width: 100%;
	height: 50px;
}

ul.title li {
	float: left;
	padding: 15px 0px 0px 15px;
	font-size: 19px;
	font-weight: bold;
}

ul.part01 {
	width: 228px;
	height: 261px;
	float: left;
	margin: 0px 15px 0px 15px;
	border: 1px solid #e8e8e8;
	background: #ffffff;
	padding: 5px 0;
}

ul.part01 li {
	width: 100%;
	float: left;
}

ul.part01 li span.updown {
	display: block;
	width: 20px;
	height: 21px;
	float: left;
	position: relative;
}

ul.part01 li span.fpname {
	display: block;
	width: 100px;
	float: left;
}

ul.part01 li span.m_d {
	color: #cccccc;
	display: block;
	width: 60px;
	float: right;
}

ul.last {
	float: left;
	margin: 0px 15px 10px 15px;
	width: 189px;
	height: 20px;
	background-color: #a6a6a6;
	text-align: right;
	padding-top: 5px;
}

ul.last li A:visited {
	color: #ffffff;
	font-size: 11px;
	padding-right: 5px;
}

li.footer {
	width: 100%;
	padding: 20px 5px;
}

.anchor {
	cursor: pointer;
}

.p_r5 {
	padding-right: 5px;
}

.p_t5 {
	padding-top: 5px;
}

.w_219 {
	width: 219px;
}

.displayContent {
	height: 274px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

span.updown {
	display: block;
	width: 20px;
	height: 21px;
	float: left;
	position: relative;
}

span.updown span {
	position: absolute;
	display: block;
	width: 11px;
	height: 4px;
}

span.updown span.up {
	top: 1px;
	left: 5px;
}

span.updown span.down {
	top: 8px;
	left: 5px;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {

				$("#btnSrchAll").click(function() {
					location.replace("/dayWorkerMnt");
					return;
				});

				$("#searchButton").click(function() {
					var searchKeyword = $('#searchKeyword').val();
					if (searchKeyword === '검색어 입력') {
						searchKeyword = '';
					}
					if (searchKeyword.trim() === '') {
						alert("검색어를 입력해주세요.");
						return false;
					}
					return true;
				});

				$("#checkAll").click(
						function() {
							$('input[name="employeeId"]').prop('checked',
									this.checked);
							if (this.checked) {
								$('input[name="employeeId"]').closest('tr')
										.addClass('selected');
							} else {
								$('input[name="employeeId"]').closest('tr')
										.removeClass('selected');
							}
						});

				$('input[name="employeeId"]').click(function() {
					var row = $(this).closest('tr');
					if ($(this).prop('checked')) {
						row.addClass('selected');
					} else {
						row.removeClass('selected');
					}
					updateSelectAllCheckbox();
				});

				$("#saveButton").click(function(event) {
					event.preventDefault(); // 폼의 기본 제출 동작을 막음

					// 기존에 추가된 숨겨진 필드 삭제
					$("input[name='selectedEmployeeIds']").remove();

					// 체크된 사원의 employeeId 값을 수집
					var selectedEmployeeIds = [];
					$('input[name="employeeId"]:checked').each(function() {
						var employeeId = $(this).val();
						if (employeeId && employeeId !== '선택하세요.') {
							selectedEmployeeIds.push(employeeId);
						}
					});

					console.log(selectedEmployeeIds); // 선택된 employeeId 값들을 콘솔에 출력

					if (selectedEmployeeIds.length === 0) {
						alert("유효한 사원을 선택해주세요.");
						return;
					}

					// 수집된 employeeId 값을 숨겨진 필드로 추가
					$('<input>').attr({
						type : 'hidden',
						name : 'selectedEmployeeIds',
						value : selectedEmployeeIds.join(',')
					}).appendTo('#workerForm');

					// 폼 제출
					$('#workerForm').submit();
				});

			});

	// 상태별(재직, 퇴직) select 박스에서 해당 사원으로 보여줌
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

	function updateSelectAllCheckbox() {
		var allChecked = true;
		$('input[name="employeeId"]').each(function() {
			if (!$(this).prop('checked')) {
				allChecked = false;
				return false;
			}
		});
		$('#checkAll').prop('checked', allChecked);
	}
</script>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/dayWorkerMnt.png"
				width="50" height="50">
			<h1>일용직 근무기록/관리</h1>
		</div>
		<hr>

		<div class="search-container" style="margin-top: 50px;">
			<form action="/dayWorkerMnt" method="get" style="display: flex;">
				<input name="searchKeyword" id="searchKeyword" type="text"
					placeholder="검색어 입력">
				<button style="background-color: transparent; border: none;"
					id="searchButton" type="submit">
					<img
						src="<%=request.getContextPath()%>/resources/images/contentimages/search_25.jpg"
						alt="Search">
				</button>
			</form>
			<input name="btnSrchAll" id="btnSrchAll" type="button" value="전체보기"
				class="all-button"> <select id="statusSelect"
				onchange="filterByStatus()" class="reginput-select">
				<option>상태별</option>
				<c:forEach var="status" items="${statuslist}">
					<option value="${status.status}">${status.status}</option>
				</c:forEach>
			</select>
		</div>
		<br>
		<div class="search-container">
			<form action="/saveDayWorkerMnt" method="post" id="workerForm">
				<table class="day-worker-table" border="1">
					<tr class="empRegister-head">
						<th style="width: 20px;"><input type="checkbox" id="checkAll"></th>
						<th>구분</th>
						<th>사원번호</th>
						<th>성명</th>
						<th>부서</th>
						<th>근무기록</th>
					</tr>
					<c:forEach items="${list}" var="dayWorker">
						<tr>
							<td><input type="checkbox" name="employeeId"
								value="${dayWorker.employeeId}"></td>
							<td>${dayWorker.employmentType}</td>
							<td>${dayWorker.employeeId}</td>
							<td>${dayWorker.koreanName}</td>
							<td>${dayWorker.departmentName}</td>
							<td><input type="image" src="your-image-path" alt="관리"></td>
						</tr>
					</c:forEach>
				</table>
			</form>
			<div class="title-table-right">
				<form>
					<table class="empRegisterblack"
						style="margin-bottom: 20px; width: 400px;">
						<tr style="height: 20px;">
	                        <td style="width: 110px;">근무일자</td>
	                        <td><input type="date" name="inputDate" id="workDate"
	                            class="reginput-select"></td>
	                    </tr>
	                    <tr>
	                        <td>현장/프로젝트</td>
	                        <td colspan="2">
	                            <div class="button-container1" style="text-align: left;">
	                                <select name="feildOrProjectId" id="inputFeildOrProject"
	                                    class="reginput-select" style="width: 60%; margin-right: 32px;">
	                                    <option>선택하세요.</option>
	                                    <c:forEach var="feildOrProject" items="${feildOrProjectList}">
	                                        <option value="${feildOrProject.feildOrProjectId}">${feildOrProject.name}</option>
	                                    </c:forEach>
	                                </select>
	                                <button id="modal_btn" type="button" class="all-button">목록관리</button>
	                            </div>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>일당</td>
	                        <td colspan="2"><input type="text" name="amount" class="reginputhide" placeholder="일당을 입력해주세요" style="width: 80%;"><span>원</span></td>
	                    </tr>
					</table>
				</form>
				<div class=divbtnsml style="margin-right: 120px;">
					<button type="submit" value="저장">저장</button>
					<button class="cancel-btn" type="reset" value="내용 지우기">내용 지우기</button>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 모달 창 -->
<div id="myModal" class="modal">
	<!-- 모달 내용 -->

	<div class="modal-content">
		<!-- 모달 닫기 버튼 -->
		<span class="close">&times;</span>
		<!-- 모달 내용 -->
		<div class="w_219">
			<ul class="title">
				<li>현장/프로젝트 관리</li>
			</ul>
			<!-- 현장/프로젝트 목록 -->
			<div id="displayContent" class="displayContent">
				<ul id="fieldProjectList" class="part01">
					<c:forEach var="feildOrProject" items="${feildOrProjectList}">
						<li class="p_t5" value="${feildOrProject.feildOrProjectId}">
							<span class="updown p_t5"> &nbsp; <span class="up">
									<a> <img alt="up"
										src="/resources/images/icon_updown_01.png">
								</a>
							</span> <span class="down"> <a> <img alt="down"
										src="/resources/images/icon_updown_02.png">
								</a>
							</span>
						</span> <span class="fpname p_t5"> ${feildOrProject.name}</span> <span
							class="m_d p_t5 p_r5"> <a onclick="$.fn.modifyButton()">수정</a>
								| <a onclick="$.fn.deleteButton()">삭제</a>
						</span>
						</li>
					</c:forEach>
				</ul>
			</div>

			<ul class="last">
				<li><img src=""> <a href="" onclick="$.fn.addButton()">추가하기</a>
				</li>
			</ul>
			<ul>
				<li>* 설정하신 순서대로 반영됩니다.</li>
				<li class="footer c"><span id="resetButton" class="anchor">
						<button style="width: 87px; height: 30px;">초기화</button>
				</span></li>
			</ul>
		</div>

	</div>
</div>


<script type="text/javascript">
	$(document).ready(function() {
		// 모달 열기 버튼 클릭 시 이벤트 처리
		$("#modal_btn").click(function() {
			$("#myModal").css("display", "block");
		});

		// 모달 닫기 버튼 클릭 시 이벤트 처리
		$(".close").click(function() {
			$("#myModal").css("display", "none");
		});

		// 모달 외부 클릭 시 모달 닫기
		$(window).click(function(event) {
			if (event.target.id === "myModal") {
				$("#myModal").css("display", "none");
			}
		});
	});
</script>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>