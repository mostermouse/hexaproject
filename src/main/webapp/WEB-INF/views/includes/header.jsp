<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>header</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bodylocation.css">
</head>
<body>
	<div id="payzon-01">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_01.jpg" width="1920" height="71"
			alt="">
	</div>
	<!-- home -->
	<!-- index.jsp -->
	<div id="payzon-02" onclick="window.location.href='<%= request.getContextPath() %>/'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_02.jpg" width="97"
			height="80" alt="">
	</div>
	<!-- 사원등록 -->
	<!-- employeeRegistration.jsp -->
	<div id="payzon-03"
		onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_03.jpg" width="91" height="80"
			alt="">
	</div>
	<!-- 사원현황 -->
	<!-- employeeMnt.jsp -->
	<div id="payzon-04"
		onclick="window.location.href='<%=request.getContextPath()%>/employeeMnt'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_04.jpg"  width="102" height="80"
			alt="">
	</div>
	<!-- 근태기록/관리 -->
	<!-- managementOfAttendance.jsp -->
	<div id="payzon-05"
		onclick="window.location.href='<%=request.getContextPath()%>/diligenceMnt'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_05.jpg" width="124" height="80"
			alt="">
	</div>
	<!-- 휴가조회 -->
	<!-- holidaysSearchResult.jsp -->
	<div id="payzon-06"
		onclick="window.location.href='<%=request.getContextPath()%>/holidaysSearchResult'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_06.jpg" width="99" height="80"
			alt="">
	</div>
	<!-- 급여입력/관리 -->
	<!-- paymentMnt.jsp -->
	<div id="payzon-07"
		onclick="window.location.href='<%=request.getContextPath()%>/payment/paymentMnt'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_07.jpg" width="117" height="80"
			alt="">
	</div>
	<!-- 급여입력/관리(일용직) -->
	<!-- paymentMntDayWorker.jsp -->
	<div id="payzon-08"
		onclick="window.location.href='<%=request.getContextPath()%>/paymentMntDayWorker'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_08.jpg" width="139" height="80"
			alt="">
	</div>
	<!-- 급여 대장 -->
	<!-- paymentRegisterList.jsp -->
	<div id="payzon-09"
		onclick="window.location.href='<%=request.getContextPath()%>/payment/paymentRegisterList'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_09.jpg" width="103" height="80"
			alt="">
	</div>
	<!-- 사원별 급여내용 -->
	<!-- paymentPayList.jsp -->
	<div id="payzon-10"
		onclick="window.location.href='<%=request.getContextPath()%>/paymentPayList'">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_10.jpg" width="122" height="80"
			alt="">
	</div>
	<div id="payzon-11">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_11.jpg" width="926" height="80"
			alt="">
	</div>

	<!-- 기본 환경 설정 -->
	<!-- membersInfo.jsp -->
	<div id="payzon-12" class="payzon12">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_12.jpg" width="171" height="30"
			alt=""
			onclick="window.location.href='<%=request.getContextPath()%>/membersInfo'">
		<!-- 사용자 정보 -->
		<!-- membersInfo.jsp -->
		<div class="menu-item" id="payzon-17"
			onclick="window.location.href='<%=request.getContextPath()%>/membersInfo'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_17.jpg" alt="Item 17">
		</div>
		<!-- 사원 등록 -->
		<!-- employeeRegistration.jsp -->
		<div class="menu-item" id="payzon-22"
			onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_22.jpg" alt="Item 22">
		</div>
		<!-- 휴가/근태설정 -->
		<!-- dnLItemSet.jsp -->
		<div class="menu-item" id="payzon-26"
			onclick="window.location.href='<%=request.getContextPath()%>/dnLItem'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_26.jpg" alt="Item 26">
		</div>
		<!-- 급여항목설정 -->
		<!-- payItemSet.jsp -->
		<div class="menu-item" id="payzon-29"
			onclick="window.location.href='<%=request.getContextPath()%>/payItem'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_29.jpg" alt="Item 29">
		</div>
	</div>

	<!-- 인사관리 -->
	<!-- employeeMnt.jsp -->
	<div id="payzon-13" class="payzon13">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_13.jpg" width="171" height="30"
			alt=""
			onclick="window.location.href='<%=request.getContextPath()%>/'">
		<!-- 사원현황관리 -->
		<!-- employeeMnt.jsp -->
		<div class="menu-item" id="payzon-18"
			onclick="window.location.href='<%=request.getContextPath()%>/employeeMnt'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_18.jpg" alt="Item 18">
		</div>
	</div>

	<!-- 근태 관리 -->
	<!-- managementOfAttendance.jsp -->
	<div id="payzon-14" class="payzon14">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_14.jpg" width="171" height="30"
			alt=""
			onclick="window.location.href='<%=request.getContextPath()%>/diligenceMnt'">
		<!-- 근태기록/관리 -->
		<!-- managementOfAttendance.jsp -->
		<div class="menu-item" id="payzon-19"
			onclick="window.location.href='<%=request.getContextPath()%>/diligenceMnt'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_19.jpg" alt="Item 19">
		</div>
		<!-- 근태 조회 -->
		<!-- diligenceSearchMonth.jsp -->
		<div class="menu-item" id="payzon-24"
			onclick="window.location.href='<%=request.getContextPath()%>/diligenceSearchMonth'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_24.jpg" alt="Item 24">
		</div>
		<!-- 휴가 조회 -->
		<!-- holidaysSearchResult.jsp -->
		<div class="menu-item" id="payzon-27"
			onclick="window.location.href='<%=request.getContextPath()%>/holidaysSearchResult'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_27.jpg" alt="Item 27">
		</div>
		<!-- 일용근무기록/관리 -->
		<!-- dayWorkerMnt.jsp -->
		<div class="menu-item" id="payzon-30"
			onclick="window.location.href='<%=request.getContextPath()%>/dayWorkerMnt'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_30.jpg" alt="Item 30">
		</div>
		<!-- 일용 근무 조회 -->
		<!-- dayWorkerSearchMonth.jsp -->
		<div class="menu-item" id="payzon-33"
			onclick="window.location.href='<%=request.getContextPath()%>/dayWorkerSearchMonth'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_33.jpg" alt="Item 33">
		</div>
	</div>

	<!-- 급여관리 -->
	<!-- paymentMnt.jsp -->
	<div id="payzon-15" class="payzon15">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_15.jpg" width="171" height="30"
			alt="" onclick="window.location.href='<%= request.getContextPath() %>/payment/paymentMnt'">
		<!-- 급여입력/관리 -->
		<!-- paymentMnt.jsp -->
		<div class="menu-item" id="payzon-20"
			onclick="window.location.href='<%= request.getContextPath() %>/payment/paymentMnt'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_20.jpg" alt="Item 20">
		</div>
		<!-- 급여입력/관리(일용직) -->
		<!-- paymentMntDayWorker.jsp -->
		<div class="menu-item" id="payzon-25"
			onclick="window.location.href='<%= request.getContextPath() %>/paymentMntDayWorker'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_25.jpg" alt="Item 25">
		</div>
		<!-- 급여 대장 -->
		<!-- paymentRegisterList.jsp -->
		<div class="menu-item" id="payzon-28"
			onclick="window.location.href='<%= request.getContextPath() %>/payment/paymentRegisterList'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_28.jpg" alt="Item 28">
		</div>
		<!-- 사원별 급여내용 -->
		<!-- paymentPayList.jsp -->
		<div class="menu-item" id="payzon-31"
			onclick="window.location.href='<%= request.getContextPath() %>/paymentPayList'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_31.jpg" alt="Item 31">
		</div>
		<!-- 항목별 조회 -->
		<!-- paymentPayItemPart.jsp -->
		<div class="menu-item" id="payzon-34"
			onclick="window.location.href='<%= request.getContextPath() %>/paymentPayItemPart'">
			<img src="<%= request.getContextPath() %>/resources/images/payzon_34.jpg" alt="Item 34">
		</div>
	</div>

	<div id="payzon-16">
		<img src="<%= request.getContextPath() %>/resources/images/payzon_16.jpg" width="1236" height="30"
			alt="">
	</div>

	<script src="<%= request.getContextPath() %>/resources/js/main.js"></script>