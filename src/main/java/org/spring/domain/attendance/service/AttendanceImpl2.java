package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.mapper.AttendanceMapper;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.spring.domain.employee.model.DepartmentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AttendanceImpl2 implements AttendanceService2{
	
	@Autowired
    private AttendanceMapper mapper;
	
	
	@Override
	public List<DepartmentEntity> getAllAttendance() {
		List<DepartmentEntity> attendanceList = mapper.getAllAttendance();
		log.info("Attendance List: " + attendanceList);
		return attendanceList;
	}

	@Override
	public List<AttendanceTypeEntity> getAllAttendanceType() {
		return mapper.getAllAttendanceType();
	}

	@Override
	public void createAttendance(AttendanceEntity attendance) {
		mapper.createAttendance(attendance);
	}

	@Override
	public List<AttendanceEntity> getAttendanceById() {
		 return mapper.getAttendanceById();
	}
	
}
