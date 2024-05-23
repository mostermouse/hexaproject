package org.spring.domain.Employee.model;

import org.spring.domain.vacation.model.VacationDaysEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PositionEntity {
	private Long positionId;
	private String positionName;
}
