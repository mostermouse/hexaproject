package org.spring.controller;

import org.spring.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
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

    @GetMapping("/list")
    public void list(Model model) {
        log.info("list");
        model.addAttribute("list", service.getAllEmployee());
        log.info(model.toString());
    }

    @RequestMapping("/header")
    public ModelAndView showHeader() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("includes/header"); // "header"는 views/header.jsp를 의미합니다.
        return modelAndView;
    }

}
