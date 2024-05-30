<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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

.modal-content1 {
	font-size: 12px;
    background-color: #fefefe; /* 모달 내용 배경색 */
    margin: 15% auto; /* 모달 내용을 화면 중앙에 위치 */
    padding: 20px;
    border: 1px solid #888;
    width: 43%; /* 모달 내용 너비 */
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

#pop01 {
    text-align: center;
    padding-top: 3px;
    display: block;
    width: auto;
    min-height: 0px;
    max-height: none;
    height: 502px;
}

#pop01 ul.title {
    width: 100%;
    height: 50px;
}

#pop01 ul.part {
    float: left;
    margin: 0px 15px 0px 15px;
    border: 1px solid #e8e8e8;
    background-color: #ffffff;
    padding: 5px 0;
}

#pop01 div.pop_table {
    margin: 0px 15px 0px 15px;
    padding: 0px;
    color: #666666;
    float: left;
}

#pop01 div.holiday {
    float: left;
    margin: 0px;
    height: 340px;
    overflow: auto;
}

.pop_table P.caption {
    border-bottom: 2px solid #4499fa;
    height: 2px;
}

.pop_table ul {
    float: left;
    border-bottom: 1px solid #e2e2e2;
    border-left: 1px solid #e2e2e2;
    color: #333333;
}

.pop_table li {
    float: left;
    height: 25px;
    border-right: 1px solid #e2e2e2;
    padding-top: 8px;
}

.pop_table li {
    float: left;
    height: 25px;
    border-right: 1px solid #e2e2e2;
    padding-top: 8px;
}

.pop_table li.title {
    background-color: #f6fdff;
    color: #333333;
    text-align: center;
    padding-top: 8px;
    font-weight: bold;
}

.mCSB_container.mCS_no_scrollbar {
    margin-right: 0;
}
.mCSB_container {
    width: auto;
    /* margin-right: 30px; */
    overflow: hidden;
}

.dd {
    display: inline-block !important; 
    text-align: left;
    background-color: #fff;
    font-family: 'Nanum Gothic', Arial, Helvetica, sans-serif;
    font-size: 12px;
    float: left;
    color: #333333;
}

a {
    text-decoration: none;
}

p {
    list-style: none;
    padding: 0px;
    margin: 0px;
}

