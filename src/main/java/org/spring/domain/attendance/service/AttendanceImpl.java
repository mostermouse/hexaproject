package org.spring.domain.attendance.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.mapper.AttMapper;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AttendanceImpl implements AttendanceService {

    @Autowired
    private AttMapper mapper;

    @Override
    public List<AttendanceEntity> getEmployeeAttendance() {
        log.info("getEmployeeAttendance..........");
        
        return mapper.getEmployeeAttendance();
    }

    @Override
	public List<EmployeeEntity> getDayWorkerList(Map<String, Object> params) {
		 
		 return mapper.getDayWorkerList(params);
	}

	@Override
	 public List<FeildOrProjectIdEntity> getFeildOrProject() {
        System.out.println("Fetching attendance groups: " + mapper.selectFeildOrProject());
        
        return mapper.selectFeildOrProject();
    }

	
	@Override
	public List<EmployeeEntity> getStatusList() {
		// TODO Auto-generated method stub
		return mapper.getDayWorkertatus();
	}

	@Override
	public void insertDayWorkerRegistry(AttendanceEntity entity) {
		// TODO Auto-generated method stub
		mapper.insertDayWorkerRegistry(entity);
		
	}	


}
