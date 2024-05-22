package org.spring.service;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageRecordRequest {
	
	private String yearMonth;
	private String wagePeriod;
	private LocalDate settlementPeriodStartDate;
	private LocalDate settlementPeriodEndDate;
	private LocalDate wagePaymentDate;
	private Long paidEmployeeCount;
	private Long totalPaidWage;

}
