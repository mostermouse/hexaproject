<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">
	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/paymentMnt.png"
				width="50" height="50">
			<h1>給与入力/管理</h1>
		</div>
		<hr>
		<div class="form-container">
			<div class="red-box">
				<form id="searchForm" method="post" action="/wages/search"
					style="display: flex; flex-wrap: wrap; align-items: center;">
					<label>*帰属年月</label> <select id="yearSelect" name="year"
						class="reginput-select">
						<c:forEach var="y" begin="2010"
							end="<%=java.time.LocalDate.now().getYear()%>">
							<option value="${y}"
								<c:if test="${y eq param.year}">selected</c:if>>${y}</option>
						</c:forEach>
					</select> <select id="monthSelect" name="month"
						class="monthSelect reginput-select">
						<option value="">選択</option>
						<option value="01">1月</option>
						<option value="02">2月</option>
						<option value="03">3月</option>
						<option value="04">4月</option>
						<option value="05">5月</option>
						<option value="06">6月</option>
						<option value="07">7月</option>
						<option value="08">8月</option>
						<option value="09">9月</option>
						<option value="10">10月</option>
						<option value="11">11月</option>
						<option value="12">12月</option>
					</select> <label>給与次数</label> <select id="wagePeriodSelect"
						name="wagePeriod" class="reginput-select" required>
						<option value="">選択してください</option>
						<option value="1">給与-1次</option>
						<option value="2">給与-2次</option>
						<option value="3">給与-3次</option>
						<option value="4">給与-4次</option>
						<option value="5">給与-5次</option>
						<option value="6">給与-6次</option>
						<option value="7">給与-7次</option>
						<option value="8">給与-8次</option>
						<option value="9">給与-9次</option>
						<option value="10">給与-10次</option>
					</select> <label for="calc-date-start">精算期間</label> <input type="date"
						id="settlementStartDate" name="settlementStart"
						class="reginput-select" required> ~ <input type="date"
						id="settlementEndDate" name="settlementEnd"
						class="reginput-select" required> <label>給与支払日</label> <input
						type="date" id="wagePaymentDate" name="paymentDate"
						class="reginput-select" required>
					<button type="submit" id="searchButton" style="margin-left: 10px;">朝会</button>
				</form>
			</div>
		</div>

		<div class="search-container">
			<div class="title-table-right">
				<table class="empRegister1" style="margin-top: 50px;">
					<thead class="empRegister-head1">
						<tr style="text-align: center;">
							<th>雇用形態</th>
							<th>氏名</th>
							<th>部署</th>
							<th>支払総額</th>
						</tr>
					</thead>
					<tbody class="empRegister-body">
						<c:forEach var="wage" items="${wages}">
							<tr data-employee-id="${wage.employeeId}" class="employee-row">
								<td>${wage.employmentType}</td>
								<td>${wage.koreanName}</td>
								<td>${wage.departmentName}</td>
								<td style="text-align: right; color: blue;">${wage.totalWage}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<form id="payItemForm" style="margin-top: 50px;">
				<table class="empRegisterblack"
					style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr style="background-color: #f1f1f1">
							<th colspan="2" style="text-align: center;">支給項目</th>
						</tr>
					</thead>
					<tbody id="payItemBody">
						<c:forEach var="item" items="${wageTypes}">
							<tr>
								<td data-wage-type-id="${item.wageTypeId}">${item.wageTypeName}</td>
								<td><input type="text" class="wage-value"
									style="width: 95%;"></td>
							</tr>
						</c:forEach>
						<tr style="background-color: #f1f1f1">
							<td colspan="1">支払総額</td>
							<td style="text-align: right; color: blue;"></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" id="employeeIdHidden" name="employeeId">
				<input type="hidden" id="hiddenWagePeriod" name="wagePeriod">
				<input type="hidden" id="hiddenSettlementStartDate"
					name="settlementStart"> <input type="hidden"
					id="hiddenSettlementEndDate" name="settlementEnd"> <input
					type="hidden" id="hiddenWagePaymentDate" name="paymentDate">
				<div class="divbtnsml" style="margin-left: 50px;">
					<button type="submit">セーブ</button>
				</div>
			</form>
		</div>
		<hr style="margin-top: 50px;">

		<div class="table-container">
			<div class="header-container">
				<h3>給与総合情報</h3>
			</div>
		</div>
		<div class="rectangle-container">
			<div class="rectangle dark-gray">
				<span class="text-left">月合計</span> <span class="text-right">件</span>
			</div>
			<div class="rectangle sky-blue">
				<span class="text-left">支払総額</span> <span class="text-right">円</span>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

