package org.spring.domain.vacation.service;

import java.util.List;

import org.spring.domain.wage.model.WageTypeEntity;

public interface PayItemSetService {
	
    public List<WageTypeEntity> getAllWageTypes();
    
    public WageTypeEntity getWageTypeById(Long wageTypeId);
    
    public void createWageType(WageTypeEntity wageType);
    
    public void updateWageType(WageTypeEntity wageType);
    
    public void deleteWageType(Long wageTypeId);

}
