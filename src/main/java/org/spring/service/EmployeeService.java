package org.spring.service;

import org.spring.domain.EmployeeEntity;

import java.util.List;

public interface EmployeeService {
    public List<EmployeeEntity> getAllEmployee();
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
