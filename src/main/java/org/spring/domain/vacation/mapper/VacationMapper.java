package org.spring.domain.vacation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.PositionEntity;
import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;


public interface VacationMapper {
	 List<VacationDetailsEntity> getAllVacationDetails();
	    List<VacationDaysEntity> getAllVacationDays();
	    List<VacationTypeEntity> getAllVacationTypes();
	    List<DepartmentEntity> getAllDepartments();
	    List<PositionEntity> getAllPositions();
	    List<String> getAllStatuses();
	    List<String> getAllEmploymentTypes();

	    List<VacationDetailsEntity> getFilteredVacationDetails(@Param("status") String status,
	                                                           @Param("employmentType") String employmentType,
	                                                           @Param("departmentId") Long departmentId,
	                                                           @Param("positionId") Long positionId,
	                                                           @Param("vacationTypeName") String vacationTypeName,
	                                                           @Param("searchKeyword") String searchKeyword,
	                                                           @Param("offset") int offset,
	                                                           @Param("limit") int limit);

	    int countFilteredVacationDetails(@Param("status") String status,
	                                     @Param("employmentType") String employmentType,
	                                     @Param("departmentId") Long departmentId,
	                                     @Param("positionId") Long positionId,
	                                     @Param("vacationTypeName") String vacationTypeName,
	                                     @Param("searchKeyword") String searchKeyword);
	}