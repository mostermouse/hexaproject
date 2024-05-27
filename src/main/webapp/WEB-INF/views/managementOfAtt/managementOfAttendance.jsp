<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="content">
    <div class="table-container">
        <div class="header-container">
            <img src="<%=request.getContextPath()%>/resources/images/contentimages/managementOfAttendance.png"
                 width="50" height="50">
            <h1>근태기록/관리</h1>
        </div>
        <hr>
        <div class="search-container">
            <div class="title-table-right">
                <select class="reginput-select">
                    <option value="">선택해주세요.</option>
                </select> <br>
                <table class="empRegister1">
                    <thead class="empRegister-head1">
                    <tr>
                        <th>구분</th>
                        <th>사원번호</th>
                        <th>성명</th>
                        <th>부서</th>
                        <th>직위</th>
                        <th>근태기록</th>
                    </tr>
                    </thead>

                    <tbody class="empRegister-body">

                    <c:forEach items="${attendancelist}" var="attlist">
                        <tr class="AttRegister-body">
                            <td>${attlist.employmentType}</td>
                            <td>${attlist.employeeId}</td>
                            <td>${attlist.koreanName}</td>
                            <td>${attlist.departmentName}</td>
                            <td>${attlist.positionName}</td>
                            <td><button type="submit">근태기록</button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <form id="attendanceForm" method="post" action="${pageContext.request.contextPath}/addDiligenceMnt" style="margin-top: 50px;"
                  onsubmit="return validateForm()">
                <table class="empRegisterblack" style="margin-bottom: 10px; width: 410px;">
                    <thead>
                    <tr>
                        <th style="width: 80px;">입력일자</th>
                        <th><input id="inputDate" name="inputDate" type="date" class="reginput-select" required></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>근태항목</td>
                        <td>
                            <select class="reginput-select" id="attendanceTypeId" name="attendanceTypeId" onchange="calculateAttendanceTime()"
                                    required>
                                <option value="0">선택하세요.</option>
                                <c:forEach var="attendanceTypeName" items="${attendanceTypeList}">
                                    <option value="${attendanceType.attendanceTypeId}">${attendanceType.attendanceTypeName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>기간</td>
                        <td>
                            <input id="startDate" name="startDate" type="date" class="reginput-select"
                                   onchange="calculateAttendanceTime()" required> ~
                            <input id="endDate" name="endDate" type="date" class="reginput-select"
                                   onchange="calculateAttendanceTime()" required>
                        </td>
                    </tr>
                    <tr>
                        <td>근태일수</td>
                        <td style=""><input style="width: 80%;" id="attendanceDays" name="attendanceDays" class="reginputhide1" readonly/><span>일</span></td>
                    </tr>
                    <tr>
                        <td>금액(수당)</td>
                        <td><input id="amount" name="amount" class="reginputhide1" placeholder="근태분류가 지급수당에 해당할 경우 입력해주세요"></td>
                    </tr>
                    <tr>
                        <td>적요</td>
                        <td><input id="summary" name="summary" class="reginputhide1" placeholder="적요가 있으신 경우 입력해주세요."></td>
                    </tr>
                    </tbody>
                </table>
                <%--<input type="hidden" name="employeeId" value="1"/>
                <input type="hidden" name="attendanceId" value="1"/>--%>
                <!-- <input type="hidden" name="feildOrProjectIdLong" value="1"/>
                <input type="hidden" name="departmentId" value="1"/>
                <input type="hidden" name="positionId" value="1"/> -->
                <div class="divbtnsml" style="margin-left: 120px;">
                    <button type="submit">저장</button>
                    <button type="button" class="cancel-btn" onclick="resetForm()">내용 지우기</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>

<script>
    function submitForm(action) {
        var form = document.getElementById('attendanceForm');
        form.action = action;
    }

    function calculateAttendanceTime() {
        var attendanceType = document.getElementById('attendanceType').value;
        var startDate = document.getElementById('startDate').value;
        var endDate = document.getElementById('endDate').value;
        var attendanceDays = document.getElementById('attendanceDays');

        if (attendanceType !== "0" && startDate && endDate) {
            var start = new Date(startDate);
            var end = new Date(endDate);
            var timeDiff = end - start;
            var daysDiff = Math.ceil(timeDiff / (1000 * 60 * 60 * 24)) + 1;

            if (attendanceType === "조퇴") {
                // 예를 들어 조퇴는 하루로 계산
                daysDiff = 1;
            }

            attendanceDays.value = daysDiff;
        } else {
            attendanceDays.value = "";
        }
    }

    function validateForm() {
        var attendanceType = document.getElementById('attendanceType').value;
        if (attendanceType === "0") {
            alert("근태항목을 선택해주세요.");
            return false;
        }
        return true;
    }

    function resetForm() {
        document.getElementById('attendanceForm').reset();
    }
</script>
