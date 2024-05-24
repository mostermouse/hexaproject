package org.spring.domain.vacation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.spring.domain.vacation.model.VacationTypeEntity;

@Mapper
public interface VacationTypeMapper {
    List<VacationTypeEntity> getAllVacationType();
    VacationTypeEntity getVacationTypeById(Long vacationTypeId);
    void createVacationType(VacationTypeEntity vacationType);
    void updateVacationType(VacationTypeEntity vacationType);
    void deleteVacationType(Long vacationTypeId);
}
