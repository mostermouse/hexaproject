package org.spring.domain.wage.controller.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageRecordDetailsRequest {
	
	private Long employeeId;
    private String employmentType;
    private String koreanName;
    private LocalDate hireDate;
    private Long departmentId;
    private String departmentName;
    private Long positionId;
	private String positionName;
	private Long wageId;
	private String wagePeriod;
	private Long wageTypeId;
	private String wageTypeName;
	private Long wageValue;
	private LocalDate settlementPeriodStartDate;
	private LocalDate settlementPeriodEndDate;
	private LocalDate wagePaymentDate;

}
