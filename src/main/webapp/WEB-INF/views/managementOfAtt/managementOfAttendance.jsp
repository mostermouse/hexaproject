<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="content">
    <div class="table-container">
        <div class="header-container">
            <img src="<%=request.getContextPath()%>/resources/images/contentimages/managementOfAttendance.png"
                 width="50" height="50">
            <h1>勤怠記録/管理</h1>
        </div>
        <hr>
        
        <div class="search-container">
            <div class="title-table-right">
                <select class="reginput-select">
                    <option value="">選択してください。</option>
                </select> <br>
                <table class="empRegister1">
                    <thead class="empRegister-head1">
                    <tr>
                        <th>区分</th>
                        <th>社員番号</th>
                        <th>氏名</th>
                        <th>部署</th>
                        <th>職位</th>
                        <th>勤怠記録</th>
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
                            <td><button type="submit">勤怠記録</button></td>
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
                        <th style="width: 80px;">入力日</th>
                        <th><input id="inputDate" name="inputDate" type="date" class="reginput-select" required></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>勤怠項目</td>
                        <td>
                            <select class="reginput-select" id="attendanceTypeId" name="attendanceTypeId" onchange="calculateAttendanceTime()"
                                    required>
                                <option value="0">選択してください。</option>
                                <c:forEach var="attendanceTypeName" items="${attendanceTypeList}">
                                    <option value="${attendanceType.attendanceTypeId}">${attendanceType.attendanceTypeName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>期間</td>
                        <td>
                            <input id="startDate" name="startDate" type="date" class="reginput-select"
                                   onchange="calculateAttendanceTime()" required> ~
                            <input id="endDate" name="endDate" type="date" class="reginput-select"
                                   onchange="calculateAttendanceTime()" required>
                        </td>
                    </tr>
                    <tr>
                        <td>勤怠日数</td>
                        <td style=""><input style="width: 80%;" id="attendanceDays" name="attendanceDays" class="reginputhide1" readonly/><span>日</span></td>
                    </tr>
                    <tr>
                        <td>金額(手当)</td>
                        <td><input id="amount" name="amount" class="reginputhide1" placeholder="支給手当に該当する場合入力してください"></td>
                    </tr>
                    <tr>
                        <td>摘要</td>
                        <td><input id="summary" name="summary" class="reginputhide1" placeholder="摘要がある場合は入力してください"></td>
                    </tr>
                    </tbody>
                </table>
                <%--<input type="hidden" name="employeeId" value="1"/>
                <input type="hidden" name="attendanceId" value="1"/>--%>
                <!-- <input type="hidden" name="feildOrProjectIdLong" value="1"/>
                <input type="hidden" name="departmentId" value="1"/>
                <input type="hidden" name="positionId" value="1"/> -->
                <div class="divbtnsml" style="margin-left: 120px;">
                    <button type="submit">保存</button>
                    <button type="button" class="cancel-btn" onclick="resetForm()">内容消去</button>
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

            if (attendanceType === "早退") {

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
