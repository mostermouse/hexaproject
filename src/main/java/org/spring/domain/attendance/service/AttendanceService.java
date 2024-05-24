package org.spring.domain.attendance.service;

import java.util.List;
import java.util.Map;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.EmployeeEntity;


public interface AttendanceService {
    public List<AttendanceEntity> getEmployeeAttendance();
    public List<EmployeeEntity> getDayWorkerList(Map<String, Object> params);

	/*
	 * public List<EmployeeEntity> getDayWorkerList(String srchKwrd, String status);
	 */
	public List<FeildOrProjectIdEntity> getFeildOrProject();
	public List<EmployeeEntity> getStatusList();
	/* public List<EmployeeEntity> getDayWorkerStatusList(String status); */
	

}
