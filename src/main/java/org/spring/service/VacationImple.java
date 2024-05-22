package org.spring.service;

import java.util.List;

import org.spring.domain.VacationDaysEntity;
import org.spring.domain.VacationDetailsEntity;
import org.spring.domain.VacationTypeEntity;
import org.spring.mapper.VacationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class VacationImple implements VacationService {

	 @Setter(onMethod_ = @Autowired)
	    private VacationMapper vacDaysMapper;

	    @Override
	    public List<VacationDetailsEntity> getAllVacationDetails() {
	        log.info("Get all vacation details");
	        return vacDaysMapper.getAllVacationDetails();
	    }

	    @Override
	    public List<VacationDaysEntity> getAllVacationDays() {
	        log.info("Get all vacation days");
	        return vacDaysMapper.getAllVacationDays();
	    }

	    @Override
	    public List<VacationTypeEntity> getAllVacationTypes() {
	        log.info("Get all vacation types");
	        return vacDaysMapper.getAllVacationTypes();
	    }
	}
