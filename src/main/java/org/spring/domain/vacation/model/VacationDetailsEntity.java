package org.spring.domain.vacation.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationDetailsEntity {
	private String employmentType; // 고용_형태
    private Long employeeId; // 사원번호
    private String koreanName; // 성명
    private String departmentName; // 부서명
    private String positionName; // 직위명
    private String vacationTypeName; // 휴가종류
    private Double totalVacationDays; // 총 휴가일수
    private Double usedVacationDays; // 사용 휴가 일수
    private Double remainingVacationDays; // 잔여 휴가일수
    private LocalDate applyPeriod1; // 적용 기간 시작
    private LocalDate applyPeriod2; // 적용 기간 끝
    private Long attendanceId;
    private String inputDate;
    private String attendanceTypeName;
    private String startDate;
    private String endDate;
    private Double attendanceDays;
}