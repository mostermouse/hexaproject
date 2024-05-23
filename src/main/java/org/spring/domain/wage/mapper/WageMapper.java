package org.spring.domain.wage.mapper;

import java.util.List;

import org.spring.domain.wage.model.WageEntity;


public interface WageMapper {

	List<WageEntity> getWageList();

	List<WageEntity> getWageTypeList();
}
