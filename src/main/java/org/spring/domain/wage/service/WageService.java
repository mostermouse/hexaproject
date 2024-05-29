package org.spring.domain.wage.service;

import java.util.List;

import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.wage.controller.model.WageRecordRequest;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;

public interface WageService {

	public List<WageEntity> getWageList();

	public List<WageEntity> getWageTypeList();

//	public String getNamebyId(Long employeeId);

	public String getDepartmentNameById(Long departmentId);

	public String getWageTypeNameById(Long wageTypeId);

	// 급여대장목록 분류 및 반환
	public List<String> listWageRecordInfo (Long yearMonth, Long wagePeriod);
	
	public List<WageRecordRequest> listWageRecord(Long year);

	public List<List<String>> listWageRecordYMP(Long yearMonth, Long wagePeriod);

	public List<List<String>> listWageRecordEMP(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long employeeId);

	public List<List<String>> listWageRecordWT(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long wageTypeId);
	
	public List<DepartmentEntity> getDepartmentList ();
	
	public List<WageTypeEntity> getWageIdTypeList();
}
