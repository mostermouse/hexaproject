package org.spring.domain.attendance.service;

import java.util.List;

import org.spring.domain.attendance.controller.AttendanceEntityRequest;
import org.spring.domain.attendance.mapper.AttMapper;
import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.AttendanceGroupEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AttendanceImpl implements AttendanceService {

    @Autowired
    private AttMapper mapper;

    @Override
    public List<AttendanceEntity> getEmployeeAttendanceList() {
        log.info("Fetching employee attendance list");
        return mapper.getEmployeeAttendanceList();
    }

    @Override
    public List<AttendanceEntityRequest> getEmployeeAttendance() {
        log.info("Fetching employee attendance");
        return mapper.getEmployeeAttendance();
    }

    @Override
    public List<EmployeeEntity> getDayWorkerList(String srchKwrd) {
        log.info("Fetching day worker list: srchKwrd=" + srchKwrd);
        return mapper.getDayWorkerList(srchKwrd);
    }

    @Override
    public List<AttendanceGroupEntity> getAttendanceGroup() {
        log.info("Fetching attendance groups");
        return mapper.selectAttendanceGroup();
    }
}
