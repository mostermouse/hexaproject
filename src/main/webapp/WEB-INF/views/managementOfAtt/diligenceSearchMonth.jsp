<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
    <div class="table-container">
        <div class="header-container">
            <img src="<%=request.getContextPath()%>/resources/images/contentimages/diligenceSearchMonth.png"
                 width="50" height="50">
            <h1>근태조회</h1>
        </div>
        <hr>
        <div class="search-container">
            <div class="title-table-right">
            <form style="margin-top: 60px;">
            <table class="empRegisterblack" style="margin-bottom: 20px; width: 400px;">
                    <thead>
                    <tr>
                    	<th style="width: 20px;"><input type="checkbox"></th>
                        <th style="width: 80px;">입력일자</th>
                        <th style="width: 200px;"><input type="date" class="reginput-select"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>근태기간</td>
                        <td style="height: 20px;"><input style="height: 20px;" type="date" class="reginput-select"><span>~</span><input style="height: 20px;" type="date" class="reginput-select"></td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>부서</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">선택하세요.</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>성명</td>
                        <td><input class="reginputhide1" placeholder="성명을 입력하세요."></td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>근태그룹</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">선택하세요.</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>근태항목</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">선택하세요.</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>휴가항목</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">선택하세요.</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>적요</td>
                        <td><input type="text" class="reginputhide1" placeholder="적요가있다면 입력해주세요."></td>
                    </tr>
                    </tbody>
                </table>
                 </form>
                 
                 <div class=divbtnsml style="margin-right: 120px;">
                    <button>검색</button>
                    <button class="cancel-btn">전체보기</button>
                </div>
            </div>

                <table class="empRegister1" style="margin-top: 60px;">
                    <thead class="empRegister-head1">
                    <tr>
                        <th>입력일자</th>
                        <th>구분</th>
                        <th>성명</th>
                        <th>부서</th>
                        <th>직위</th>
                        <th>근태기록</th>
                        <th>근태기간</th>
                        <th>근태일수</th>
                        <th>금액</th>
                        <th>적요</th>
                    </tr>
                    </thead>

                    <tbody class="empRegister-body">
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>