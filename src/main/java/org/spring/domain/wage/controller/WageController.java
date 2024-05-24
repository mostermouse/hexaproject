package org.spring.domain.wage.controller;

import lombok.extern.log4j.Log4j;
import org.spring.domain.wage.service.WageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
@Log4j
@Controller
@AllArgsConstructor
public class WageController {
	
	 private final WageService wageService;
	
	 @GetMapping("/wageList")
	 public String  getWageList(Model model) {
		 model.addAttribute("wageList",wageService.getWageList());
		 log.info("wagelist.....................");
		 return "wageList";
	 }
	 
    // 급여대장
    @GetMapping("/paymentRegisterList")
    public String getEmployees(@RequestParam(name="year", required =  false, defaultValue = "2024") Long year, Model model) {
    	
    	log.info("paymentRegisterList");
    	model.addAttribute("listWageRecord", wageService.listWageRecord(year));
    	log.info("getWageList...........");
    	
        return "salaryManagement/paymentRegisterList";
    }
	 
}
