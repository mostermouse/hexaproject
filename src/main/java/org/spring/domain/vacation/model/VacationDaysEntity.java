package org.spring.domain.vacation.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationDaysEntity extends VacationTypeEntity {
	private Long vacationDaysId;
    private Long vacationTypeId;
    private Long employeeId;
    private Double vacationValue;
}
