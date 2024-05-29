<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<style>
    .hidden {
        display: none;
    }
</style>
<div id="content">
    <div class="table-container">
        <div class="header-container">
            <img src="<%=request.getContextPath()%>/resources/images/contentimages/payItemSet.png" width="50" height="50">
            <h1>給与項目設定</h1>
        </div>
        <hr>
        <div class="search-container">
            <div class="title-table-left">
                <h3>支給項目設定</h3>
                <table class="empRegister1">
                    <thead class="empRegister-head1">
                        <tr>
                            <th>支給項目</th>
                            <th>節射単位</th>
                            <th>勤怠連結/一括支給</th>
                            <th>勤怠連結/一括支給 内容</th>
                            <th>使用可否</th>
                        </tr>
                    </thead>
                    <tbody class="empRegister-body">
                    <c:forEach var="wageType" items="${wageTypes}">
                        <tr class="table-row" 
                            data-id="${wageType.wageTypeId}"
                            data-name="${wageType.wageTypeName}"
                            data-numberCut="${wageType.numberCut}"
                            data-attendanceOrLumpsum="${wageType.attendanceOrLumpsum}"
                            data-attendanceOrLumpsumContent="${wageType.attendanceOrLumpsumContent}"
                            data-usage="${wageType.usage}">
                            <td class="empRegister-body">${wageType.wageTypeName}</td>
                            <td class="empRegister-body">${wageType.numberCut}</td>
                            <td class="empRegister-body">${wageType.attendanceOrLumpsum}</td>
                            <td class="empRegister-body">${wageType.attendanceOrLumpsumContent}</td>
                            <td class="empRegister-body" style="text-align: center;">
                                <c:choose>
                                    <c:when test="${wageType.usage eq 'T'}">O</c:when>
                                    <c:otherwise>X</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <form id="wageTypeForm" style="margin-top: 60px;">
                <input type="hidden" id="wageTypeId" name="wageTypeId">
                <table class="empRegisterblack" style="margin-bottom: 20px; width: 400px;">
                    <thead>
                        <tr>
                            <th style="width: 120px;">支給項目</th>
                            <th><input type="text" placeholder="支給項目を入力してください。" class="reginputhide"
                            id="wageTypeName" name="wageTypeName" required></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>節射単位</td>
                            <td>
                                <select class="reginput-select" id="numberCut" name="numberCut">
                                    <option value="">なし</option>
                                    <option value="1円単位">1円単位</option>
                                    <option value="10円単位">10円単位</option>
                                    <option value="100円単位">100円単位</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>勤怠連結/一括支給</td>
                            <td>
                                <select class="reginput-select" id="attendanceOrLumpsum" name="attendanceOrLumpsum">
                                    <option value="">選択してください。</option>
                                    <option value="勤怠連結">勤怠連結</option>
                                    <option value="一括払い">一括払い</option>
                                </select>
                            </td>
                        </tr>
                        <tr class="bulk-payment-field hidden">
                            <td>一括支給額</td>
                            <td>
                                <input type="text" class="reginputhide" style="width: 80%; text-align: right;"
                                id="attendanceOrLumpsumContent" name="attendanceOrLumpsumContent"><span>円</span>
                            </td>
                        </tr>
                        <tr>
                            <td>使用可否</td>
                            <td>
                                <input type="checkbox" id="usage" name="usage" value="T"><label for="use">使用</label>
                                <input type="checkbox" id="noUsage" name="usage" value="F"><label for="noUse">使用なし</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="divbtnsml">
                    <button type="button" onclick="submitWageTypeForm('/addPayItemSet')">追加</button>
                    <button type="button" onclick="submitWageTypeForm('/updatePayItemSet')">修正</button>
                    <button type="button" onclick="deleteItem()">削除</button>
                    <button class="cancel-btn" type="reset">内容をクリア</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function submitWageTypeForm(action) {
        var form = document.getElementById('wageTypeForm');
        form.action = action;
        form.method = "post";
        form.submit();
    }

    document.addEventListener('DOMContentLoaded', function() {
        var rows = document.querySelectorAll('.table-row');
        rows.forEach(function(row) {
            row.addEventListener('click', function() {
                document.getElementById('wageTypeId').value = this.getAttribute('data-id');
                document.getElementById('wageTypeName').value = this.getAttribute('data-name');
                document.getElementById('numberCut').value = this.getAttribute('data-numberCut');
                document.getElementById('attendanceOrLumpsum').value = this.getAttribute('data-attendanceOrLumpsum');
                document.getElementById('attendanceOrLumpsumContent').value = this.getAttribute('data-attendanceOrLumpsumContent');
                document.getElementById('usage').checked = this.getAttribute('data-usage') === 'T';
                document.getElementById('noUsage').checked = this.getAttribute('data-usage') === 'F';

                // Check the payment option to show/hide the bulk payment field
                var attendanceOrLumpsum = this.getAttribute('data-attendanceOrLumpsum');
                var bulkPaymentField = document.querySelector('.bulk-payment-field');
                if (attendanceOrLumpsum === '一括払い') {
                    bulkPaymentField.classList.remove('hidden');
                } else {
                    bulkPaymentField.classList.add('hidden');
                }
            });
        });
    });

    function deleteItem() {
        var wageTypeId = document.getElementById('wageTypeId').value;
        fetch('/deletePayItemSet?wageTypeId=' + wageTypeId, {
            method: 'DELETE'
        }).then(response => {
            if (response.redirected) {
                window.location.href = response.url;
            }
        }).catch(error => console.error('Error deleting item:', error));
    }

    document.addEventListener("DOMContentLoaded", function() {
        var paymentOption = document.getElementById('attendanceOrLumpsum');
        var bulkPaymentField = document.querySelector('.bulk-payment-field');

        paymentOption.addEventListener('change', function() {
            if (this.value === '一括払い') {
                bulkPaymentField.classList.remove('hidden');
            } else {
                bulkPaymentField.classList.add('hidden');
            }
        });

        var usageCheckboxes = document.querySelectorAll('input[type="checkbox"][name="usage"]');
        usageCheckboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                if (this.checked) {
                    usageCheckboxes.forEach(function(otherCheckbox) {
                        if (otherCheckbox !== checkbox) {
                            otherCheckbox.checked = false;
                        }
                    });
                }
            });
        });
    });
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>