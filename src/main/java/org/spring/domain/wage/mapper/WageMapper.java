package org.spring.domain.wage.mapper;

import java.util.List;

import org.spring.domain.wage.model.WageEntity;


public interface WageMapper {

	public List<WageEntity> getWageList();

	public List<WageEntity> getWageTypeList();
	
    //연도별 급여정보
    public List<WageEntity> getYearWage(Long year);
    
}
