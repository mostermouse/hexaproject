package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceTypeEntity;

public interface AttendanceTypeService {
	List<AttendanceTypeEntity> getAllAttendanceTypes();

	void addAttendanceType(AttendanceTypeEntity attendanceType);

	void updateAttendanceType(AttendanceTypeEntity attendanceType);

	void deleteAttendanceType(Long attendanceTypeId);
}