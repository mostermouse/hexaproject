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
                <select name="viewCount">
                    <option value="30" <c:if test="${viewCount == 30}">selected</c:if>>30개씩 보기</option>
                    <option value="50" <c:if test="${viewCount == 50}">selected</c:if>>50개씩 보기</option>
                    <option value="100" <c:if test="${viewCount == 100}">selected</c:if>>100개씩 보기</option>
                </select>
                <button type="submit">조회</button>
            </div>
        </form>
        <table class="table table-hover">
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
                    <tr onclick="openDetails(${vacation.employeeId})">
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
</div>

    <!-- Modal -->
    <div class="modal fade" id="vacationDetailsModal" tabindex="-1" role="dialog" aria-labelledby="vacationDetailsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="vacationDetailsModalLabel">휴가 상세 내역</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="modalContent">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>입력일자</th>
                                    <th>휴가항목</th>
                                    <th>근태항목</th>
                                    <th>기간</th>
                                    <th>일수</th>
                                    <th>적용</th>
                                </tr>
                            </thead>
                            <tbody id="vacationDetailsBody">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function goToPage(page) {
            const urlParams = new URLSearchParams(window.location.search);
            urlParams.set('page', page);
            window.location.search = urlParams.toString();
        }

        function openDetails(employeeId) {
            $.ajax({
                url: '${pageContext.request.contextPath}/vacationDetails',
                method: 'GET',
                data: { employeeId: employeeId },
                success: function (data) {
                    var tbody = $('#vacationDetailsBody');
                    tbody.empty();
                    data.forEach(function (vacation) {
                        var row = '<tr>' +
                            '<td>' + vacation.number + '</td>' +
                            '<td>' + vacation.employmentDate + '</td>' +
                            '<td>' + vacation.vacationType + '</td>' +
                            '<td>' + vacation.employmentType + '</td>' +
                            '<td>' + vacation.period + '</td>' +
                            '<td>' + vacation.days + '</td>' +
                            '<td>' + (vacation.applicable ? 'O' : 'X') + '</td>' +
                            '</tr>';
                        tbody.append(row);
                    });
                    $('#vacationDetailsModal').modal('show');
                },
                error: function (xhr, status, error) {
                    console.log("Error: " + error);
                }
            });
        }
    </script>

</div>



<%@ include file="/WEB-INF/views/includes/footer.jsp"%>