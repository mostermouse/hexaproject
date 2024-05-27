package org.spring.domain.employee.service;

import java.util.List;

import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
import org.spring.domain.employee.controller.model.WageRecordRequest;
import org.spring.domain.employee.model.*;


public interface EmployeeService {
	
    public List<EmployeeEntity> getAllEmployee();
    
    public List<WageRecordRequest> listWageRecord(Long year);
    List<DepartmentEntity> getDepartment();
    List<PositionEntity> getPosition();

    
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
    void registerEmployee(EmployeeRegistrationForm registrationForm);
    void registerCompanyAndDetails(CompanyEntity company, ContactEntity contact, EmployeeSalaryAccountEntity salaryAccount);


}
