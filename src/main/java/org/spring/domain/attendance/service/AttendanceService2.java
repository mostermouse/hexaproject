package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;

public interface AttendanceService2 {

	public List<AttendanceEntity> getAllAttendance();
	/* public AttendanceEntity getAttendanceById(Long AttendanceById); */
	
	public List<AttendanceTypeEntity> getAllAttendanceType();
	public void createAttendance(AttendanceEntity attendance);
	/*
	 * public void updateAttendance(Long ID); public void deleteAttendance(Long
	 * AttendanceById);
	 */
}
