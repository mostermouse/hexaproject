package org.spring.domain.vacation.controller;

import java.util.List;

import org.spring.domain.vacation.service.PayItemSetService;
import org.spring.domain.wage.model.WageTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class PayItemSetController {
	
	@Autowired
	PayItemSetService payItemSetService;
	
	@GetMapping("/payItem")
	public String getAllWageType(Model model) {
		
		List<WageTypeEntity> wageTypes = payItemSetService.getAllWageTypes();
		model.addAttribute("wageTypes", wageTypes); // 속성 이름을 "wageTypes"로 변경
		return "defaultPreferences/payItemSet"; // 접두사와 접미사를 제거하여 뷰 이름만 반환

	}

	@PostMapping("/addPayItemSet")
	public String createWageType(@ModelAttribute WageTypeEntity WageType, Model model) {
		
		log.info("deletePayItemSet.............");
		
		log.info("WageType: " + WageType);

		payItemSetService.createWageType(WageType);
		log.info("payItemSetService.createWageType(WageType)");
		
		return "redirect:/payItem"; // 리다이렉트를 통해 GET 요청으로 리턴
	}

	@PostMapping("/updatePayItemSet")
	public String updateWageType(@ModelAttribute WageTypeEntity WageType, Model model) {
		payItemSetService.updateWageType(WageType);
		return "redirect:/payItem"; // 리다이렉트를 통해 GET 요청으로 리턴
	}

	@RequestMapping("/deletePayItemSet")
	public String deleteWageType(@RequestParam Long wageTypeId, Model model) {
		
		log.info("deletePayItemSet.............");
				
		log.info("wageTypeId: " + wageTypeId);
		log.info("payItemSetService.deleteWageType(wageTypeId)");
		payItemSetService.deleteWageType(wageTypeId);
		return "redirect:/payItem"; // 리다이렉트를 통해 GET 요청으로 리턴

	}
	
}
