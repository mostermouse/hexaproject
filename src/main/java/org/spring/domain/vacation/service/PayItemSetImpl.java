package org.spring.domain.vacation.service;

import java.util.List;

import org.spring.domain.vacation.mapper.PayItemSetMapper;
import org.spring.domain.wage.model.WageTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class PayItemSetImpl implements PayItemSetService {

	@Autowired
	private PayItemSetMapper payItemSetMapper;

	@Override
	public List<WageTypeEntity> getAllWageTypes() {
		return payItemSetMapper.getAllWageType();
	}

	@Override
    public WageTypeEntity getWageTypeById(Long wageTypeId) {
		return payItemSetMapper.getWageTypeId(wageTypeId);
	}

	@Override
	public void createWageType(WageTypeEntity wageType) {
		payItemSetMapper.createWageType(wageType);
	}

	@Override
	public void updateWageType(WageTypeEntity wageType) {
		payItemSetMapper.updateWageType(wageType);
	}

	@Override
	public void deleteWageType(Long wageTypeId) {
		payItemSetMapper.deleteWageType(wageTypeId);
	}

}
