package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VacationDaysEntity extends VacationTypeEntity {
	//휴가일수는 개인에 따른 정보라서, EmployeeEntity 상속으로
	private Long vacationDaysId;
	private Long vacationTypeId;
	private Long vacationValue;

}
