package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DepartmentEntity extends PositionEntity{
	private Long departmentId;
	private String departmentName;
}
