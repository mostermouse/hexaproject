package org.spring.domain.vacation.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.Employee.model.DepartmentEntity;
import org.spring.domain.Employee.model.PositionEntity;
import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;


public interface VacationService {
		List<VacationDetailsEntity> getAllVacationDetails();
	    List<VacationDaysEntity> getAllVacationDays();
	    List<VacationTypeEntity> getAllVacationTypes();
	    List<String> getAllStatuses();
	    List<String> getAllEmploymentTypes();
	    List<DepartmentEntity> getAllDepartments();
	    List<PositionEntity> getAllPositions();
	    List<VacationDetailsEntity> getFilteredVacationDetails(@Param("status") String status, 
                @Param("employmentType") String employmentType, 
                @Param("departmentId") Long departmentId, 
                @Param("positionId") Long positionId, 
                @Param("vacationTypeName") String vacationTypeName,
                @Param("searchKeyword") String searchKeyword);
}
