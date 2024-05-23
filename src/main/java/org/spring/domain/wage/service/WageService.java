package org.spring.domain.wage.service;

import java.util.List;

import org.spring.domain.wage.model.WageEntity;

public interface WageService {
	
	public List<WageEntity> getWageList();

	public List<WageEntity> getWageTypeList();

}
