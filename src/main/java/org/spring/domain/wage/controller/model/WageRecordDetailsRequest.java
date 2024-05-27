package org.spring.domain.wage.controller.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageRecordDetailsRequest {
	
	private Long employeeId;
    private String employmentType;
    private String koreanName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
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
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodStartDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodEndDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate wagePaymentDate;

}
