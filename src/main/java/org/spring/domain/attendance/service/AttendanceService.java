package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.employee.model.EmployeeEntity;


public interface AttendanceService {
	public List<AttendanceEntity> getEmployeeAttendanceList();
    public List<AttendanceEntityRequest> getEmployeeAttendance();
    public List<EmployeeEntity> getDayWorkerList(String srchKwrd);
	public List<AttendanceGroupEntity> getAttendanceGroup();

}
