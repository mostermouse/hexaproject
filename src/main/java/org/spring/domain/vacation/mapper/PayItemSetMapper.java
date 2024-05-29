package org.spring.domain.vacation.mapper;

import java.util.List;

import org.spring.domain.wage.model.WageTypeEntity;

public interface PayItemSetMapper {
	
	public List<WageTypeEntity> getAllWageType();
	
	public WageTypeEntity getWageTypeId(Long wageTypeId);
	
    public void createWageType(WageTypeEntity wageType);
    
    public void updateWageType(WageTypeEntity wageType);
    
    public void deleteWageType(Long wageTypeId);
	

}