ol, ul, li {
    list-style: none;
    padding: 0px;
    margin: 0px;
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

.bold {
	font-weight: bold;
}

.font12 {
	font-size: 12px;
}

.c_999 {
	color: #999999;
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

.p_t10 {
	padding-top: 10px;
}

.height_27 {
	height: 27px;
}

.p_b10 {
	padding-bottom: 10px;
}

.p_l15 {
	padding-left: 15px;
}

.w_35 {
    width: 35px;
}
.w_85 {
    width: 85px;
}
.w_100 {
    width: 100px;
}
.w_115 {
    width: 115px;
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
$(document).ready(function() {
    // "전체검색" 버튼 클릭 시 동작
    $("#btnSrchAll").click(function() {
        location.replace("/dayWorkerMnt");
        return;
    });

    // "검색" 버튼 클릭 시 동작
    $("#searchButton").click(function() {
        var searchKeyword = $('#searchKeyword').val();
        if (searchKeyword === '検索語入力') {
            searchKeyword = '';
        }
        if (searchKeyword.trim() === '') {
            alert("検索語を入力してください。");
            return false;
        }
        return true;
    });

    // "전체선택" 체크박스 클릭 시 동작
   /*  $("#checkAll").click(function() {
        $('input[name="employeeId"]').prop('checked', this.checked);
        if (this.checked) {
            $('input[name="employeeId"]').closest('tr').addClass('selected');
        } else {
            $('input[name="employeeId"]').closest('tr').removeClass('selected');
        }
    });

    // 개별 체크박스 클릭 시 동작
    $('input[name="employeeId"]').click(function() {
        var row = $(this).closest('tr');
        if ($(this).prop('checked')) {
            row.addClass('selected');
        } else {
            row.removeClass('selected');
        }
        updateSelectAllCheckbox();
    });
     */
 	// "근무기록" 버튼 클릭 시 동작
 	/* 
    $(".attendance_modal_btn").click(function() {
        // 해당 행에서 employeeId를 읽어옴
        var employeeId = $(this).closest('tr').find('input[name="employeeId"]').val();
        alert(employeeId); // 여기서 확인 가능
        openAttendanceModal(employeeId);
    });
 */
    // "저장" 버튼 클릭 시 동작
    $("#saveButton").click(function(event) {
       /* 
    	event.preventDefault(); // 폼의 기본 제출 동작을 막음
        
        var isValid = true;
        
        $('input, select', '#workerForm').each(function() {
            if ($(this).prop('required') && !$(this).val()) {
                isValid = false;
                alert($(this).attr('name') + '을(를) 입력하세요.');
                return false;
            }
        });
         */
        // 체크된 사원의 employeeId 값을 수집
       /*  var selectedEmployeeIds = [];
        $('input[name="employeeId"]:checked').each(function() {
            var employeeId = $(this).val();
            if (employeeId && employeeId !== '選択してください。') {
                selectedEmployeeIds.push(employeeId);
            }
        });

        console.log(selectedEmployeeIds); // 선택된 employeeId 값들을 콘솔에 출력

        if (selectedEmployeeIds.length === 0) {
            alert("사원을 선택해주세요.");
            return;
        } else {
            alert("등록 완료 했습니다.");
        }
 */
        // 폼 제출
        $('#workerForm').submit();
    });

  
});

// 상태별(재직, 퇴직) select 박스에서 해당 사원으로 필터링
function filterByStatus() {
    var status = document.getElementById("statusSelect").value;
    
    if(status === 0) {
    	window.location.href = "/dayWorkerMnt"
    } else {
    window.location.href = "/dayWorkerMnt?status=" + status;
    }
}



// 필드 또는 프로젝트 업데이트
function updateFeildOrProject(button) {
    var buttonText = button.innerText;
    var span = button.parentElement.previousElementSibling;
    var name = span.innerText;
}
/* 
// 전체 선택 체크박스 업데이트
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
 */
// 해당 사원 번호로 근태관리 리스트를 보여줌
function attendanceMtn() {
    // 모달을 표시하는 코드
    $("#attModal").css("display", "block");
}


function attendanceModal(employeeId) {
    //var employeeId = document.getElementById("selectedEmployeeIds").value; // 선택된 사원번호를 전역 변수에 저장
    //var employeeId = document.getElementById("selectedEmployeeIds").value;
    //$("#attendanceModal").css("display","block");
    //window.location.href = "/dayWorkerAttendanceList?employeeId=" + employeeId;
    // 선택된 사원번호를 숨겨진 폼 필드에 저장
   
    alert(employeeId);
    $.ajax({
        type: "GET", // GET 또는 POST 요청 가능
        url: "/saveDayWorkerMnt", // 데이터를 받아올 서버의 URL
        data: {
        	employeeId:employeeId  // 선택된 사원 번호를 데이터로 전송
        },
        success: function(response) {
            // 서버에서 받은 데이터를 이용하여 모달 내용을 업데이트하는 코드 작성
            // 예를 들어, 받은 데이터를 표시하거나 처리하는 등의 작업 수행
            console.log("서버에서 받은 데이터:", response);
            // 모달 창 표시
            document.querySelector("#attendanceModal").style.display = "block";
        },
        error: function(xhr, status, error) {
            console.error("AJAX 오류 발생:", error);
        }
    });
}

</script>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<h1>日雇い勤務記録/管理</h1>
		</div>
		<hr>

		<div class="search-container" style="margin-top: 50px;">
			<form action="/dayWorkerMnt" method="get" style="display: flex;">
				<input name="searchKeyword" id="searchKeyword" type="text"
					placeholder="検索語入力">
				<button style="background-color: transparent; border: none;"
					id="searchButton" type="submit">
					<img
						src="<%=request.getContextPath()%>/resources/images/contentimages/search_25.jpg"
						alt="Search">
				</button>
			</form>
			<input name="btnSrchAll" id="btnSrchAll" type="button" value="全体表示"
				class="all-button"> <select id="statusSelect"
				onchange="filterByStatus()" class="reginput-select" required="required">
					<option value="">状態別</option>
				<c:forEach var="status" items="${statuslist}">
					<option value="${status.status}">${status.status}</option>
				</c:forEach>
			</select>
		</div>
		<br>
		<div class="search-container">
			<form action="/saveDayWorkerMnt" method="post" id="workerForm" style="display: flex; justify-content: space-between; ">
			<div class="title-table-left">
				<table class="day-worker-table" border="1">
					<tr class="empRegister-head">
						<th>区分</th>
						<th>社員番号</th>
						<th>氏名</th>
						<th>部署</th>
						<th>備考</th>
					</tr>
					<c:forEach items="${list}" var="dayWorker">
						<tr>
							<td>${dayWorker.employmentType}</td>
							<td>${dayWorker.employeeId}</td>
							<td>${dayWorker.koreanName}</td>
							<td>${dayWorker.departmentName}</td>
							<td>${dayWorker.otherDetails}</td>
						</tr>
						<!-- attendance modal -->
						<div id="attendanceModal" class="modal">
								<div class="modal-content1">
									<span class="close">&times;</span>
									<div id="pop01" style="width: 920px;">
										<ul class="title"><li>사원별 근무기록</li></ul>
										<ul class="part p_t10">
											<div class="height_27 p_l15 p_t10 p_b10">
												<li class="bold font12">
													<span class="c_999">•氏名 :</span>
													 ${dayWorker.koreanName} (No-00${dayWorker.employeeId}) &nbsp;&nbsp;&nbsp;
													<span class="c_999">•部署 :</span>
													 ${dayWorker.departmentName} &nbsp;&nbsp;
													<span class="c_999">•職責 :</span>
													 ${dayWorker.positionName}
													 <div style="float: right; padding-right: 50px;">
													 	<div class="dd" style="margin-left: auto; display: flex; align-items: center;">
													 		<select id="selectYear">
																<c:forEach var="year" begin="2000" end="2100">
																	<option value="${year}">${year}</option>
																</c:forEach>
															</select> 
															<label for="selectYear" style="margin-right: 5px;">년도</label>
													 	</div>
													 	<div class="dd" style="margin-left: 10px; display: flex; align-items: center;">
															<select id="selectMonth">
																<%-- 여기에 월 옵션을 동적으로 추가할 수 있습니다. --%>
																<c:forEach var="month" begin="1" end="12">
																	<option value="${month}">${month}</option>
																</c:forEach>
															</select> <label for="selectMonth" style="margin-right: 5px;">월</label>
														</div>
													 </div>
												</li>
											</div>
											<div class="pop_table">
												<p class="caption"></p>
												<ul>
													<li class="w_35 title">
														<strong>번호</strong>
													</li>
													<li class="w_85 title">
														<strong>근무일자</strong>
													</li>
													<li class="w_155 title">
														<strong>현장/프로젝트</strong>
													</li>
													<li class="w_85 title">
														<strong>일당</strong>
													</li>
													<li class="w_100 title">
														<strong>수정/삭제</strong>
													</li>
												</ul>
											</div>
											<div class="holiday" style="width: 882px;">
												<div class="mCustomScrollBox mCS-dark" id="mCSB_1" style="position: relative; height: 100%; overflow: hidden; max-width: 100%;">
													<div class="mCSB_container.mCS_no_scrollbar" style="position: relative; top: 0;">
														<div class="pop_table">
															<c:forEach items="${dayworkerAttlist}" var="dayworkerAttlist" varStatus="st">
																<ul>
																	<li class="w_35 c">
																		${st.count}
																	</li>
																	<li class="w_85 c">
																		${dayworkerAttlist.inputDate}
																	</li>
																	<li class="w_155 c">
																		${dayworkerAttlist.name }
																	</li>
																	<li class="w_85 c">
																		<strong>일당</strong>
																	</li>
																	<li class="w_100 c">
																		<button>수정</button>
																	</li>
																</ul>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</ul>
									</div>
								</div>
							</div>
					</c:forEach>
				</table>
			</div>
			<br>
			<div class="title-table-right">
					<table class="day-worker-form-table" style="width: 400px;">
						<tr style="height: 20px;">
							<td style="width: 110px;">勤務日</td>
							<td><input type="date" name="inputDate" id="workDate"
								class="reginput-select"></td>
						</tr>
						
						<tr>
							<td>社員番号</td>
							<td colspan="2">
								<div class="button-container1" style="text-align: left;">
									<select name="employeeId" class="reginput-select" style="width: 50%; margin-right: 32px; margin-right: auto;">
										<option>選択してください。</option>
										<c:forEach var="employeeId" items="${list}">
											<option value="${employeeId.employeeId}">${employeeId.koreanName}</option>
										</c:forEach>
									</select>
								</div>
							</td>
						</tr>
						
						<tr>
							<td>現場/プロジェクト</td>
							<td colspan="2">
								<div class="button-container1" style="text-align: left;">
									<select name="feildOrProjectId" id="inputFeildOrProject"
										class="reginput-select"
										style="width: 50%; margin-right: 32px; margin-right: auto;">
										<option>選択してください。</option>
										<c:forEach var="feildOrProject" items="${feildOrProjectList}">
											<option value="${feildOrProject.feildOrProjectId}">${feildOrProject.name}</option>
										</c:forEach>
									</select>
<!-- 									<button id="modal_btn" type="button" class="all-button">リスト管理</button> -->
								</div>
							</td>
						</tr>
						<tr>
							<td>日割</td>
							<td colspan="2"><input type="text" name="amount"
								class="reginputhide" placeholder="日割りを入力してください"
								style="width: 80%; text-align: right;"><span>円</span></td>
						</tr>
					</table>
				
				<div class=divbtnsml style="margin-left: 100px; margin-top: 20px;">
					<button id="saveButton" class="saveButton" type="submit" value="저장">保存</button>
					<button class="cancel-btn" type="reset" value="内容の消去">内容の消去</button>
				</div>
			</div>
			</form>
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
				<li>現場/プロジェクト管理</li>
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
							class="m_d p_t5 p_r5"> <a onclick="$.fn.modifyButton()">修整</a>
								| <a onclick="$.fn.deleteButton()">削除</a>
						</span>
						</li>
					</c:forEach>
				</ul>
			</div>

			<ul class="last">
				<li><img src=""> <a href="" onclick="$.fn.addButton()">追加する</a></li>
			</ul>
			<ul>
				<li>* 設定した順に反映されます。</li>
				<li class="footer c"><span id="resetButton" class="anchor">
						<button style="width: 87px; height: 30px;">初期化</button>
				</span></li>
			</ul>
		</div>
	</div>
</div>


<script type="text/javascript">
$(document).ready(function() {
    // 모달 닫기 버튼 클릭 시 이벤트 처리
    $(".close").click(function() {
        $("#attModal").css("display", "none");
    });

    // 모달 외부 클릭 시 모달 닫기
    $(window).click(function(event) {
        if (event.target.id === "attModal") {
            $("#attModal").css("display", "none");
        }
    });
});

// 해당 사원 번호로 근태관리 리스트를 보여줌
function openAttendanceModal(employeeId) {
    // AJAX 요청으로 근태 데이터를 가져옴
    $.ajax({
        url: "/dayWorkerAttendanceList",
        type: "GET",
        data: { employeeId: employeeId },
        success: function(response) {
            // 모달 내용 업데이트
            $("#modal-koreanName").text(response.koreanName);
            var attendanceList = response.attendanceList;
            var tableBody = $("#attendance-table-body");
            tableBody.empty(); // 기존 테이블 내용 초기화

            // 테이블에 근태 데이터를 추가
            attendanceList.forEach(function(attendance) {
                var row = "<tr>" +
                          "<td>" + attendance.date + "</td>" +
                          "<td>" + attendance.startTime + "</td>" +
                          "<td>" + attendance.endTime + "</td>" +
                          "<td>" + attendance.task + "</td>" +
                          "<td>" + attendance.workingHours + "</td>" +
                          "</tr>";
                tableBody.append(row); 
            });

            // 모달 표시
            $("#attModal").css("display", "block");
        },
        error: function(xhr, status, error) {
            console.error("AJAX 요청 실패: ", status, error);
        }
    });
}
</script>

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
   
// 일용직 근태관리 모달 열기 버튼 클릭 시 이벤트 처리
//   $("#attendance_modal_btn").click(function() {
//       $("#attModal").css("display", "block");
//       location.replace("/dayWorkerAttendanceList");
//   });





   // 모달 닫기 버튼 클릭 시 이벤트 처리
   $(".close").click(function() {
       $(this).closest('.modal').css("display", "none");
   });

   // 모달 외부 클릭 시 모달 닫기
   $(window).click(function(event) {
       if ($(event.target).hasClass('modal')) {
           $(event.target).css("display", "none");
       }
   });
/*
   $("#attendance_modal_btn").click(function() {
       // 해당 버튼의 data-employee-id 속성 값을 읽어옴
       var employeeId = document.getElementById("selectedEmployeeIds").value;
       alert(employeeId);
       // 모달 열 때 사원번호를 매개 변수로 전달
       openAttendanceModal(employeeId);
   });
*/
  
});
</script>


<%@ include file="/WEB-INF/views/includes/footer.jsp"%>