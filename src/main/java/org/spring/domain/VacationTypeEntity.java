package org.spring.domain;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationTypeEntity extends EmployeeEntity{
	
	private Long vacationTypeId;
	private String vacationTypeName;
	private LocalDate applyPeriod1;
	private LocalDate applyPeriod2;
	private Character usage;

}
