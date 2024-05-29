package org.spring.domain.attendance.service;

import java.time.LocalDate;
import java.util.List;

import org.spring.domain.attendance.model.FeildOrProjectIdEntity;

public interface DjDetailsService {
   public List<FeildOrProjectIdEntity> getDjDetailsList(
		   LocalDate inputDate, 
		   String koreanName, 
		   String departmentName, 
		   String name);
}
