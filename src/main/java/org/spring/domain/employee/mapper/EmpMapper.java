package org.spring.domain.employee.mapper;

import java.util.List;

import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.wage.model.WageEntity;

public interface EmpMapper {

    // 사원현황판
    List<EmployeeEntity> getAllEmployee();
    long countByStatusEmployed();
    long countByEmploymentTypeRegular();
    long countByEmploymentTypeContract();
    long countByEmploymentTypeTemporary();
    long countByEmploymentTypeDispatched();
    long countByEmploymentTypeAppointed();
    long countByEmploymentTypeDaily();
    long countByStatusResigned();
    long countAllEmployees();
    
    //연도 급여정보
    public List<WageEntity> getYearWage(Long year);
    
    // 사원등록 1페이지
    void registerEmployee(EmployeeRegistrationForm registrationForm);
    void insertEmployee(EmployeeEntity employeeEntity);

    void insertDependent(DependentsEntity dependentsEntity);

    void insertDegree(DegreeEntity degreeEntity);

    void insertCareer(CareerEntity careerEntity);

    void insertMilitaryService(MilitaryServiceEntity militaryServiceEntity);

}
