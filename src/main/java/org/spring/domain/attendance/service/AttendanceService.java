package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.EmployeeEntity;


public interface AttendanceService {
    public List<AttendanceEntityRequest> getEmployeeAttendance();
    public List<EmployeeEntity> getDayWorkerList(DepartmentEntity entity);

	/*
	 * public List<EmployeeEntity> getDayWorkerList(String srchKwrd, String status);
	 */
	public List<FeildOrProjectIdEntity> getFeildOrProject();
	public List<EmployeeEntity> getStatusList();
	/* public List<EmployeeEntity> getDayWorkerStatusList(String status); */
	

}
