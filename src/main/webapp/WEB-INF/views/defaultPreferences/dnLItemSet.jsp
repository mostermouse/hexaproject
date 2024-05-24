<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
#content {
    display: flex;
    justify-content: space-between;
}

#content>div {
    width: 45%;
}

.table-row {
    cursor: pointer;
}

.table-row:hover {
    background-color: #f0f0f0;
}
</style>

<div id="content">
    <div>
        <h2>휴가항목 설정</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>휴가항목</th>
                    <th>적용기간</th>
                    <th>사용여부</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="vacationType" items="${vacationTypes}">
                    <tr class="table-row" 
                        data-id="${vacationType.vacationTypeId}" 
                        data-name="${vacationType.vacationTypeName}"
                        data-period1="${vacationType.applyPeriod1}" 
                        data-period2="${vacationType.applyPeriod2}" 
                        data-usage="${vacationType.usage}">
                        <td>${vacationType.vacationTypeName}</td>
                        <fmt:parseDate value="${vacationType.applyPeriod1}" pattern="yyyy-MM-dd" var="vacationPeriod1" type="date"/>
                        <fmt:parseDate value="${vacationType.applyPeriod2}" pattern="yyyy-MM-dd" var="vacationPeriod2" type="date"/>
                        <td><fmt:formatDate value="${vacationPeriod1}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${vacationPeriod2}" pattern="yyyy-MM-dd" /></td>
                        <td><c:choose>
                                <c:when test="${vacationType.usage.equals('Y')}">O</c:when>
                                <c:otherwise>X</c:otherwise>
                            </c:choose></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div>
        <br><br><br><br>
        <form id="vacationForm" method="post">
            <input type="hidden" id="vacationTypeId" name="vacationTypeId">
            <label for="vacationTypeName">휴가항목</label>
            <input type="text" id="vacationTypeName" name="vacationTypeName" required> <br>
            <label for="applyPeriod1">적용기간</label>
            <input type="date" id="applyPeriod1" name="applyPeriod1" required> ~ <input type="date" id="applyPeriod2" name="applyPeriod2" required>
            <br>
            <label for="usage">사용여부:</label>
            <select id="usage" name="usage">
                <option value="Y">사용</option>
                <option value="N">사용안함</option>
            </select> <br>
            <button type="submit" onclick="submitForm('/addDnlItem')">추가</button>
            <button type="submit" onclick="submitForm('/updateDnlItem')">수정</button>
            <button type="submit" onclick="submitForm('/deleteDnlItem')">삭제</button>
            <button type="reset">내용 지우기</button>
        </form>
    </div>
</div>

<script>
function submitForm(action) {
    var form = document.getElementById('vacationForm');
    form.action = action;
}

document.addEventListener('DOMContentLoaded', function() {
    var rows = document.querySelectorAll('.table-row');
    rows.forEach(function(row) {
        row.addEventListener('click', function() {
            document.getElementById('vacationTypeId').value = this.getAttribute('data-id');
            document.getElementById('vacationTypeName').value = this.getAttribute('data-name');
            document.getElementById('applyPeriod1').value = this.getAttribute('data-period1');
            document.getElementById('applyPeriod2').value = this.getAttribute('data-period2');
            document.getElementById('usage').value = this.getAttribute('data-usage');
        });
    });
});
</script>
</script>
<%-- <div id="content">
	<div>
		<h2>근태항목 설정</h2>
		<table border="1">
			<thead>
				<tr>
					<th>근태항목</th>
					<th>단위</th>
					<th>그룹관리</th>
					<th>휴가공제</th>
					<th>사용여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vacationType" items="${vacationTypes}">
					<tr>
						<td>${vacationType.vacationTypeName}</td>
						<td><fmt:formatDate value="${vacationType.applyPeriod1}"
								pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
								value="${vacationType.applyPeriod2}" pattern="yyyy-MM-dd" /></td>
						<td><c:choose>
								<c:when test="${vacationType.usage == 'Y'}">사용</c:when>
								<c:otherwise>사용안함</c:otherwise>
							</c:choose></td>
						<td>
							<form action="/vac/update" method="post" style="display: inline;">
								<input type="hidden" name="vacationTypeId"
									value="${vacationType.vacationTypeId}">
								<button type="submit">수정</button>
							</form>
							<form action="/vac/delete" method="post" style="display: inline;">
								<input type="hidden" name="vacationTypeId"
									value="${vacationType.vacationTypeId}">
								<button type="submit">삭제</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div>
		</br> </br> </br> </br>
		<form action="/vac" method="post">
			<label for="vacationTypeName">근태항목</label> <input type="text"
				id="vacationTypeName" name="vacationTypeName" required> <br>

			<label for="usage">단위:</label> <select id="usage" name="usage">
				<option>선택하세요.</option>
				<option>일</option>
				<option>시간</option>
			</select> <br> <label for="usage">근태그룹:</label> <select id="usage"
				name="usage">
				<option>선택하세요.</option>
				<option>휴가</option>
				<option>연장근무</option>
				<option>지각조퇴</option>
				<option>특근</option>
				<option>기타</option>
			</select>
			<button type="submit">관리</button>
			<br> <label for="usage">휴가공제:</label> <select id="usage"
				name="usage">
				<option>선택하세요.</option>
			</select> <br> <label for="usage">근로시간연계:</label> <select id="usage"
				name="usage">
				<option>선택하세요.</option>
				<option>소정근로</option>
				<option>연장근로</option>
				<option>야간근로</option>
				<option>휴일근로</option>
			</select> <br> <label for="usage">사용여부:</label> <select id="usage"
				name="usage">
				<option value="Y">사용</option>
				<option value="N">사용안함</option>
			</select> <br>
			<button type="submit">추가</button>
			<button type="submit">수정</button>
			<button type="submit">삭제</button>
			<button type="submit">내용 지우기</button>
		</form>
	</div>


</div> --%>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>