<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<style>
    h2 {
        background-color: #333;
        color: white;
        padding: 10px;
    }
</style>

<script>
    function validateForm() {
        var employmentType = document.getElementById("employmentType").value;
        var hireDate = document.getElementById("hireDate").value;
        var relationship = document.getElementById("relationship").value;
        var parentsName = document.getElementById("parentsName").value;
        if (employmentType === "") {
            alert("기본 정보의 고용 형태를 선택해주세요.");
            document.getElementById("employmentType").focus(); // 기본 정보의 고용 형태에 돌아감
            return false;
        } else if (hireDate === "") {
            alert("기본 정보의 입사일을 선택해주세요.");
            document.getElementById("hireDate").focus(); // 기본 정보의 입사일에 돌아감
            return false;
        }
        return true;
    }
</script>

<div id="content">
    <h1>사원 등록</h1>
    <h4>사원정보를 등록하는 메뉴입니다. 해당되는 항목만 입력하시면 됩니다. (* 표시는 필수 입력사항)</h4>
    <form id="registerForm"
          action="${pageContext.request.contextPath}/employeeregistration"
          method="post" onsubmit="return validateForm()">
        <!-- Employee Table -->
        <table border="1">
            <tr>
                <h3>기본 정보</h3>
            </tr>
            <tr>
                <td><label for="employeeId">사원번호</label></td>
                <td><input type="text" id="employeeId" name="employeeId"
                           required></td>
            </tr>
            <tr>
                <td><label for="koreanName">*한글 이름</label></td>
                <td><input type="text" id="koreanName" name="koreanName"
                           required></td>
            </tr>
            <tr>
                <td><label for="englishName">영문 이름</label></td>
                <td><input type="text" id="englishName" name="englishName"></td>
            </tr>
            <tr>
                <td><label for="employmentType">*고용 형태</label></td>
                <td><select id="employmentType" name="employmentType">
                    <option value="">선택해주세요.</option>
                    <option value="정규직">정규직</option>
                    <option value="계약직">계약직</option>
                    <option value="임시직">임시직</option>
                    <option value="파견직">파견직</option>
                    <option value="위촉직">위촉직</option>
                    <option value="일용직">일용직</option>
                </select></td>
            </tr>
            <tr>
                <td><label for="hireDate">*입사일</label></td>
                <td><input type="date" id="hireDate" name="hireDate"></td>
            </tr>
            <tr>
                <td><label for="resignationDate">퇴사일</label></td>
                <td><input type="date" id="resignationDate"
                           name="resignationDate"></td>
            </tr>
            <tr>
                <td><label for="department">부서</label></td>
                <td><select id="department" name="department">
                    <option value="">선택해주세요.</option>
                    <option value="사장실">사장실</option>
                    <option value="개발팀">개발팀</option>
                    <option value="콘텐츠팀">콘텐츠팀</option>
                    <option value="업무지원팀">업무지원팀</option>
                    <option value="디자인팀">디자인팀</option>
                    <option value="관리팀">관리팀</option>
                    <option value="기획전략팀">기획전략팀</option>
                </select></td>
            </tr>
            <tr>
                <td><label for="position">직위</label></td>
                <td><select id="position" name="position">
                    <option value="">선택해주세요.</option>
                    <option value="이사">이사</option>
                    <option value="차장">차장</option>
                    <option value="사장">사장</option>
                    <option value="부장">부장</option>
                    <option value="과장">과장</option>
                    <option value="대리">대리</option>
                    <option value="주임">주임</option>
                    <option value="사원">사원</option>
                    <option value="실장">실장</option>
                </select></td>
            </tr>
            <tr>
                <td><label for="foreignOrDomestic">내/외국인</label></td>
                <td><select id="foreignOrDomestic" name="foreignOrDomestic">
                    <option value="">선택해주세요.</option>
                    <option value="내국인">내국인</option>
                    <option value="외국인">외국인</option>
                </select></td>
            </tr>
            <tr>
                <td><label for="residentNumber1">주민등록번호</label></td>
                <td><input type="text" id="residentNumber1"
                           name="residentNumber1">-<input type="text"
                                                          id="residentNumber2" name="residentNumber2"></td>
            </tr>
            <tr>
                <td><label for="address">주소</label></td>
                <td><input type="text" id="address" name="address"></td>
            </tr>
            <tr>
                <td><label for="telPhone">전화번호</label></td>
                <td><input type="text" id="telPhone" name="telPhone"></td>
            </tr>
            <tr>
                <td><label for="mobile">휴대전화번호</label></td>
                <td><input type="text" id="mobile" name="mobile"></td>
            </tr>
            <tr>
                <td><label for="email">이메일</label></td>
                <td><input type="email" id="email" name="email"></td>
            </tr>
            <tr>
                <td><label for="sns">SNS</label></td>
                <td><input type="text" id="sns" name="sns"></td>
            </tr>
            <tr>
                <td><label for="otherDetails">기타 상세 정보</label></td>
                <td><input type="text" id="otherDetails" name="otherDetails"></td>
            </tr>
            <tr>
                <td><label for="status">상태</label></td>
                <td>
                    <select id="status" name="status">
                        <option value="재직">재직</option>
                        <option value="퇴직">퇴직</option>
                    </select>
                </td>
        </table>

        <h2>사원 정보1</h2>
        <!-- Dependents Table -->
        <table border="1">
            <h3>부양 가족</h3>
            <tr>
                <th>관계</th>
                <th>이름</th>
                <th>구분</th>
                <th>주민등록번호</th>
            </tr>
            <tr>
                <td><select id="relationship" name="relationship">
                    <option value="">선택해주세요.</option>
                    <option value="부">배우자</option>
                    <option value="모">아들</option>
                    <option value="배우자">딸</option>
                    <option value="자녀">부</option>
                    <option value="부">모</option>
                    <option value="모">형제</option>
                    <option value="배우자">자매</option>
                    <option value="자녀">장인</option>
                    <option value="부">장모</option>
                    <option value="모">시아버지</option>
                    <option value="배우자">시어머니</option>
                    <option value="자녀">조부</option>
                    <option value="자녀">조모</option>
                    <option value="자녀">손자</option>
                    <option value="자녀">손녀</option>
                </select></td>
                <td><input type="text" id="parentsName" name="parentsName"></td>
                <td><select id="foreignOrDomesticDependent"
                            name="foreignOrDomesticDependent">
                    <option value="">선택해주세요.</option>
                    <option value="국내">국내</option>
                    <option value="외국인">외국인</option>
                </select></td>
                <td><input type="text" id="parentsNumber1"
                           name="parentsNumber1">-<input type="text"
                                                         id="parentsNumber2" name="parentsNumber2"></td>
            </tr>
        </table>


        <!-- Degree Table -->
        <table border="1">
            <h3>학력</h3>
            <tr>
                <th>구분</th>
                <th>입학년월</th>
                <th>졸업년월</th>
                <th>학교명</th>
                <th>전공</th>
                <th>이수</th>
            </tr>
            <tr>
                <td><select id="graduate" name="graduate">
                    <option value="">선택</option>
                    <option value="초등학교">초등학교</option>
                    <option value="중학교">중학교</option>
                    <option value="고등학교">고등학교</option>
                    <option value="대학교">대학교</option>
                    <option value="석사">석사</option>
                    <option value="박사">박사</option>
                </select></td>
                <td><input type="date" id="admissionDate" name="admissionDate"></td>
                <td><input type="date" id="graduationDate"
                           name="graduationDate"></td>
                <td><input type="text" id="schoolName" name="schoolName"></td>
                <td><input type="text" id="major" name="major"></td>
                <td><select id="completion" name="completion">
                    <option value="">선택</option>
                    <option value="">졸업</option>
                    <option value="">수료</option>
                    <option value="">자퇴</option>
                    <option value="">재학중</option>
                </select></td>
            </tr>
        </table>


        <!-- Career Table -->
        <table border="1">
            <h3>경력</h3>
            <tr>
                <th>회사이름</th>
                <th>입사일</th>
                <th>퇴사일</th>
                <th>근무기간</th>
                <th>최종직위</th>
                <th>담당직무</th>
                <th>퇴직사유</th>
            </tr>
            <tr>
                <td><input type="text" id="companyName" name="companyName"></td>
                <td><input type="date" id="startDate" name="startDate"></td>
                <td><input type="date" id="endDate" name="endDate"></td>
                <td><input type="text" id="employmentPeriod"
                           name="employmentPeriod"></td>
                <td><input type="text" id="finalPosition" name="finalPosition"></td>
                <td><input type="text" id="responsibilities"
                           name="responsibilities"></td>
                <td><input type="text" id="reasonForLeaving"
                           name="reasonForLeaving"></td>
            </tr>
            </tbody>
        </table>


        <!-- MilitaryService Table -->
        <table border="1">
            <h3>병역</h3>
            <tr>
                <th>병역구분</th>
                <th>군별</th>
                <th>복무기간(부터)</th>
                <th>복무기간(까지)</th>
                <th>최종계급</th>
                <th>병과</th>
                <th>미필사유</th>
            </tr>
            <tr>
                <td><select id="serviceType" name="serviceType">
                    <option value="">선택</option>
                    <option value="군필">군필</option>
                    <option value="미필">미필</option>
                </select></td>
                <td><select id="branch" name="branch">
                    <option value="">선택</option>
                    <option value="육군">육군</option>
                    <option value="해군">해군</option>
                    <option value="공군">공군</option>
                    <option value="상비군">상비군</option>
                    <option value="면제">면제</option>
                    <option value="기타">기타</option>
                </select></td>
                <td><input type="date" id="servicePeriod1"
                           name="servicePeriod1"></td>
                <td><input type="date" id="servicePeriod2"
                           name="servicePeriod2"></td>
                <td><input type="text" id="finalRank" name="finalRank"></td>
                <td><input type="text" id="militaryClass" name="militaryClass"></td>
                <td><input type="text" id="exemptionReason"
                           name="exemptionReason"></td>
            </tr>
        </table>

        <!-- Submit Button -->
        <button type="submit">등록</button>
    </form>
</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
