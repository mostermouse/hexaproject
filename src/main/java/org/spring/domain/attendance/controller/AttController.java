package org.spring.domain.attendance.controller;

import org.spring.domain.attendance.service.AttendanceService;
import org.spring.domain.employee.model.DepartmentEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class AttController {

private AttendanceService service;

@GetMapping("/dayWorkerMnt")
public String dayWorkerList(
        @RequestParam(value = "employee_id", required = false) Long employeeId,
        @RequestParam(value = "status", required = false) String status,
        @RequestParam(value = "korean_name" ,required = false) String koreanName,
        @RequestParam(value = "department_name" , required = false) String departmentName,
        Model model) {
    log.info("getDayWorkerList: employeeId=" + employeeId);
    
    DepartmentEntity departmentEntity = new DepartmentEntity();
    departmentEntity.setEmployeeId(employeeId);
    departmentEntity.setStatus(status);
    departmentEntity.setKoreanName(koreanName);
    departmentEntity.setDepartmentName(departmentName);

    model.addAttribute("list", service.getDayWorkerList(departmentEntity));
    model.addAttribute("feildOrProjectList", service.getFeildOrProject());
    model.addAttribute("statuslist", service.getStatusList());
    //TODO log.info test
    System.out.println("테스트테스트" + model.toString());
    
    return "managementOfAtt/dayWorkerMnt";
}


	
}


