package org.spring.domain.attendance.mapper;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;

public interface DjDetailsMapper {
    public List<FeildOrProjectIdEntity> getDjDetailsList(
    		@Param ("inputDate") LocalDate inputDate, 
    		@Param ("koreanName") String koreanName, 
    		@Param ("departmentName") String departmentName, 
    		@Param ("name") String name);
}
