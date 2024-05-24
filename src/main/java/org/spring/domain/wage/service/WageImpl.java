package org.spring.domain.wage.service;

import java.util.List;

import org.spring.domain.wage.mapper.WageMapper;
import org.spring.domain.wage.model.WageEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class WageImpl implements WageService {

	@Setter(onMethod_ = @Autowired)
	private WageMapper mapper;

	@Override
	public List<WageEntity> getWageList() {
		// TODO Auto-generated method stub
		log.info("getWageList...");
		return mapper.getWageList();
	}

	@Override
	public List<WageEntity> getWageTypeList() {
		// TODO Auto-generated method stub
		log.info("getWageTypeList...");
		return mapper.getWageTypeList();
	}

	@Override
	public String getDepartmentNameById(Long departmentId) {
		return mapper.getDepartmentNameById(departmentId);
	}

	@Override
	public String getWageTypeNameById(Long wageTypeId) {
		return mapper.getWageTypeNameById(wageTypeId);
	}

//	@Override
//	public String getNamebyId(Long employeeId) {
//		// TODO Auto-generated method stub
//		return mapper.getNamebyId(employeeId);
//	}
}
