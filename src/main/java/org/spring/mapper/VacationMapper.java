package org.spring.mapper;

import java.util.List;

import org.spring.domain.VacationDaysEntity;
import org.spring.domain.VacationDetailsEntity;
import org.spring.domain.VacationTypeEntity;

public interface VacationMapper {
	List<VacationDetailsEntity> getAllVacationDetails();
    List<VacationDaysEntity> getAllVacationDays();
    List<VacationTypeEntity> getAllVacationTypes();

}
