package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.spring.domain.employee.model.DepartmentEntity;

public interface AttendanceService2 {

	List<DepartmentEntity> getAllAttendance();
	List<AttendanceTypeEntity> getAllAttendanceType();
	void createAttendance(AttendanceEntity attendance);
	List<AttendanceEntity> getAttendanceById();
}
