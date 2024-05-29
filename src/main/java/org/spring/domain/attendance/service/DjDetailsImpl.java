package org.spring.domain.attendance.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.spring.domain.attendance.mapper.DjDetailsMapper;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DjDetailsImpl implements DjDetailsService {
	@Autowired
	private DjDetailsMapper mapper;

	@Override
	public List<FeildOrProjectIdEntity> getDjDetailsList(LocalDate inputDate, String koreanName, String departmentName,
			String name) {
		// Mapper를 통해 데이터 가져오기
		List<FeildOrProjectIdEntity> djDetailsList = mapper.getDjDetailsList(inputDate, koreanName, departmentName,
				name);

		return djDetailsList;
	}
}
