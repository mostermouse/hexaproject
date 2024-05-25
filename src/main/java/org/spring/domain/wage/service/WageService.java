package org.spring.domain.wage.service;

import java.util.List;

import org.spring.domain.wage.controller.model.WageRecordRequest;
import org.spring.domain.wage.model.WageEntity;

public interface WageService {
	
	public List<WageEntity> getWageList();

	public List<WageEntity> getWageTypeList();
	
//	public String getNamebyId(Long employeeId);

	public String getDepartmentNameById(Long departmentId);
	
	public String getWageTypeNameById(Long wageTypeId);
	
	//급여대장목록 분류 및 반환
	public List<WageRecordRequest> listWageRecord(Long year);
}
