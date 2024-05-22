<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vacation list</title>
</head>
<body>
	<div class="container">
		<h2>휴가조회</h2>
		<p>전체 사원 휴가현황을 한 번에 보실 수 있습니다. 사원별 상세 휴가내역도 확인할 수 있습니다.</p>

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
				<c:forEach items="${vacDaysList}" var="vacDays">
					<c:forEach items="${vacTypeList}" var="vacTypes">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>${vacTypes.vacationTypeName}</td>
							<td>${vacDays.vacationValue}</td>
						
						</tr>
					</c:forEach>
				</c:forEach>
			</tbody>
		</table>
		<div class="pagination">
			<button>이전페이지</button>
			<span>1</span>
			<button>다음페이지</button>
		</div>
	</div>
</body>
</html>