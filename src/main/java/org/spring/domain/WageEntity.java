package org.spring.domain;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageEntity extends EmployeeEntity {

	private Long wageId;
	private String wagePeriod;
	private Long wageTypeId;
	private Long wageValue;
	private LocalDate settlementPeriodStartDate;
	private LocalDate settlementPeriodEndDate;
	private LocalDate wagePaymentDate;
}
