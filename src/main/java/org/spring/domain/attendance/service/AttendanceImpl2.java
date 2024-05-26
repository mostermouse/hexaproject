package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.mapper.AttMapper;
import org.spring.domain.attendance.mapper.AttendanceMapper;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;
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
	public List<AttendanceEntity> getAllAttendance() {
		
		return mapper.getAllAttendance();
	}

	/*
	 * @Override public AttendanceEntity getAttendanceById(Long AttendanceById) {
	 * 
	 * return mapper.getAttendanceById(AttendanceById); }
	 */

	@Override
	public void createAttendance(AttendanceEntity attendance) {
		mapper.createAttendance(attendance);
		
	}

	/*
	 * @Override public void updateAttendance(Long ID) {
	 * mapper.updateAttendance(ID);
	 * 
	 * }
	 * 
	 * @Override public void deleteAttendance(Long AttendanceById) {
	 * mapper.deleteAttendance(AttendanceById);
	 * 
	 * }
	 */

	@Override
	public List<AttendanceTypeEntity> getAllAttendanceType() {
		// TODO Auto-generated method stub
		return mapper.getAllAttendanceType();
	}

	
}
