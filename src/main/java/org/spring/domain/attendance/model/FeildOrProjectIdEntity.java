package org.spring.domain.attendance.model;

import org.spring.domain.employee.model.DepartmentEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FeildOrProjectIdEntity extends DepartmentEntity {

	private Long feildOrProjectId;
	private String name;
}
