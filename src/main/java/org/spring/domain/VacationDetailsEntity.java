package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationDetailsEntity {
    private String vacationTypeName; // 휴가_종류
    private String employmentType;   // 고용_형태
    private Long employeeId;         // 사원번호
    private String departmentName;   // 부서명
    private String koreanName;       // 성명
    private String positionName;     // 직위명
    private Long vacationValue;      // 휴가_일수
}