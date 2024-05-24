package org.spring.domain.wage.controller;

import lombok.extern.log4j.Log4j;
import org.spring.domain.wage.service.WageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	 
}
