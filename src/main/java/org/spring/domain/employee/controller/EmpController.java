package org.spring.domain.employee.controller;

import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class EmpController {

    private EmployeeService employeeService;

    // 사원현황판, 급여대장
    @GetMapping("/")
    public String getEmployees(@RequestParam(name="year", required =  false, defaultValue = "2024") Long year, Model model) {
    	log.info("index");
    	
    	//사원현황판
        model.addAttribute("list", employeeService.getAllEmployee());
        model.addAttribute("employed", employeeService.countByStatusEmployed());
        model.addAttribute("regular", employeeService.countByEmploymentTypeRegular());
        model.addAttribute("contract", employeeService.countByEmploymentTypeContract());
        model.addAttribute("temporary", employeeService.countByEmploymentTypeTemporary());
        model.addAttribute("dispatched", employeeService.countByEmploymentTypeDispatched());
        model.addAttribute("appointed", employeeService.countByEmploymentTypeAppointed());
        model.addAttribute("daily", employeeService.countByEmploymentTypeDaily());
        model.addAttribute("resigned", employeeService.countByStatusResigned());
        model.addAttribute("allemployees", employeeService.countAllEmployees());
        log.info("getEmployess...........");
        
        //급여대장
    	model.addAttribute("listWageRecord", employeeService.listWageRecord(year));
    	log.info("getWageList...........");
    	
        return "index";
    }
    
    // 사원등록 1페이지
    @GetMapping("/employeeRegistration")
    public String showRegistrationForm(Model model) {
        model.addAttribute("employee", new EmployeeEntity());
        model.addAttribute("dependents", new DependentsEntity());
        model.addAttribute("degree", new DegreeEntity());
        model.addAttribute("career", new CareerEntity());
        model.addAttribute("militaryservice", new MilitaryServiceEntity());
        return "defaultPreferences/employeeRegistration";
    }

    @PostMapping("/employeeRegistration")
    public String registerEmployee(
            @ModelAttribute EmployeeEntity employeeEntity,
            @ModelAttribute DependentsEntity dependentsEntity,
            @ModelAttribute DegreeEntity degreeEntity,
            @ModelAttribute CareerEntity careerEntity,
            @ModelAttribute MilitaryServiceEntity militaryServiceEntity,
            Model model) {

        employeeService.registerEmployee(employeeEntity,
                dependentsEntity,
                degreeEntity,
                careerEntity,
                militaryServiceEntity);


        return "redirect:/index";
    }


}
