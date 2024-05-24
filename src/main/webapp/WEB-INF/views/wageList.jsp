<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
    <h1>Wage List</h1>
    <div>
        <table border="1" id="wageTable">
            <thead>
                <tr>
                    <th>고용형태</th>
                    <th>이름</th>
                    <th>부서</th>
                    <th>지급총액</th>
                    <!-- <th>아이디</th> -->
                </tr>
            </thead>
            <tbody>
                <!-- wageList를 기반으로 각 직원에 대한 정보를 테이블에 표시 -->
                <c:forEach var="wage" items="${wageList}">
                    <tr class="wageRow" data-employee-id="${wage.employeeId}">
                        <td>${wage.employmentType}</td>
                        <td>${wage.koreanName}</td>
                        <td>${departmentNames[wage.departmentId]}</td>
                        <td>${wage.wageValue}</td>
                        <!-- <td>${wage.employeeId}</td> -->
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <h1>Wage Types</h1>
    <!-- 웨이지 유형 저장을 위한 폼 -->
    <form id="saveForm" action="/saveWageTypes" method="post">
        <table border="1" id="wageTypeTable">
            <thead>
                <tr>
                    <th>급여</th>
                    <th>급여유형</th>
                </tr>
            </thead>
            <tbody>
                <!-- wageTypeList를 기반으로 각 직원의 급여 유형 정보를 입력 폼으로 표시 -->
                <c:forEach var="wageType" items="${wageTypeList}">
                    <tr class="wageTypeRow" data-employee-id="${wageType.employeeId}">
                            <input type="hidden" name="employeeId" value="${wageType.employeeId}">
                        <!-- 급여 입력란 -->
                        <td>
                            <input type="text" name="wageValue" value="${wageType.wageValue}">
                        </td>
                        <!-- 급여 유형 입력란 (비활성화) -->
                        <td>
                            <input type="text" name="wageType" value="${wageTypeNames[wageType.wageTypeId]}" disabled>
                        </td>
                    </tr>
                </c:forEach>
                <!-- 저장 버튼 -->
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit">저장</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // 모든 wageTypeRows 숨기기
        const wageTypeRows = document.querySelectorAll('.wageTypeRow');
        wageTypeRows.forEach(typeRow => typeRow.style.display = 'none');

        // wageRow 클릭 시 해당하는 wageTypeRows 보이게 하기
        const wageRows = document.querySelectorAll('.wageRow');
        wageRows.forEach(row => {
            row.addEventListener('click', function () {
                // 다른 행의 활성화 제거
                wageRows.forEach(r => r.classList.remove('active'));
                this.classList.add('active');

                // 해당하는 직원의 wageTypeRows 보이기
                const employeeId = this.getAttribute('data-employee-id');
                wageTypeRows.forEach(typeRow => {
                    const typeEmployeeId = typeRow.getAttribute('data-employee-id');
                    typeRow.style.display = typeEmployeeId === employeeId ? 'table-row' : 'none';
                });
            });
        });
    });
</script>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
