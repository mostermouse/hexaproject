package org.spring.domain.attendance.mapper;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.EmployeeEntity;

public interface AttMapper {
	// 근태 상세조회 리스트
    List<AttendanceEntityRequest> getEmployeeAttendance(
        
    );
    // 근태 리스트
    List<AttendanceEntity> getEmployeeAttendanceList();
	

    // 일용직 리스트
	/* List<EmployeeEntity> getDayWorkerList(String srchKwrd, String status); */

	List<FeildOrProjectIdEntity> selectFeildOrProject();
	
	/* List<EmployeeEntity> getEmployeeStatus(String status); */
	List<EmployeeEntity> getDayWorkertatus();

	List<EmployeeEntity> getDayWorkerList(DepartmentEntity departmentEntity);

	
}