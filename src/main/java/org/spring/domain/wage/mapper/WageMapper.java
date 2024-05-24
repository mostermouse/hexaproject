package org.spring.domain.wage.mapper;

import java.util.List;

import org.spring.domain.wage.model.WageEntity;


public interface WageMapper {

	List<WageEntity> getWageList();

	List<WageEntity> getWageTypeList();

//	String getNamebyId(Long employeeId);
	
	String getDepartmentNameById(Long departmentId);

	String getWageTypeNameById(Long wageTypeId);
}
