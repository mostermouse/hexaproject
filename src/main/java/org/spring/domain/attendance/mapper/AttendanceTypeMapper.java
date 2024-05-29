package org.spring.domain.attendance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.attendance.model.AttendanceTypeEntity;

@Mapper
public interface AttendanceTypeMapper {
	List<AttendanceTypeEntity> findAll();
    AttendanceTypeEntity findById(Long id);
    void insert(AttendanceTypeEntity attendanceTypeEntity);
    void update(AttendanceTypeEntity attendanceTypeEntity);
    void delete(Long id);
    List<AttendanceGroupEntity> findAllGroups();
}
