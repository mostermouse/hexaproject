package org.spring.domain.Attendance.mapper;

import org.spring.domain.Attendance.model.AttendanceEntity;

import java.util.List;

public interface AttMapper {

    List<AttendanceEntity> getEmployeeAttendance();

}