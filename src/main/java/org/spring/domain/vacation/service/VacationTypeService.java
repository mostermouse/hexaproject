package org.spring.domain.vacation.service;

import java.util.List;

import org.spring.domain.vacation.model.VacationTypeEntity;

public interface VacationTypeService {
    List<VacationTypeEntity> getAllVacationType();
    VacationTypeEntity getVacationTypeById(Long vacationTypeId);
    void createVacationType(VacationTypeEntity vacationType);
    void updateVacationType(VacationTypeEntity vacationType);
    void deleteVacationType(Long vacationTypeId);
}
