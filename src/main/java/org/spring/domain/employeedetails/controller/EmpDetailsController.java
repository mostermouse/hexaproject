package org.spring.domain.employeedetails.controller;

import org.spring.domain.employee.controller.model.DetailsRegistrationForm;
import org.spring.domain.employeedetails.model.CertificationEntity;
import org.spring.domain.employeedetails.service.EmpDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class EmpDetailsController {

	private EmpDetailsService empDetailsService;

	@GetMapping("/personnel/register")
	public String showDetailsRegistrationForm(Model model) {
		model.addAttribute("certification", new CertificationEntity());
		model.addAttribute("languageability", new CertificationEntity());
		model.addAttribute("training", new CertificationEntity());
		model.addAttribute("rewardpenalty", new CertificationEntity());
		model.addAttribute("appointment", new CertificationEntity());
		model.addAttribute("referrer", new CertificationEntity());
		model.addAttribute("insurance", new CertificationEntity());
		model.addAttribute("guarantor", new CertificationEntity());
		model.addAttribute("retirement", new CertificationEntity());

		return "defaultPreferences/employeeRegistration2";

	}

	// 사원등록 2페이지
	@PostMapping("/employeeregistration2")
	public String registerEmployee(@ModelAttribute DetailsRegistrationForm detailsRegistrationForm, Model model) {
		empDetailsService.registerDetails(detailsRegistrationForm);

		log.info("register" + model.toString());
		return "redirect:/employeeMnt";
	}

}
