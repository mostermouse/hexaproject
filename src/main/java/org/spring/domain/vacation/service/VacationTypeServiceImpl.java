package org.spring.domain.vacation.service;

import org.spring.domain.vacation.mapper.VacationTypeMapper;
import org.spring.domain.vacation.model.VacationTypeEntity;
import org.spring.domain.vacation.service.VacationTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class VacationTypeServiceImpl implements VacationTypeService {

    @Autowired
    private VacationTypeMapper vacationTypeMapper;

    @Override
    public List<VacationTypeEntity> getAllVacationTypes() {
        return vacationTypeMapper.getAllVacationType();
    }

    @Override
    public VacationTypeEntity getVacationTypeById(long vacationTypeId) {
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
    public void deleteVacationType(long vacationTypeId) {
        vacationTypeMapper.deleteVacationType(vacationTypeId);
    }
}
