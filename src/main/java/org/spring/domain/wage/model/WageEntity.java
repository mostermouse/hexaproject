package org.spring.domain.wage.model;

import java.time.LocalDate;


import org.spring.domain.employee.model.EmployeeEntity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WageEntity extends EmployeeEntity {

	private Long wageId;
	private String wagePeriod;
	private Long wageTypeId;
	private Long wageValue;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodStartDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate settlementPeriodEndDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate wagePaymentDate;
}
