package org.spring.controller;

import org.spring.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
<<<<<<< HEAD
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class EmpController {

    private EmployeeService service;
    
    @GetMapping("/home")
    public void home(@RequestParam(name="year", required =  false, defaultValue = "2024") Long year, Model model) {
    	log.info("home");
    	model.addAllAttributes(service.getEmployeeCount());
    	model.addAttribute("listWageRecord", service.listWageRecord(year));
    	log.info(model.toString());
    };

    private EmployeeService employeeService;

    @GetMapping("/list")
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

    @RequestMapping("/header")
    public ModelAndView showHeader() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("includes/header"); // "header"는 views/header.jsp를 의미합니다.
        return modelAndView;
    }

}
