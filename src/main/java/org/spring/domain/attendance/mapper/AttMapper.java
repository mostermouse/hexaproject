package org.spring.domain.attendance.mapper;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.EmployeeEntity;

import java.util.Map;

public interface AttMapper {
	// 근태 상세조회 리스트
    List<AttendanceEntity> getEmployeeAttendance(
        
    );
    // 근태 리스트
    List<AttendanceEntityRequest> getEmployeeAttendanceList();
	

    // 일용직 리스트
	/* List<EmployeeEntity> getDayWorkerList(String srchKwrd, String status); */

	List<FeildOrProjectIdEntity> selectFeildOrProject();
	
	/* List<EmployeeEntity> getEmployeeStatus(String status); */

	List<EmployeeEntity> getDayWorkertatus();

	List<EmployeeEntity> getDayWorkerList(Map<String, Object> params);
	
	// 일용직 근무 기록 insert
	void insertDayWorkerRegistry(AttendanceEntity entity);

}