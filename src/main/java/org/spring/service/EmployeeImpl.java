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

    @Autowired
    private EmpMapper mapper;

    @Override
    public List<EmployeeEntity> getAllEmployee() {
        //TODO 리팩토링 필요함
        log.info("getEmployee..........");
        return mapper.getAllEmployee();
    }

}
