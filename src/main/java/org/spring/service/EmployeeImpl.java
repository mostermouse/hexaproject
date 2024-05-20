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
    public List<EmployeeEntity> getEmployee() {
        log.info("getEmployee..........");
        return mapper.getEmployee();
    }

}
