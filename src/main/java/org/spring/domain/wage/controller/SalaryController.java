package org.spring.domain.wage.controller;

import org.spring.domain.wage.service.WageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class SalaryController {
	
	 private final WageService wageService;
	
	 @GetMapping("/wageList")
	 public void getWageList(Model model) {
		 model.addAttribute("wageList",wageService.getWageList());
	 }
	 
}
