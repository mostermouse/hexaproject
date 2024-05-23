package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;


public interface AttendanceService {
    public List<AttendanceEntity> getEmployeeAttendance();
}
