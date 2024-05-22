package org.spring.service;

import org.spring.domain.EmployeeEntity;

import java.util.List;
import java.util.Map;

public interface EmployeeService {
	
    public List<EmployeeEntity> getAllEmployee();
    
    public Map<String, Long> getEmployeeCount();
    
    public List<WageRecordRequest> listWageRecord(Long year);

    
}
