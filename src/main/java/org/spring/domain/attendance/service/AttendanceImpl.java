package org.spring.domain.attendance.service;

import java.time.LocalDate;
import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.mapper.AttMapper;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.employee.model.DepartmentEntity;
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
    public List<AttendanceEntityRequest> getEmployeeAttendance() {
        log.info("getEmployeeAttendance..........");
        
        
        return mapper.getEmployeeAttendance();
    }

   
    @Override
    public List<EmployeeEntity> getDayWorkerList(DepartmentEntity departmentEntity) {
        return mapper.getDayWorkerList(departmentEntity);
    }

	@Override
	 public List<FeildOrProjectIdEntity> getFeildOrProject() {
        System.out.println("Fetching attendance groups: " + mapper.selectFeildOrProject());
        
        return mapper.selectFeildOrProject();
    }

	/*
	@Override 
    public List<EmployeeEntity> getDayWorkerStatusList(String status) {
		  // TODO Auto-generated method stub 
		  return mapper.getEmployeeStatus(status); 
	}
	*/
	
	@Override
	public List<EmployeeEntity> getStatusList() {
		// TODO Auto-generated method stub
		return mapper.getDayWorkertatus();
	}
    

	@Override
	public void saveDayWorker(Long employeeId, LocalDate inputDate, Long fieldOrProjectId, Long amount) {
		        	AttendanceEntity dayWorkerEntity = new AttendanceEntity();
		        	dayWorkerEntity.setEmployeeId(employeeId);
		        	dayWorkerEntity.setInputDate(inputDate);
		        	dayWorkerEntity.setFeildOrProjectId(fieldOrProjectId);
		        	dayWorkerEntity.setAmount(amount);
		            mapper.saveDayWorker(dayWorkerEntity);
	}



}
