package org.spring.domain.vacation.mapper;

import java.util.List;

import org.spring.domain.vacation.model.VacationDaysEntity;
import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.model.VacationTypeEntity;

public interface VacationMapper {
	List<VacationDetailsEntity> getAllVacationDetails();
    List<VacationDaysEntity> getAllVacationDays();
    List<VacationTypeEntity> getAllVacationTypes();

}
