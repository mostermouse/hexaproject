package org.spring.domain.Attendance.service;

import java.util.List;

import org.spring.domain.Attendance.model.AttendanceEntity;
import org.spring.domain.Attendance.mapper.AttMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AttendanceImpl implements AttendanceService {

    @Setter(onMethod_ = @Autowired)
    private AttMapper mapper;

    @Override
    public List<AttendanceEntity> getEmployeeAttendance() {
        log.info("getEmployeeAttendance..........");
        return mapper.getEmployeeAttendance();
    }

}
