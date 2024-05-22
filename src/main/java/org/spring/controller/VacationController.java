package org.spring.controller;

import org.spring.service.EmployeeService;
import org.spring.service.VacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class VacationController {

	 @Autowired
	    private VacationService service;

	    @GetMapping("/vacation")
	    public String vacList(Model model) {
	        log.info("Fetching vacation details list");
	        model.addAttribute("vacDetailsList", service.getAllVacationDetails());
	        model.addAttribute("vacDaysList", service.getAllVacationDays());
	        model.addAttribute("vacTypeList", service.getAllVacationTypes());
	        log.info("Vacation details: " + model.toString());
	        return "vacList"; 
	    }
	}