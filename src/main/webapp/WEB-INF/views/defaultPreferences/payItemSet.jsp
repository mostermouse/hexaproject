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
                                <th>課税の可否</th>
                                <th>非課税限度額</th>
                                <th>節射単位</th>
                                <th>勤怠連結/一括支給</th>
                                <th>使用可否</th>
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
                            </tr>
                        </tbody>
                    </table>
                </div>

                <form style="margin-top: 60px;">
                    <table class="empRegisterblack" style="margin-bottom: 20px; width: 400px;">
                        <thead>
                            <tr>
                                <th style="width: 120px;">支給項目</th>
                                <th><input type="text" placeholder="支給項目を入力してください。" class="reginputhide"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>課税可否</td>
                                <td>
                                    <input type="checkbox" id="tax" name="tax"><label for="tax">全体課税</label>
                                    <input type="checkbox" id="notax" name="tax"><label for="notax">非課税</label>
                                </td>
                            </tr>
                            <tr class="nontax-field hidden">
                                <td>非課税名</td>
                                <td><input type="text" class="reginputhide"></td>
                            </tr>
                            <tr class="nontax-field hidden">
                                <td>非課税限度額</td>
                                <td><input type="text" class="reginputhide"></td>
                            </tr>
                            <tr>
                                <td>計算方法</td>
                                <td><input type="text" placeholder="計算方法を入力してください" class="reginputhide"></td>
                            </tr>
                            <tr>
                                <td>節射単位</td>
                                <td>
                                    <select class="reginput-select">
                                        <option value="">なし</option>
                                        <option value="">1円単位</option>
                                        <option value="">10円単位</option>
                                        <option value="">100円単位</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>勤怠連結/一括支給</td>
                                <td>
                                    <select class="reginput-select" id="paymentOption">
                                        <option value="">選択してください。</option>
                                        <option value="일괄지급">一括払い</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="bulk-payment-field hidden">
                                <td>一括支給額</td>
                                <td>
                                    <input type="text" class="reginputhide" style="width: 80%; text-align: right;"><span>円</span>
                                </td>
                            </tr>
                            <tr>
                                <td>使用可否</td>
                                <td>
                                    <input type="checkbox" id="use" name="use" checked="checked"><label for="use">使用</label>
                                    <input type="checkbox" id="nouse" name="use"><label for="nouse">使用なし</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="divbtnsml">
                        <button>追加</button>
                        <button>修整</button>
                        <button class="cancel-btn">削除</button>
                        <button class="cancel-btn">内容消去</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var taxCheckboxes = document.querySelectorAll('input[type="checkbox"][name="tax"]');
    var nontaxFields = document.querySelectorAll('.nontax-field');
    var paymentOption = document.getElementById('paymentOption');
    var bulkPaymentField = document.querySelector('.bulk-payment-field');

    taxCheckboxes.forEach(function(checkbox) {
        checkbox.addEventListener('click', function() {
            if (this.checked) {
                taxCheckboxes.forEach(function(otherCheckbox) {
                    if (otherCheckbox !== checkbox) {
                        otherCheckbox.checked = false;
                    }
                });

                if (this.id === 'notax') {
                    nontaxFields.forEach(function(field) {
                        field.classList.remove('hidden');
                    });
                } else {
                    nontaxFields.forEach(function(field) {
                        field.classList.add('hidden');
                    });
                }
            }
        });
    });

    paymentOption.addEventListener('change', function() {
        if (this.value === '一括払い') {
            bulkPaymentField.classList.remove('hidden');
        } else {
            bulkPaymentField.classList.add('hidden');
        }
    });
});

document.addEventListener("DOMContentLoaded", function() {
    var checkboxes = document.querySelectorAll('input[type="checkbox"][name="use"]');

    checkboxes.forEach(function(checkbox) {
        checkbox.addEventListener('click', function() {
            if (this.checked) {
                checkboxes.forEach(function(otherCheckbox) {
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