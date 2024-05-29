package org.spring.domain.wage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.wage.controller.model.WageRecordDetailsRequest;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;

public interface WageMapper {

	List<WageEntity> getWageList();

	List<WageEntity> getWageTypeList();

//	String getNamebyId(Long employeeId);

	String getDepartmentNameById(Long departmentId);

	String getWageTypeNameById(Long wageTypeId);

	public List<WageEntity> getYearWage(Long year);

	public List<WageRecordDetailsRequest> getYearMonthPeriodWage(
			@Param("yearMonth") Long yearMonth,
			@Param("wagePeriod") Long wagePeriod);
	
	public List<WageRecordDetailsRequest> getEmployeeWage(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("employeeId") Long employeeId
			);
	
	public List<WageRecordDetailsRequest> getYearMonthPeriod(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("employeeId") Long employeeId
			);
	
	public List<WageRecordDetailsRequest> getWageType(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("employeeId") Long employeeId
			);
	
	public List<WageRecordDetailsRequest> getWageValue(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("employeeId") Long employeeId
			);
	
	public List<WageRecordDetailsRequest> getWageTypeEmployeeInfo(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("wageTypeId") Long wageTypeId
			);
	
	public List<WageRecordDetailsRequest> getWageTypeYearMonthPeriod(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("wageTypeId") Long wageTypeId
			);
	
	public List<WageRecordDetailsRequest> getWageTypeValue(
			@Param("settlementPeriodStartDate") Long settlementPeriodStartDate,
			@Param("settlementPeriodEndDate") Long settlementPeriodEndDate,
			@Param("wageTypeId") Long wageTypeId
			);
	
	public List<DepartmentEntity> getDepartment();
	
	public List<WageTypeEntity> getWageIdType();
	
}
