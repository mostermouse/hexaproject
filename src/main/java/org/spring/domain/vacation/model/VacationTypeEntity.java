package org.spring.domain.vacation.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationTypeEntity extends EmployeeEntity {
	
	private Long vacationTypeId;
	private String vacationTypeName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")	
	private LocalDate applyPeriod1;
	@DateTimeFormat(pattern = "yyyy-MM-dd")	
	private LocalDate applyPeriod2;
	private Character usage;

}
