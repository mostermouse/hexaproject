package org.spring.domain.wage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.wage.controller.model.WageRecordDetailsRequest;
import org.spring.domain.wage.model.WageEntity;

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
}
