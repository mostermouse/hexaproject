package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.mapper.AttendanceTypeMapper;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendanceTypeServiceImpl implements AttendanceTypeService {

	@Autowired
	private AttendanceTypeMapper attendanceTypeMapper;

	@Override
	public List<AttendanceTypeEntity> getAllAttendanceTypes() {
		return attendanceTypeMapper.getAllAttendanceTypes();
	}

	@Override
	public void addAttendanceType(AttendanceTypeEntity attendanceType) {
		attendanceTypeMapper.insertAttendanceType(attendanceType);
	}

	@Override
	public void updateAttendanceType(AttendanceTypeEntity attendanceType) {
		attendanceTypeMapper.updateAttendanceType(attendanceType);
	}

	@Override
	public void deleteAttendanceType(Long attendanceTypeId) {
		attendanceTypeMapper.deleteAttendanceType(attendanceTypeId);
	}
}
