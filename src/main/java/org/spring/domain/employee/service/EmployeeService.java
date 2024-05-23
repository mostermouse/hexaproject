package org.spring.domain.employee.service;

import java.util.List;
import java.util.Map;

import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.wage.model.WageRecordRequest;


public interface EmployeeService {
	
    public List<EmployeeEntity> getAllEmployee();

    public Map<String, Long> getEmployeeCount();
    
    public List<WageRecordRequest> listWageRecord(Long year);

    
    // 사원현황판
    long countByStatusEmployed();
    long countByEmploymentTypeRegular();
    long countByEmploymentTypeContract();
    long countByEmploymentTypeTemporary();
    long countByEmploymentTypeDispatched();
    long countByEmploymentTypeAppointed();
    long countByEmploymentTypeDaily();
    long countByStatusResigned();
    long countAllEmployees();
    
    // 사원등록 1페이지
    public void registerEmployee(EmployeeEntity employeeEntity, 
    		DependentsEntity dependentsEntity, 
    		DegreeEntity degreeEntity, 
    		CareerEntity careerEntity, 
    		MilitaryServiceEntity militaryServiceEntity);
}
