package org.spring.domain.vacation.service;

import java.util.List;

import org.spring.domain.vacation.mapper.VacationTypeMapper;
import org.spring.domain.vacation.model.VacationTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VacationTypeServiceImpl implements VacationTypeService {

	@Autowired
	private VacationTypeMapper vacationTypeMapper;

	@Override
	public List<VacationTypeEntity> getAllVacationType() {
		return vacationTypeMapper.getAllVacationType();
	}

	@Override
	public VacationTypeEntity getVacationTypeById(Long vacationTypeId) {
		return vacationTypeMapper.getVacationTypeById(vacationTypeId);
	}

	@Override
	public void createVacationType(VacationTypeEntity vacationType) {
		vacationTypeMapper.createVacationType(vacationType);
	}

	@Override
	public void updateVacationType(VacationTypeEntity vacationType) {
		vacationTypeMapper.updateVacationType(vacationType);
	}

	@Override
	public void deleteVacationType(Long vacationTypeId) {
		vacationTypeMapper.deleteVacationType(vacationTypeId);
	}
}
