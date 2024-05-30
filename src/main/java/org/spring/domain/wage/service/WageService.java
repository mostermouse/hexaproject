package org.spring.domain.wage.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.wage.controller.model.WageRecordDetailsRequest;
import org.spring.domain.wage.controller.model.WageRecordRequest;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;

public interface WageService {

	public List<WageEntity> getWageList();

	public List<WageEntity> getWageTypeList();

	public String getDepartmentNameById(Long departmentId);

	public String getWageTypeNameById(Long wageTypeId);

	// 급여항목 불러온느것
	List<WageTypeEntity> getAllWageTypes();

	// 정산기간에 맞는 데이터 불러오기
	List<WageEntity> searchWagesByCriteria(Map<String, Object> params);

	// employeeId로 급여 정보 가져오기
	List<Map<String, Object>> getWagesByEmployeeId(Long employeeId);

	// 급여값 업데이트
	void updateWageValues(Long employeeId, String wagePeriod, LocalDate settlementStartDate,
			LocalDate settlementEndDate, LocalDate wagePaymentDate, Map<Integer, Integer> wageValues);
	///////////////////////////////////////////////////////////////////

	// 급여대장목록 분류 및 반환
	public List<String> listWageRecordInfo(Long yearMonth, Long wagePeriod);

	public List<WageRecordRequest> listWageRecord(Long year);

	public List<List<String>> listWageRecordYMP(Long yearMonth, Long wagePeriod);

	public List<List<String>> listWageRecordEMP(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long employeeId);

	public List<List<String>> listWageRecordWT(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long wageTypeId);

	public List<DepartmentEntity> getDepartmentList();

	public List<WageTypeEntity> getWageIdTypeList();

	public List<WageRecordDetailsRequest> getEmployeeList();
}
