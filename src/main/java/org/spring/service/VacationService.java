package org.spring.service;

import java.util.List;

import org.spring.domain.VacationDaysEntity;
import org.spring.domain.VacationDetailsEntity;
import org.spring.domain.VacationTypeEntity;

public interface VacationService {
	 List<VacationDetailsEntity> getAllVacationDetails();
	    List<VacationDaysEntity> getAllVacationDays();
	    List<VacationTypeEntity> getAllVacationTypes();
	
}
