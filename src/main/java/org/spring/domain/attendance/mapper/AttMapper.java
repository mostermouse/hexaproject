package org.spring.domain.attendance.mapper;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.employee.model.EmployeeEntity;

import java.util.List;

public interface AttMapper {

    List<AttendanceEntity> getEmployeeAttendance();

    // 일용직 리스트
    List<EmployeeEntity> getDayWorkerList(String srchKwrd);

	List<AttendanceGroupEntity> selectAttendanceGroup();

}