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
                <h1>급여항목 설정</h1>
            </div>
            <hr>
            <div class="search-container">
                <div class="title-table-left">
                    <h3>지급항목 설정</h3>
                    <table class="empRegister1">
                        <thead class="empRegister-head1">
                            <tr>
                                <th>지급항목</th>
                                <th>과세여부</th>
                                <th>비과세한도액</th>
                                <th>절사단위</th>
                                <th>근태연결/일괄지급</th>
                                <th>사용여부</th>
                            </tr>
                        </thead>
                        <tbody class="empRegister-body">
                            <tr>
                                <td>기본급</td>
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
                                <th style="width: 120px;">지급항목</th>
                                <th><input type="text" placeholder="지급 항목을 입력해 주세요." class="reginputhide"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>과세여부</td>
                                <td>
                                    <input type="checkbox" id="tax" name="tax"><label for="tax">전체과세</label>
                                    <input type="checkbox" id="notax" name="tax"><label for="notax">비과세</label>
                                </td>
                            </tr>
                            <tr class="nontax-field hidden">
                                <td>비과세명</td>
                                <td><input type="text" class="reginputhide"></td>
                            </tr>
                            <tr class="nontax-field hidden">
                                <td>비과세 한도액</td>
                                <td><input type="text" class="reginputhide"></td>
                            </tr>
                            <tr>
                                <td>계산방법</td>
                                <td><input type="text" placeholder="계산방법을 입력해주세요." class="reginputhide"></td>
                            </tr>
                            <tr>
                                <td>절사단위</td>
                                <td>
                                    <select class="reginput-select">
                                        <option value="">없음</option>
                                        <option value="">1원 단위</option>
                                        <option value="">10원 단위</option>
                                        <option value="">100원 단위</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>근태연결/일괄지급</td>
                                <td>
                                    <select class="reginput-select" id="paymentOption">
                                        <option value="">선택하세요.</option>
                                        <option value="일괄지급">일괄지급</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="bulk-payment-field hidden">
                                <td>일괄지급액</td>
                                <td>
                                    <input type="text" class="reginputhide" style="width: 80%; text-align: right;"><span>원</span>
                                </td>
                            </tr>
                            <tr>
                                <td>사용여부</td>
                                <td>
                                    <input type="checkbox" id="use" name="use" checked="checked"><label for="use">사용</label>
                                    <input type="checkbox" id="nouse" name="use"><label for="nouse">사용안함</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="divbtnsml">
                        <button>추가</button>
                        <button>수정</button>
                        <button class="cancel-btn">삭제</button>
                        <button class="cancel-btn">내용 지우기</button>
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
        if (this.value === '일괄지급') {
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