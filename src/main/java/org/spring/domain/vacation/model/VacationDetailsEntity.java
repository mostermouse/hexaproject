package org.spring.domain.vacation.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationDetailsEntity {
   
	private String employmentType;// 고용_형태
    private Long employeeId;// 사원번호
    private String koreanName; // 성명
    private String departmentName;// 부서명
    private String positionName; // 직위명
    private String vacationTypeName; // 휴가종류
    private Double totalVacationDays; // 총 휴가일수
    private Double usedVacationDays; // 사용 휴가 일수
    private Double remainingVacationDays; // 잔여 휴가일수
}