package org.spring.mapper;

import org.spring.domain.AttendanceEntity;

import java.util.List;

public interface AttMapper {

    List<AttendanceEntity> getEmployeeAttendance();

}