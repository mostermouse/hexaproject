package org.spring.domain.employee.mapper;

import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.wage.model.WageEntity;

import java.util.List;

public interface EmpMapper {

	
    
    //연도 급여정보
    public List<WageEntity> getYearWage(Long year);
    
    //전직원 인원수
    public Long getTotalEmployeeCount();
    //정규직 인원수
    public Long getFulltimeEmployeeCount();
    //계약직 인원수
    public Long getContractEmployeeCount();
    //임시직 인원수
    public Long getTemporaryEmployeeCount();
    //일용직 인원수
    public Long getDailyWorkerCount();
    


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

}
