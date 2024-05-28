package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;

public interface AttendanceTypeService {
    List<AttendanceTypeEntity> getAllAttendanceTypes();
    AttendanceTypeEntity getAttendanceTypeById(Long id);
    void createAttendanceType(AttendanceTypeEntity attendanceTypeEntity);
    void updateAttendanceType(AttendanceTypeEntity attendanceTypeEntity);
    void deleteAttendanceType(Long id);
    List<AttendanceGroupEntity> getAllAttendanceGroups();
}
