package org.spring.domain.employee.controller;

import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
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
    @GetMapping("/personnel/employeeIns")
    public String showRegistrationForm(Model model) {
        model.addAttribute("employee", new EmployeeEntity());
        model.addAttribute("dependents", new DependentsEntity());
        model.addAttribute("degree", new DegreeEntity());
        model.addAttribute("career", new CareerEntity());
        model.addAttribute("militaryservice", new MilitaryServiceEntity());
        return "defaultPreferences/employeeRegistration";
    }

    @PostMapping("/employeeregistration")
    public String registerEmployee(@ModelAttribute EmployeeRegistrationForm registrationForm, Model model) {
        employeeService.registerEmployee(registrationForm);

        log.info("register" + model.toString());
        return "redirect:/employeeMnt";
    }
    @GetMapping("/employeeMnt")
    public String employeeMnt(Model model) {
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
        log.info(model.toString());

        return "hrManagement/employeeMnt";

    }
    @GetMapping("/membersInfo") //사용자 정보
    public String membersInfo(Model model){
        log.info(model.toString());
        return "defaultPreferences/membersInfo";
    }


}
