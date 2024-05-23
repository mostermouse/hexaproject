package org.spring.domain.attendance.mapper;

import org.spring.domain.attendance.model.AttendanceEntity;

import java.util.List;

public interface AttMapper {

    List<AttendanceEntity> getEmployeeAttendance();

}