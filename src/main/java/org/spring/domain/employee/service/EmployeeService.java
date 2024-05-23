package org.spring.domain.employee.service;

import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.wage.model.WageRecordRequest;

import java.util.List;
import java.util.Map;

public interface EmployeeService {
	
    public List<EmployeeEntity> getAllEmployee();

    
    public Map<String, Long> getEmployeeCount();
    
    public List<WageRecordRequest> listWageRecord(Long year);

    

    long countByStatusEmployed();
    long countByEmploymentTypeRegular();
    long countByEmploymentTypeContract();
    long countByEmploymentTypeTemporary();
    long countByEmploymentTypeDispatched();
    long countByEmploymentTypeAppointed();
    long countByEmploymentTypeDaily();
    long countByStatusResigned();
    long countAllEmployees();
}
