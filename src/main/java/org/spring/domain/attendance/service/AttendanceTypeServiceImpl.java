package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.mapper.AttendanceTypeMapper;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.springframework.stereotype.Service;

@Service
public class AttendanceTypeServiceImpl implements AttendanceTypeService {

    private final AttendanceTypeMapper attendanceTypeMapper;

    public AttendanceTypeServiceImpl(AttendanceTypeMapper attendanceTypeMapper) {
        this.attendanceTypeMapper = attendanceTypeMapper;
    }

    @Override
    public List<AttendanceTypeEntity> getAllAttendanceTypes() {
        return attendanceTypeMapper.findAll();
    }

    @Override
    public AttendanceTypeEntity getAttendanceTypeById(Long id) {
        return attendanceTypeMapper.findById(id);
    }

    @Override
    public void createAttendanceType(AttendanceTypeEntity attendanceTypeEntity) {
        attendanceTypeMapper.insert(attendanceTypeEntity);
    }

    @Override
    public void updateAttendanceType(AttendanceTypeEntity attendanceTypeEntity) {
        attendanceTypeMapper.update(attendanceTypeEntity);
    }

    @Override
    public void deleteAttendanceType(Long id) {
        attendanceTypeMapper.delete(id);
    }

    @Override
    public List<AttendanceGroupEntity> getAllAttendanceGroups() {
        return attendanceTypeMapper.findAllGroups();
    }
}
