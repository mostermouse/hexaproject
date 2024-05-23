package org.spring.domain.employee.controller;

import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.employee.service.EmployeeService;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class EmpController {

    private EmployeeService employeeService;

    @GetMapping("/home")
    public void home(@RequestParam(name="year", required =  false, defaultValue = "2024") Long year, Model model) {
    	log.info("home");
    	model.addAllAttributes(employeeService.getEmployeeCount());
    	model.addAttribute("listWageRecord", employeeService.listWageRecord(year));
    	log.info(model.toString());
    };


    // 사원현황판
    @GetMapping("/employeeMnt")
    public void getEmployees(Model model) {
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
    }

    // 사원등록 1페이지
    @GetMapping("/employeeRegistration")
    public void showRegistrationForm(Model model) {
    	model.addAttribute("employee", new EmployeeEntity());
    	model.addAttribute("dependents", new DependentsEntity());
    	model.addAttribute("degree", new DegreeEntity());
    	model.addAttribute("career", new CareerEntity());
    	model.addAttribute("militaryservice", new MilitaryServiceEntity());
    }
    @PostMapping("/employeeRegistration")
    public void registerEmployee(@ModelAttribute
    		EmployeeEntity employeeEntity,
    		DependentsEntity dependentsEntity,
    		DegreeEntity degreeentity,
    		CareerEntity careerEntity,
    		MilitaryServiceEntity militaryServiceEntity,
    		Model model) {
    	employeeService.registerEmployee(employeeEntity,
    			dependentsEntity,
    			degreeentity,
    			careerEntity,
    			militaryServiceEntity);
    }


    @RequestMapping("/header")
    public ModelAndView showHeader() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("includes/header"); // "header"는 views/header.jsp를 의미합니다.
        return modelAndView;
    }

}