<script>
let selectedEmployeeId = null;

document.addEventListener("DOMContentLoaded", function() {
    const yearSelect = document.getElementById("yearSelect");
    const monthSelect = document.getElementById("monthSelect");
    const settlementStartDate = document.getElementById("settlementStartDate");
    const settlementEndDate = document.getElementById("settlementEndDate");
    const wagePaymentDate = document.getElementById("wagePaymentDate");
    const employeeRows = document.querySelectorAll(".employee-row");

    function updateDates() {
        const year = yearSelect.value;
        const month = monthSelect.value;
        if (year && month) {
            const startDate = new Date(year, month - 1, 1);
            const endDate = new Date(year, month, 0);
            const paymentDate = new Date(year, month - 1, 5);
            paymentDate.setMonth(paymentDate.getMonth() + 1);

            settlementStartDate.value = startDate.toISOString().split('T')[0];
            settlementEndDate.value = endDate.toISOString().split('T')[0];
            wagePaymentDate.value = paymentDate.toISOString().split('T')[0];
        }
    }

    yearSelect.addEventListener("change", updateDates);
    monthSelect.addEventListener("change", updateDates);

    employeeRows.forEach(row => {
        row.addEventListener("click", function() {
            selectedEmployeeId = this.getAttribute("data-employee-id");
            document.getElementById("employeeIdHidden").value = selectedEmployeeId;
            fetchWageDetails(selectedEmployeeId);
        });
    });

    function fetchWageDetails(employeeId) {
        fetch("/wages/byEmployee", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams({
                employeeId: employeeId
            })
        })
        .then(response => response.json())
        .then(data => {
            console.log("Data received from server:", data);
            updatePayItemForm(data);
        })
        .catch(error => console.error("Error fetching data:", error));
    }

    function updatePayItemForm(wageDetails) {
        const wageValueInputs = document.querySelectorAll(".wage-value");

        wageValueInputs.forEach(input => input.value = '');

        wageDetails.forEach(detail => {
            const wageTypeName = detail.WAGETYPENAME;
            const wageValue = detail.WAGEVALUE || 0;

            const input = Array.from(wageValueInputs).find(input => 
                input.closest("tr").querySelector("td").innerText.trim() === wageTypeName);

            if (input) {
                input.value = wageValue;
            }
        });
    }

    updateDates();
});
document.getElementById("payItemForm").addEventListener("submit", function(event) {
    event.preventDefault();

    const employeeId = document.getElementById("employeeIdHidden").value;
    const wagePeriod = document.getElementById("hiddenWagePeriod").value;
    const settlementStartDate = document.getElementById("hiddenSettlementStartDate").value;
    const settlementEndDate = document.getElementById("hiddenSettlementEndDate").value;
    const wagePaymentDate = document.getElementById("hiddenWagePaymentDate").value;

    const wageValues = Array.from(document.querySelectorAll(".wage-value")).reduce((acc, input) => {
        const wageTypeId = input.closest("tr").querySelector("td").getAttribute("data-wage-type-id");
        const wageValue = input.value;
        if (wageTypeId && wageValue) {
            acc[wageTypeId] = wageValue;
        }
        return acc;
    }, {});

    fetch(`/wages/update?employeeId=${employeeId}&wagePeriod=${wagePeriod}&settlementStartDate=${settlementStartDate}&settlementEndDate=${settlementEndDate}&wagePaymentDate=${wagePaymentDate}`, {
        method: "PUT",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(wageValues)
    })
    .then(response => response.text())
    .then(data => {
        if (data === "Success") {
            alert("Wages updated successfully");
        } else {
            alert("Error updating wages");
        }
    })
    .catch(error => console.error("Error updating wages:", error));
});
</script>
