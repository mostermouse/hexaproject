package org.spring.domain.wage.model;

import java.time.LocalDate;

<<<<<<< Updated upstream
=======
import org.spring.domain.employee.model.EmployeeEntity;

>>>>>>> Stashed changes
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;

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
