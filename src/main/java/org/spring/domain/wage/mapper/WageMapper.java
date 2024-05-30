package org.spring.domain.wage.mapper;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.wage.controller.model.WageRecordDetailsRequest;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;

public interface WageMapper {

	List<WageEntity> getWageList();

	List<WageEntity> getWageTypeList();

//	String getNamebyId(Long employeeId);

	String getWageTypeNameById(Long wageTypeId);

	// 급여항목 이름 불러오는 것
	List<WageTypeEntity> getAllWageTypes();

	// 디파트먼트 아이디로 디파트먼트이름 불러오는것
	String getDepartmentNameById(@Param("departmentId") Long departmentId);

	// 정산기간에 맞게 구해오기
	List<WageEntity> searchWagesByCriteria(Map<String, Object> params);

	// employeeId로 급여 정보 가져오기
	List<Map<String, Object>> getWagesByEmployeeId(@Param("employeeId") Long employeeId);

	void updateWageValues(@Param("employeeId") Long employeeId, @Param("wagePeriod") String wagePeriod,
			@Param("settlementStartDate") LocalDate settlementStartDate,
			@Param("settlementEndDate") LocalDate settlementEndDate,
			@Param("wagePaymentDate") LocalDate wagePaymentDate, @Param("wageValues") Map<Integer, Integer> wageValues);

	////////////////////////////////////////////////////////
	public List<WageEntity> getYearWage(Long year);

	public List<WageRecordDetailsRequest> getYearMonthPeriodWage(@Param("yearMonth") Long yearMonth,
			@Param("wagePeriod") Long wagePeriod);

	public List<WageRecordDetailsRequest> getEmployeeWage(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("employeeId") Long employeeId);

	public List<WageRecordDetailsRequest> getYearMonthPeriod(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("employeeId") Long employeeId);

	public List<WageRecordDetailsRequest> getWageType(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("employeeId") Long employeeId);

	public List<WageRecordDetailsRequest> getWageValue(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("employeeId") Long employeeId);

	public List<WageRecordDetailsRequest> getWageTypeEmployeeInfo(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("wageTypeId") Long wageTypeId);

	public List<WageRecordDetailsRequest> getWageTypeYearMonthPeriod(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("wageTypeId") Long wageTypeId);

	public List<WageRecordDetailsRequest> getWageTypeValue(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate, @Param("wageTypeId") Long wageTypeId);

	public List<DepartmentEntity> getDepartment();

	public List<WageTypeEntity> getWageIdType();

	public List<WageRecordDetailsRequest> getEmployee();

}
