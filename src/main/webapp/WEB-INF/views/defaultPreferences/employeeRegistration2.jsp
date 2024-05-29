<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<style>
.grey-box {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 7px;
	padding-right: 7px;
	display: flex;
	align-items: center;
}
</style>
<script>
        function add1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table1');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
                <td class="empRegister-body"><input type="checkbox"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="date" class="reginput-select"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
                <td class="empRegister-body"><input type="text" class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete1(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table1');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add2(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table2');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="empRegister-body"><input type="checkbox"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="text" class="reginputhide"></td>
				<td class="empRegister-body"><input type="date" class="reginput-select"></td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="">選択</option>
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="">選択</option>
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
					</select>
				</td>
				<td class="empRegister-body">
					<select class="reginput-select">
						<option value="">選択</option>
						<option value="상">上</option>
						<option value="중">中</option>
						<option value="하">下</option>
					</select>
				</td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete2(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table2');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add3(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table3');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="empRegister-body"><input type="checkbox"></td>
				<td class="empRegister-body"><select class="reginput-select">
						<option value="">選択</option>
						<option value="社内職務">社内職務</option>
						<option value="社外職務">社外職務</option>
						<option value="階層教育">階層教育</option>
						<option value="語学教育">語学教育</option>
						<option value="その他">その他</option>
				</select></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="date"
					class="reginput-select"></td>
				<td class="empRegister-body"><input type="date"
					class="reginput-select"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhidepay"><span>円</span></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhidepay"><span>円</span></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete3(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table3');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add4(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table4');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="empRegister-body"><input type="checkbox"></td>
				<td class="empRegister-body"><select class="reginput-select">
						<option value="">選択</option>
						<option value="褒賞">褒賞</option>
						<option value="表彰">表彰</option>
						<option value="授賞">授賞</option>
						<option value="免職">免職</option>
						<option value="停職">停職</option>
						<option value="減給">減給</option>
						<option value="譴責">譴責</option>
						<option value="注意">注意</option>
						<option value="警告">警告</option>
						<option value="措置不可">措置不可</option>
						<option value="解雇">解雇</option>
				</select></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="date"
					class="reginput-select"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete4(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table4');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
        
        function add5(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table5');

            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="empRegister-body"><input type="checkbox"></td>
				<td class="empRegister-body"><select class="reginput-select">
						<option value="">選択</option>
						<option value="採用">採用</option>
						<option value="転補">転補</option>
						<option value="昇進">昇進</option>
						<option value="昇格">昇格</option>
						<option value="停職">停職</option>
						<option value="派遣">派遣</option>
				</select></td>
				<td class="empRegister-body"><input type="date"
					class="reginput-select"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
				<td class="empRegister-body"><input type="text"
					class="reginputhide"></td>
            `;

            tableBody.appendChild(newRow);
        }
        
        function delete5(event) {
        	event.preventDefault();
            const tableBody = document.querySelector('#table5');

            const rows = tableBody.querySelectorAll('tr');

            rows.forEach(row => {
                const checkbox = row.querySelector('input[type="checkbox"]');
                if (checkbox && checkbox.checked) {
                    tableBody.removeChild(row);
                }
            });
        }
    </script>
<div id="content">

	<div class="floating-container">
		<table class="floating-table">
			<thead>
				<tr>
					<th class="head" >社員番号</th>
					<th class="body">${employee.employeeId}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="head">氏名</td>
					<td class="body">${employee.koreanName}</td>
				</tr>
				<tr>
					<td class="head">部署</td>
					<td class="body">${employee.departmentName}</td>
				</tr>
				<tr>
					<td class="head">職位</td>
					<td class="body">${employee.positionName}</td>
				</tr>
				<tr>
					<td class="head">入社日</td>
					<td class="body">${employee.hireDate}</td>
				</tr>
			</tbody>
		</table>
		<h3 style="text-align: left;">社員情報1</h3>
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section1'">基本情報</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section2'">扶養家族</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section3'">学歴</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section4'">経歴</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/employeeIns?scrollToSection=section5'">兵力</button>
		</div>
		<hr>
		<h3 style="text-align: left;">社員情報2</h3>
		<div class="button-container-top">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section6'">資格免許</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section7'">教育訓練</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section8'">賞罰</button>
		</div>
		<div class="button-container-bottom">
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section9'">発令</button>
			<button
				onclick="window.location.href='<%=request.getContextPath()%>/personnel/register?scrollToSection=section10'">推奨身元保証</button>
		</div>
	</div>
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/employeeMnt.png"
				alt="" width="50" height="50">
			<h1 id="section1">社員登録</h1>
		</div>
		<h4>社員情報を登録するメニューです。 該当する項目だけ入力すればいいです。 (* 表示は必須入力事項)</h4>
		<hr>
		<br>
		<form id="registerForm"
			action="${pageContext.request.contextPath}/employeeregistration2"
			method="post" onsubmit="return validateForm()">




			<div class="table-container">
			<div class="grey-box" style="height: 30px;">
				<h2>社員情報2</h2>
			</div>
			</div>
			<div class="table-container">
				<div class="header-container">
					<h3 id="section6">資格·免許&語学能力</h3>
				</div>
				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 資格·免許</span>
					</h5>
					<div style="margin-left: auto;">
						<button onclick="add1(event)">追加</button>
						<button onclick="delete1(event)">削除</button>
					</div>
				</div>
				<table class="empRegister1" id="table1">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"></th>
							<th class="empRegister-head1">資格/免許名</th>
							<th class="empRegister-head1">取得日</th>
							<th class="empRegister-head1">発行機関</th>
							<th class="empRegister-head1">免許証番号</th>
							<th class="empRegister-head1">備考</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"></td>
							<td class="empRegister-body"><input type="text" id="certificationName" name="certificationName" class="reginputhide"></td>
							<td class="empRegister-body"><input type="date" id="acquisitionDate" name="acquisitionDate" class="reginputhide"></td>
							<td class="empRegister-body"><input type="text" id="issuingOrganization" name="issuingOrganization" class="reginputhide"></td>
							<td class="empRegister-body"><input type="text" id="certificationNumber" name="certificationNumber" class="reginputhide"></td>
							<td class="empRegister-body"><input type="text" id="remarks1" name="remarks1" class="reginputhide"></td>
						</tr>
					</tbody>
				</table>
				<br>
				<div class="header-container">
					<h5>
						<samp style="color: red;">+</samp>
						<span style="color: blue;"> 語学能力</span>
					</h5>
					<div style="margin-left: auto;">
						<button onclick="add2(event)">追加</button>
						<button onclick="delete2(event)">削除</button>
					</div>
				</div>
				<table class="empRegister1" id="table2">
					<thead>
						<tr>
							<th style="width: 20px;" class="empRegister-head1"></th>
							<th class="empRegister-head1">外国語名</th>
							<th class="empRegister-head1">試験</th>
							<th class="empRegister-head1">公認点数</th>
							<th class="empRegister-head1" style="width: 150px;">取得日</th>
							<th class="empRegister-head1">読解</th>
							<th class="empRegister-head1">作文</th>
							<th class="empRegister-head1">会話</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="empRegister-body"></td>
							<td class="empRegister-body"><input type="text" id="language" name="language"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="text" id="testName" name="testName"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="number" id="officialScore" name="officialScore"
								class="reginputhide"></td>
							<td class="empRegister-body"><input type="date" id="acquisitionDate1" name="acquisitionDate1"
								class="reginput-select"></td>
							<td class="empRegister-body"><select class="reginput-select" id="readingAbility" name="readingAbility">
									<option value="">選択</option>
									<option value="상">上</option>
									<option value="중">中</option>
									<option value="하">下</option>
							</select></td>
							<td class="empRegister-body"><select class="reginput-select" id="writingAbility" name="writingAbility">
									<option value="">選択</option>
									<option value="상">上</option>
									<option value="중">中</option>
									<option value="하">下</option>
							</select></td>
							<td class="empRegister-body"><select class="reginput-select" id="speakingAbility" name="speakingAbility">
									<option value="">選択</option>
									<option value="상">上</option>
									<option value="중">中</option>
									<option value="하">下</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<br>

				<!-- Training Table -->
        <div class="header-container">
            <h3 id="section7">教育訓練</h3>
            <div style="margin-left: auto;">
                <button onclick="add3(event)">追加</button>
                <button onclick="delete3(event)">削除</button>
            </div>
        </div>
        <table class="empRegister1" id="table3">
            <thead>
                <tr>
                    <th style="width: 20px;" class="empRegister-head1"></th>
                    <th class="empRegister-head1">教育区分</th>
                    <th class="empRegister-head1">教育名</th>
                    <th class="empRegister-head1" style="width: 150px;">教育期間(から)</th>
                    <th class="empRegister-head1" style="width: 150px;">教育期間(まで)</th>
                    <th class="empRegister-head1">教育機関</th>
                    <th class="empRegister-head1">教育費</th>
                    <th class="empRegister-head1">還付教育費</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"></td>
                    <td class="empRegister-body"><select class="reginput-select" id="trainingType" name="trainingType">
                            <option value="">選択</option>
                            <option value="사내직무">社内職務</option>
                            <option value="사외직무">社外職務</option>
                            <option value="계층교육">階層教育</option>
                            <option value="어학교육">語学教育</option>
                            <option value="기타">その他</option>
                    </select></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="trainingName" name="trainingName"></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="trainingStartDate" name="trainingStartDate"></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="trainingEndDate" name="trainingEndDate"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="trainingOrganization" name="trainingOrganization"></td>
                    <td class="empRegister-body"><input type="number" class="reginputhidepay" id="trainingCost" name="trainingCost"><span>円</span></td>
                    <td class="empRegister-body"><input type="number" class="reginputhidepay" id="refundableTrainingCost" name="refundableTrainingCost"><span>円</span></td>
                </tr>
            </tbody>
        </table>
        <br>

        <!-- Reward Table -->
        <div class="header-container">
            <h3 id="section8">賞罰</h3>
            <div style="margin-left: auto;">
                <button onclick="add4(event)">追加</button>
                <button onclick="delete4(event)">削除</button>
            </div>
        </div>
        <table class="empRegister1" id="table4">
            <thead>
                <tr>
                    <th style="width: 20px;" class="empRegister-head1"></th>
                    <th class="empRegister-head1" style="width: 80px;">区分</th>
                    <th class="empRegister-head1">賞罰名</th>
                    <th class="empRegister-head1">賞罰権者</th>
                    <th class="empRegister-head1">賞罰日</th>
                    <th class="empRegister-head1">賞罰内容</th>
                    <th class="empRegister-head1">備考</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"></td>
                    <td class="empRegister-body"><select class="reginput-select" id="rewardPenaltyType" name="rewardPenaltyType">
                            <option value="">選択</option>
                            <option value="褒賞">褒賞</option>
                            <option value="表彰">表彰</option>
                            <option value="授賞">授賞</option>
                            <option value="免職">免職</option>
                            <option value="停職">停職</option>
                            <option value="減給">減給</option>
                            <option value="譴責">譴責</option>
                            <option value="注意">注意</option>
                            <option value="警告">警告</option>
                            <option value="措置不可">措置不可</option>
                            <option value="解雇">解雇</option>
                    </select></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="rewardPenaltyName" name="rewardPenaltyName"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="rewardPenaltyGiver" name="rewardPenaltyGiver"></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="rewardPenaltyDate" name="rewardPenaltyDate"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="rewardPenaltyDescription" name="rewardPenaltyDescription"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="remarks2" name="remarks2"></td>
                </tr>
            </tbody>
        </table>
        <br>

        <!-- Appointment Table -->
        <div class="header-container">
            <h3 id="section9">発令</h3>
            <div style="margin-left: auto;">
                <button onclick="add4(event)">追加</button>
                <button onclick="delete4(event)">削除</button>
            </div>
        </div>
        <table class="empRegister1" id="table5">
            <thead>
                <tr>
                    <th style="width: 20px;" class="empRegister-head1"></th>
                    <th class="empRegister-head1" style="width: 70px;">発令区分</th>
                    <th class="empRegister-head1">発令日</th>
                    <th class="empRegister-head1">部署</th>
                    <th class="empRegister-head1">職位</th>
                    <th class="empRegister-head1">職責</th>
                    <th class="empRegister-head1">備考</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"></td>
                    <td class="empRegister-body"><select class="reginput-select" id="appointmentType" name="appointmentType">
                            <option value="">選択</option>
                            <option value="採用">採用</option>
                            <option value="転補">転補</option>
                            <option value="昇進">昇進</option>
                            <option value="昇格">昇格</option>
                            <option value="派遣">派遣</option>
                    </select></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="appointmentDate" name="appointmentDate"></td>
                    <td class="empRegister-body"><select id="departmentId"
                                                         name="departmentId" class="reginput-select">
                        <option value="">選択</option>
                        <c:forEach items="${department}" var="dept">
                            <option value="${dept.departmentId}">${dept.departmentName}</option>
                        </c:forEach>
                    </select></td>
                    <td class="empRegister-body"><select id="positionId" name="positionId" class="reginput-select">
                        <option value="">選択</option>
                        <c:forEach items="${position}" var="posi">
                            <option value="${posi.positionId}">${posi.positionName}</option>
                        </c:forEach>
                    </select></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="positionType" name="positionType"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="remarks3" name="remarks3"></td>
                </tr>
            </tbody>
        </table>
        <br>

        <!-- Recommendation & Guarantee Table -->
        <div class="header-container">
            <h3 id="section10">推薦 &身元保証</h3>
        </div>
        <div class="header-container">
            <h5>
                <samp style="color: red;">+</samp>
                <span style="color: blue;"> 推薦人</span>
            </h5>
        </div>
        <table class="empRegister1">
            <thead>
                <tr>
                    <th class="empRegister-head1">氏名</th>
                    <th class="empRegister-head1">関係</th>
                    <th class="empRegister-head1">社名</th>
                    <th class="empRegister-head1">職位</th>
                    <th class="empRegister-head1">電話番号</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="referrerName" name="referrerName"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="referrerRelationship" name="referrerRelationship"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="referrerCompanyName" name="referrerCompanyName"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="referrerPosition" name="referrerPosition"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="referrerPhoneNumber" name="referrerPhoneNumber"></td>
                </tr>
            </tbody>
        </table>

        <div class="header-container">
            <h5>
                <samp style="color: red;">+</samp>
                <span style="color: blue;"> 保証保険</span>
            </h5>
        </div>
        <table class="empRegister1">
            <thead>
                <tr>
                    <th class="empRegister-head1">加入機関</th>
                    <th class="empRegister-head1">保険番号</th>
                    <th class="empRegister-head1">保険金額</th>
                    <th class="empRegister-head1">加入日</th>
                    <th class="empRegister-head1">満了日</th>
                    <th class="empRegister-head1">備考</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="insuranceAgency" name="insuranceAgency"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="insuranceNumber" name="insuranceNumber"></td>
                    <td class="empRegister-body"><input type="number" class="reginputhidepay" id="insuranceAmount" name="insuranceAmount"><span>円</span></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="insuranceStartDate" name="insuranceStartDate"></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="insuranceEndDate" name="insuranceEndDate"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="remarks4" name="remarks4"></td>
                </tr>
            </tbody>
        </table>

        <div class="header-container">
            <h5>
                <samp style="color: red;">+</samp>
                <span style="color: blue;"> 保証人</span>
            </h5>
        </div>
        <table class="empRegister1">
            <thead>
                <tr>
                    <th class="empRegister-head1">氏名</th>
                    <th class="empRegister-head1">関係</th>
                    <th class="empRegister-head1">住民番号</th>
                    <th class="empRegister-head1" style="width: 160px;">保証金額</th>
                    <th class="empRegister-head1" style="width: 140px;">保証日</th>
                    <th class="empRegister-head1" style="width: 140px;">満了日</th>
                    <th class="empRegister-head1">電話番号</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="guarantorName" name="guarantorName"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="guarantorRelationship" name="guarantorRelationship"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="guarantorResidentNumber" name="guarantorResidentNumber"></td>
                    <td class="empRegister-body"><input type="number" class="reginputhidepay" id="guaranteeAmount" name="guaranteeAmount"><span>円</span></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="guaranteeDate" name="guaranteeDate"></td>
                    <td class="empRegister-body"><input type="date" class="reginput-select" id="guaranteeExpirationDate" name="guaranteeExpirationDate"></td>
                    <td class="empRegister-body"><input type="text" class="reginputhide" id="guarantorPhoneNumber" name="guarantorPhoneNumber"></td>
                </tr>
            </tbody>
        </table>
				<!-- Submit Button -->
				<br>
				<div class="divbtn">
					<button type="submit">登録</button>
				</div>
			</div>
		</form>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>