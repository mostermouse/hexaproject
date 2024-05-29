package org.spring.domain.attendance.mapper;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.spring.domain.employee.model.DepartmentEntity;

public interface AttendanceMapper {

	List<DepartmentEntity> getAllAttendance();
	List<AttendanceEntity> getAttendanceById();
	List<AttendanceTypeEntity> getAllAttendanceType();
	void createAttendance(AttendanceEntity attendance);
	void updateAttendance(Long id);
	void deleteAttendance(Long attendanceId);
	
}
