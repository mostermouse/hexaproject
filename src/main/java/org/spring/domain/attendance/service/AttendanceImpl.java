package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.mapper.AttMapper;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AttendanceImpl implements AttendanceService {

    @Setter(onMethod_ = @Autowired)
    private AttMapper mapper;
    

    @Override
    public List<AttendanceEntity> getEmployeeAttendance() {
        log.info("getEmployeeAttendance..........");
        return mapper.getEmployeeAttendance();
    }
    
    @Override
	public List<EmployeeEntity> getDayWorkerList(String srchKwrd) {
		 log.info("getDayWorkerList: srchKwrd=" + srchKwrd);
		 
		// List<EmployeeEntity> vo = mapper.getDayWorkerList(keyword);
		 
		 return mapper.getDayWorkerList(srchKwrd);
	}

	@Override
	 public List<AttendanceGroupEntity> getAttendanceGroup() {
        System.out.println("Fetching attendance groups: " + mapper.selectAttendanceGroup());
        
        return mapper.selectAttendanceGroup();
    }	


}
