package org.spring.domain.attendance.mapper;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.EmployeeEntity;

public interface AttMapper {
	// 근태 상세조회 리스트
    List<AttendanceEntityRequest> getEmployeeAttendance();
    
    // 근태 리스트
    List<AttendanceEntity> getEmployeeAttendanceList();

    // 현장/프로젝트 리스트
	List<FeildOrProjectIdEntity> selectFeildOrProject();
	
	// 상태(재직, 퇴직) 리스트
	List<EmployeeEntity> getDayWorkertatus();

	// 일용직 리스트
	List<EmployeeEntity> getDayWorkerList(DepartmentEntity departmentEntity);
	
	// 일용직 근태 관리 리스트
	List<AttendanceEntity> getDayWorkerAttendance(Long employeeId);
	
	// 일용직 근무기록 저장
	void saveDayWorker(AttendanceEntity dayWorkerEntity);
	

	
}