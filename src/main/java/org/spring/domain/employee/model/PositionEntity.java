package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.attendance.model.AttendanceEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PositionEntity extends AttendanceEntity {
	private Long positionId;
	private String positionName;
}
