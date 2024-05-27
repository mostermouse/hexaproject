package org.spring.domain.wage.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.spring.domain.wage.mapper.WageMapper;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.service.WageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class WageController {

	private final WageService wageService;

	@GetMapping("/wageList")
	public void getWageList(Model model) {
		List<WageEntity> wageList = wageService.getWageList();
		List<WageEntity> wageTypeList = wageService.getWageTypeList();
		Map<Long, String> departmentNames = new HashMap<>();
		Map<Long, String> wageTypeNames = new HashMap<>();

		wageList.forEach(wage -> {
			if (!departmentNames.containsKey(wage.getDepartmentId())) {
				departmentNames.put(wage.getDepartmentId(), wageService.getDepartmentNameById(wage.getDepartmentId()));
			}
		});
		wageTypeList.forEach(wage -> {
			if (!wageTypeNames.containsKey(wage.getWageTypeId())) {
				wageTypeNames.put(wage.getWageTypeId(), wageService.getWageTypeNameById(wage.getWageTypeId()));
			}
		});

		model.addAttribute("wageList", wageService.getWageList());
		model.addAttribute("wageTypeList", wageService.getWageTypeList());
		model.addAttribute("departmentNames", departmentNames);
		model.addAttribute("wageTypeNames", wageTypeNames);
	}
	
	// 급여대장
	@GetMapping("/payment/paymentRegisterList")
	public String getPaymentRegisterList(
			@RequestParam(name = "year", required = false, defaultValue = "2024") Long year, Model model) {

		log.info("paymentRegisterList..............");

		model.addAttribute("listWageRecord", wageService.listWageRecord(year));
		log.info("getWageList...........");

		return "salaryManagement/paymentRegisterList";
	}

	// 급여대장 - 차수
	@GetMapping("/payment/paymentRegisterPeriodList")
	public String getPaymentRegisterPeriodList(Model model,
			@RequestParam(name = "yearMonth", required = false, defaultValue = "2024") String yearMonth,
			@RequestParam(name = "wagePeriod", required = false, defaultValue = "1") Long wagePeriod) {

		log.info("paymentRegisterPeriodList..............");

		model.addAttribute("listWageRecordYMP",
				wageService.listWageRecordYMP(Long.parseLong(yearMonth.replace("-", "")), wagePeriod));
		log.info("getWageListYMP...........");

		return "salaryManagement/paymentRegisterPeriodList";
	}
	@GetMapping("/paymentMntDayWorker") //일용직 급여 관리
	public String paymentMntDayWorker(Model model){
		//TODO 내용물 넣어야함
		return "salaryManagement/paymentMntDayWorker";
	}
	@GetMapping("/payItem") //급여 항목 설정
	public String payItem(Model model) {
		log.info("payItem.................");
		//TODO 값 넣어야함
		return "defaultPreferences/payItemSet";
	}
	@GetMapping("/paymentPayList")//사원별 급여 내용
	public String paymentPayList(Model model){
		//TODO 비어있음 내용물 채워야함
		return "salaryManagement/paymentPayList";
	}
	@GetMapping("/paymentPayItemPart")//급여 항목별 조회
	public String paymentPayItem(Model model){
		//TODO 비어있음
		return "salaryManagement/paymentPayItemPart";
	}
	@GetMapping("/payment/paymentMnt") //급여입력 일용직
	public String paymentMnt(Model model) {
		//TODO wageList 대성이형 이거 옮겨놔 
		return "salaryManagement/paymentMnt";
	}

}