package org.spring.domain.vacation.service;

import java.util.List;

import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.PositionEntity;
import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;
import org.spring.domain.vacation.mapper.VacationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class VacationImpl implements VacationService {
	  @Autowired
	    private VacationMapper vacMapper;

	    @Override
	    public List<VacationDetailsEntity> getFilteredVacationDetails(String status, String employmentType, Long departmentId, Long positionId, String vacationTypeName, String searchKeyword, int offset, int limit) {
	        return vacMapper.getFilteredVacationDetails(status, employmentType, departmentId, positionId, vacationTypeName, searchKeyword, offset, limit);
	    }

	    @Override
	    public int countFilteredVacationDetails(String status, String employmentType, Long departmentId, Long positionId, String vacationTypeName, String searchKeyword) {
	        return vacMapper.countFilteredVacationDetails(status, employmentType, departmentId, positionId, vacationTypeName, searchKeyword);
	    }

	    @Override
	    public List<VacationDetailsEntity> getVacationUsageByEmployeeId(Long employeeId) {
	        return vacMapper.getVacationUsageByEmployeeId(employeeId);
	    }

	    @Override
	    public List<VacationTypeEntity> getAllVacationTypes() {
	        return vacMapper.getAllVacationTypes();
	    }

	    @Override
	    public List<String> getAllStatuses() {
	        return vacMapper.getAllStatuses();
	    }

	    @Override
	    public List<String> getAllEmploymentTypes() {
	        return vacMapper.getAllEmploymentTypes();
	    }

	    @Override
	    public List<DepartmentEntity> getAllDepartments() {
	        return vacMapper.getAllDepartments();
	    }

	    @Override
	    public List<PositionEntity> getAllPositions() {
	        return vacMapper.getAllPositions();
	    }
	}