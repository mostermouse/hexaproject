package org.spring.domain.employee.mapper;

import java.util.List;

import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
import org.spring.domain.employee.model.*;
import org.spring.domain.wage.model.WageEntity;

public interface EmpMapper {

    // 사원현황판
    List<EmployeeEntity> getAllEmployee();
    List<DepartmentEntity> getDepartment();
    List<PositionEntity> getPosition();
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
    void insertEmployee(EmployeeEntity employeeEntity);

    void insertDependent(DependentsEntity dependentsEntity);

    void insertDegree(DegreeEntity degreeEntity);

    void insertCareer(CareerEntity careerEntity);

    void insertMilitaryService(MilitaryServiceEntity militaryServiceEntity);

    //회사정보 등록 페이지
    void insertCompany(CompanyEntity companyEntity);
    void insertContact(ContactEntity contactEntity);
    void insertSalaryAccount(EmployeeSalaryAccountEntity employeeSalaryAccountEntity);

    Long getNextSeqVal();
    Long getCompanySeqCurrVal();
    Long getEmpSeqVal();
    Long getEmpSeqCurrval();
    CompanyEntity getCompany();

    Long getCompanyId();
    Long getContactId();
    Long getAcountId();

    Long getDependentSeq();
    Long getDegreeSeq();
    Long getCareerSeq();
    Long getMilitarySeq();


}
