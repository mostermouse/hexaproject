package org.spring.domain.vacation.mapper;

import org.spring.domain.vacation.model.VacationTypeEntity;
import java.util.List;

public interface VacationTypeMapper {
    List<VacationTypeEntity> getAllVacationType();
    VacationTypeEntity getVacationTypeById(long vacationTypeId);
    void createVacationType(VacationTypeEntity vacationType);
    void updateVacationType(VacationTypeEntity vacationType);
    void deleteVacationType(long vacationTypeId);
}
