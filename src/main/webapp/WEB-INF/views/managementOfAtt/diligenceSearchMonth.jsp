<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
    <div class="table-container">
        <div class="header-container">
            <img src="<%=request.getContextPath()%>/resources/images/contentimages/diligenceSearchMonth.png"
                 width="50" height="50">
            <h1>勤怠照会</h1>
        </div>
        <hr>
        <div class="search-container">
            <div class="title-table-right">
            <form style="margin-top: 60px;">
            <table class="empRegisterblack" style="margin-bottom: 20px; width: 400px;">
                    <thead>
                    <tr>
                    	<th style="width: 20px;"><input type="checkbox"></th>
                        <th style="width: 80px;">入力日</th>
                        <th style="width: 200px;"><input type="date" class="reginput-select"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>勤怠期間</td>
                        <td style="height: 20px;"><input style="height: 20px;" type="date" class="reginput-select"><span>~</span><input style="height: 20px;" type="date" class="reginput-select"></td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>部署</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">選択してください。</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>氏名</td>
                        <td><input class="reginputhide1" placeholder="氏名を入力してください。"></td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>勤怠グループ</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">選択してください。</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>勤怠項目</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">選択してください。</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>休暇項目</td>
                        <td>
                        	<select class="reginput-select">
                        		<option value="">選択してください。</option>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox"></td>
                        <td>摘要</td>
                        <td><input type="text" class="reginputhide1" placeholder="摘要があれば入力してください。"></td>
                    </tr>
                    </tbody>
                </table>
                 </form>
                 
                 <div class=divbtnsml style="margin-right: 120px;">
                    <button>検索</button>
                    <button class="cancel-btn">全体表示</button>
                </div>
            </div>

                <table class="empRegister1" style="margin-top: 60px;">
                    <thead class="empRegister-head1">
                    <tr>
                        <th>入力日</th>
                        <th>区分</th>
                        <th>氏名</th>
                        <th>部署</th>
                        <th>職位</th>
                        <th>勤怠記録</th>
                        <th>勤怠期間</th>
                        <th>勤怠日数</th>
                        <th>金額</th>
                        <th>摘要</th>
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