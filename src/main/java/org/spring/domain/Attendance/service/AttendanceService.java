package org.spring.domain.Attendance.service;

import java.util.List;

import org.spring.domain.Attendance.model.AttendanceEntity;


public interface AttendanceService {
    public List<AttendanceEntity> getEmployeeAttendance();
}
