<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
	<%-- 사원 숫자 표시 --%>
	<div class="table-container1">
		<div class="title-table-left">
			<h3>社員現況</h3>
		</div>
		<table class="tg">
			<thead>
				<tr>
					<th class="tg-ev56">在職者</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${employed}</td>
				</tr>
			</tbody>
		</table>

		<table class="tg">
			<thead>
				<tr>
					<th class="tg-c5zh">正社員</th>
					<th class="tg-c5zh">契約職</th>
					<th class="tg-c5zh">臨時職</th>
					<th class="tg-c5zh">派遣職</th>
					<th class="tg-c5zh">委嘱職</th>
					<th class="tg-c5zh">日雇い</th>
					<th class="tg-c5zh">退社者</th>
					<th class="tg-c5zh">全体</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-jc02">${regular}</td>
					<td class="tg-jc02">${contract}</td>
					<td class="tg-jc02">${temporary}</td>
					<td class="tg-jc02">${dispatched}</td>
					<td class="tg-jc02">${appointed}</td>
					<td class="tg-jc02">${daily}</td>
					<td class="tg-jc02">${resigned}</td>
					<td class="tg-jc02">${allemployees}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
	
	<div class="search-containerr">
        <div class="table-containerr">
            <div class="flex-containerr">
                <h3>会社情報</h3>
            </div>
            <table class="empRegister1">
                <thead>
                    <tr>
                        <th class="empRegister-head1">相互名</th>
                        <th class="empRegister-body">${company.companyName}</th>
                        <th class="empRegister-head1">代表者</th>
                        <th class="empRegister-body">${company.representativeName}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="empRegister-head1">事業者番号</td>
                        <td class="empRegister-body">${company.businessNumber}</td>
                        <td class="empRegister-head1">法人登録番号</td>
                        <td class="empRegister-body">${company.corporationNumber}</td>
                    </tr>
                    <tr>
                        <td class="empRegister-head1">設立日</td>
                        <td class="empRegister-body">${company.establishmentDate}</td>
                        <td class="empRegister-head1">ホームページ</td>
                        <td class="empRegister-body">${company.website}</td>
                    </tr>
                    <tr>
                        <td class="empRegister-head1">事業所の住所</td>
                        <td colspan="3" class="empRegister-body">${company.officeAddress}</td>
                    </tr>
                    <tr>
                        <td class="empRegister-head1">電話番号</td>
                        <td class="empRegister-body">${company.phoneNumber}</td>
                        <td class="empRegister-head1">ファックス番号</td>
                        <td class="empRegister-body">${company.faxNumber}</td>
                    </tr>
                    <tr>
                        <td class="empRegister-head1">業態</td>
                        <td class="empRegister-body">${company.businessType}</td>
                        <td class="empRegister-head1">種目</td>
                        <td class="empRegister-body">${company.businessItem}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="table-containerr">
            <div class="flex-containerr">
                <h3>給与台帳</h3>
                <div class="form-containerr">
                    <form action="/" method="get">
                        <label for="year">選択年:</label>
                        <select name="year" id="year">
                            <!-- 2010년부터 현재 연도까지의 년도를 선택할 수 있도록 -->
                            <c:forEach var="y" begin="2010" end="<%=java.time.LocalDate.now().getYear()%>">
                                <option value="${y}" <c:if test="${y eq param.year}">selected</c:if>>${y}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="照会">
                    </form>
                </div>
            </div>
            
            <table class="empRegister1">
            	<thead>
            		<tr>
            			<th class="empRegister-head1">帰属年月</th>
            			<th class="empRegister-head1">給与次数</th>
            			<th class="empRegister-head1">精算期間</th>
            			<th class="empRegister-head1">支払日</th>
            			<th class="empRegister-head1">人員</th>
            			<th class="empRegister-head1">総支払額</th>
            		</tr>
            	</thead>
            	<tbody>
            	<c:forEach items="${listWageRecord}" var="record">
            		<tr>
            			<td class="empRegister-body" style="text-align: center;">${record.yearMonth}</td>
            			<td class="empRegister-body" style="text-align: center;">${record.wagePeriod}</td>
            			<td class="empRegister-body" style="text-align: center;">${record.settlementPeriodStartDate}~${record.settlementPeriodEndDate}</td>
            			<td class="empRegister-body" style="text-align: center;">${record.wagePaymentDate}</td>
            			<td class="empRegister-body" style="text-align: center;">${record.paidEmployeeCount}</td>
            			<td class="empRegister-body" style="text-align: right; color: blue;">${record.totalPaidWage}円</td>
            		</tr>
            		</c:forEach>
            	</tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
