package org.spring.domain.wage.controller.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageRecordRequest {
	
	private String yearMonth;
	private String wagePeriod;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodStartDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodEndDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate wagePaymentDate;
	private Long paidEmployeeCount;
	private Long totalPaidWage;

}
