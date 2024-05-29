package org.spring.domain.vacation.service;

import org.spring.domain.vacation.model.VacationTypeEntity;
import java.util.List;

public interface VacationTypeService {
    List<VacationTypeEntity> getAllVacationTypes();
    VacationTypeEntity getVacationTypeById(long vacationTypeId);
    void createVacationType(VacationTypeEntity vacationType);
    void updateVacationType(VacationTypeEntity vacationType);
    void deleteVacationType(long vacationTypeId);
}
