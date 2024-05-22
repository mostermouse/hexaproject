package org.spring.mapper;

import org.spring.domain.EmployeeEntity;
import org.spring.domain.WageEntity;

import java.util.List;

public interface EmpMapper {
	//전직원 정보
    public List<EmployeeEntity> getAllEmployee();
    
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
    
}
