package org.spring.domain.vacation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.PositionEntity;
import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;


public interface VacationMapper {
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

List<VacationDetailsEntity> getVacationUsageByEmployeeId(@Param("employeeId") Long employeeId);

List<VacationTypeEntity> getAllVacationTypes();
List<String> getAllStatuses();
List<String> getAllEmploymentTypes();
List<DepartmentEntity> getAllDepartments();
List<PositionEntity> getAllPositions();
}