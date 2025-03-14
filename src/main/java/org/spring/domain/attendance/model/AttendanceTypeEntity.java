package org.spring.domain.attendance.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttendanceTypeEntity extends AttendanceGroupEntity {

	private Long attendanceTypeId;
	private String attendanceTypeName;
	private String unit;
	private Long attendaceGroupId;
	private Long vacationTypeId;
	private Boolean usage;
	private Long attendanceGroupId;
}