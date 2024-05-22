package org.spring.service;

import java.util.List;

import org.spring.domain.AttendanceEntity;


public interface AttendanceService {
    public List<AttendanceEntity> getEmployeeAttendance();
}
