<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div id="content">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$( "#btnSrchAll" ).click(function(){
	    location.replace("/dayWorkerMnt");
	    return ;
	  });
	
	$("#Search").click(function(){
		 var srchKwrd = $('#srchKwrd');
         if (srchKwrd.val() === '검색어 입력') {
             srchKwrd.val('');
         }
         if (srchKwrd.val().trim() === '') {
             alert("검색어를 입력해주세요.");
             return false;
         }
         return true;
	});
});

</script>
<h1>일용직 근무기록/관리</h1>
<div style="display: flex; width: 100%">
	<div style="float: left; width: 20%">
		<div style="display: flex;">
		<form action="/dayWorkerMnt">
		    <input name="srchKwrd" id="srchKwrd" type="text" value="검색어 입력" 
		           class="border w_170 height_22 p_l5" 
		           onfocus="if (this.value == '검색어 입력') { this.value = ''; }">
		    <input id="Search" type="submit" value="Search">
		</form>
		<input name="btnSrchAll" id="btnSrchAll" type="image" value="전체보기" alt="전체보기" title="전체보기"> 
		</div>
		<!-- 
		name="frmSrchEmployee" id="frmSrchEmployee" onsubmit="return $.fn.frmSrchCheck();"
		<div>
			<form name="dwmSrchEmployee" id="dwmSrchEmployee" onsubmit="return $.fn.frmSrchCheck();">
				<ul>
					<input name="srchKwrd" id="srchKwrd" type="text" value="검색어 입력" onfocus="this.value = (this.value == '검색어 입력')?'':this.value;">
				</ul>
				<ul>
					<input type="image" value="검색어 입력" src="/resources/images/btn_s_search.png" alt="검색어 입력" title="검색어 입력">
				</ul>
			</form>
			<ul>
				<input name="btnSrchAll" id="btnSrchAll" type="image" value="전체보기" alt="전체보기" title="전체보기"> 
			</ul>
		</div>
		 -->
		<table border="1">
		    <tr>
		    	<th>구분</th>
		        <th>사원번호</th>
		        <th>성명</th>
		        <th>부서</th>
		        <th>근무기록</th>
		    </tr>
		    <c:forEach items="${list}" var="dayWorker">
		        <tr>
		        	<td>${dayWorker.employmentType}</td>
		            <td>${dayWorker.employeeId}</td>
		            <td>${dayWorker.koreanName}</td>
		            <td>${dayWorker.positionId}</td>
		            <td><input type="image" value="관리"></td>
		        </tr>
		    </c:forEach>
		</table>
	</div>
	<div style="float: right; width: 80%">
		<form action="/ifrmDayWorker">
			<table border="1">
				<tr>
					<td>근무일자</td>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<td>현장/프로젝트</td>
					<td colspan=2>
					<select name="inputAttGroup" id="inputAttGroup">
					    	<option>선택하세요.</option>
					    	<c:forEach var="att" items="${attlist}">
					    		<option value="${att.attandanceGroupName}">${att.attandanceGroupName}</option>
					    	</c:forEach>
					</select>
					<input type="image" value="목록관리">
					</td>
				</tr>
				
					
				<tr>
					<td>일당</td>
					<td><input type="text" ></td>
				</tr>	
				<tr>
					<td colspan=2  align=center>
						<input  type=submit  value="저장"> &emsp;
						<input  type=button   value="내용 지우기">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>