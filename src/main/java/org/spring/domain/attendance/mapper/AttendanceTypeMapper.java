package org.spring.domain.attendance.mapper;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceTypeEntity;

public interface AttendanceTypeMapper {
	List<AttendanceTypeEntity> getAllAttendanceTypes();

	void insertAttendanceType(AttendanceTypeEntity attendanceType);

	void updateAttendanceType(AttendanceTypeEntity attendanceType);

	void deleteAttendanceType(Long attendanceTypeId);
}
