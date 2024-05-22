package org.spring.service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.spring.domain.EmployeeEntity;
import org.spring.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class EmployeeImpl implements EmployeeService{

    @Setter(onMethod_ = @Autowired)
    private EmpMapper mapper;

    @Override
    public List<EmployeeEntity> getAllEmployee() {
        log.info("getEmployee..........");
        return mapper.getAllEmployee();
    }
    @Override
    public long countByStatusEmployed() {
        return mapper.countByStatusEmployed();
    }

    @Override
    public long countByEmploymentTypeRegular() {
        return mapper.countByEmploymentTypeRegular();
    }

    @Override
    public long countByEmploymentTypeContract() {
        return mapper.countByEmploymentTypeContract();
    }

    @Override
    public long countByEmploymentTypeTemporary() {
        return mapper.countByEmploymentTypeTemporary();
    }

    @Override
    public long countByEmploymentTypeDispatched() {
        return mapper.countByEmploymentTypeDispatched();
    }

    @Override
    public long countByEmploymentTypeAppointed() {
        return mapper.countByEmploymentTypeAppointed();
    }

    @Override
    public long countByEmploymentTypeDaily() {
        return mapper.countByEmploymentTypeDaily();
    }

    @Override
    public long countByStatusResigned() {
        return mapper.countByStatusResigned();
    }

    @Override
    public long countAllEmployees() {
        return mapper.countAllEmployees();
    }
}