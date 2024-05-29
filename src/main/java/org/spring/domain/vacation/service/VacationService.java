package org.spring.domain.vacation.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.PositionEntity;
import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;


public interface VacationService {
	 List<VacationDetailsEntity> getFilteredVacationDetails(String status, String employmentType, Long departmentId, Long positionId, String vacationTypeName, String searchKeyword, int offset, int limit);
	    int countFilteredVacationDetails(String status, String employmentType, Long departmentId, Long positionId, String vacationTypeName, String searchKeyword);
	    List<VacationDetailsEntity> getVacationUsageByEmployeeId(Long employeeId);
	    List<VacationTypeEntity> getAllVacationTypes();
	    List<String> getAllStatuses();
	    List<String> getAllEmploymentTypes();
	    List<DepartmentEntity> getAllDepartments();
	    List<PositionEntity> getAllPositions();
	}