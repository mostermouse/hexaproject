<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">

	<div class="container">
        <h2>휴가조회</h2>
        <p>전체 사원 휴가현황을 한 번에 보실 수 있습니다. 사원별 상세 휴가내역도 확인할 수 있습니다.</p>
        <form method="get" action="${pageContext.request.contextPath}/holidaysSearchResult">
            <div class="filters">
                <select name="vacationTypeName" id="vacationTypeName">
                    <option value="">휴가항목 선택</option>
                    <c:forEach items="${vacTypeList}" var="vacType">
                        <option value="${vacType.vacationTypeName}">${vacType.vacationTypeName}</option>
                    </c:forEach>
                </select>
                <select name="status" id="status">
                    <option value="">재직</option>
                    <c:forEach items="${statusList}" var="status">
                        <option value="${status}">${status}</option>
                    </c:forEach>
                </select>
                <select name="employmentType" id="employmentType">
                    <option value="">구분별</option>
                    <c:forEach items="${employmentTypeList}" var="employmentType">
                        <option value="${employmentType}">${employmentType}</option>
                    </c:forEach>
                </select>
                <select name="departmentId" id="departmentId">
                    <option value="">부서별</option>
                    <c:forEach items="${departmentList}" var="department">
                        <option value="${department.departmentId}">${department.departmentName}</option>
                    </c:forEach>
                </select>
                <select name="positionId" id="positionId">
                    <option value="">직급별</option>
                    <c:forEach items="${positionList}" var="position">
                        <option value="${position.positionId}">${position.positionName}</option>
                    </c:forEach>
                </select>
                <input type="text" name="searchKeyword" placeholder="검색어 입력" value="${searchKeyword}">
                <select name="viewCount">
                    <option value="30" <c:if test="${viewCount == 30}">selected</c:if>>30개씩 보기</option>
                    <option value="50" <c:if test="${viewCount == 50}">selected</c:if>>50개씩 보기</option>
                    <option value="100" <c:if test="${viewCount == 100}">selected</c:if>>100개씩 보기</option>
                </select>
                <button type="submit">조회</button>
            </div>
        </form>
        <table>
            <thead>
                <tr>
                    <th>구분</th>
                    <th>사원번호</th>
                    <th>성명</th>
                    <th>부서</th>
                    <th>직위</th>
                    <th>휴가항목</th>
                    <th>전체</th>
                    <th>사용</th>
                    <th>잔여</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${vacList}" var="vacation">
                    <tr>
                        <td>${vacation.employmentType}</td>
                        <td>${vacation.employeeId}</td>
                        <td>${vacation.koreanName}</td>
                        <td>${vacation.departmentName}</td>
                        <td>${vacation.positionName}</td>
                        <td>${vacation.vacationTypeName}</td>
                        <td>${vacation.totalVacationDays}</td>
                        <td>${vacation.usedVacationDays}</td>
                        <td>${vacation.remainingVacationDays}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="pagination">
            <button onclick="goToPage(${currentPage - 1})" <c:if test="${currentPage == 1}">disabled</c:if>>이전페이지</button>
            <c:forEach begin="1" end="${totalPages}" var="i">
                <button onclick="goToPage(${i})" <c:if test="${currentPage == i}">class="active"</c:if>>${i}</button>
            </c:forEach>
            <button onclick="goToPage(${currentPage + 1})" <c:if test="${currentPage == totalPages}">disabled</c:if>>다음페이지</button>
        </div>
    </div>

    <script>
        function goToPage(page) {
            const urlParams = new URLSearchParams(window.location.search);
            urlParams.set('page', page);
            window.location.search = urlParams.toString();
        }
    </script>

</div>


<%@ include file="/WEB-INF/views/includes/footer.jsp"%>