package org.spring.domain.wage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.service.WageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
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
			@RequestParam(name = "year", required = false, defaultValue = "2010") Long year, Model model) {

		log.info("paymentRegisterList..............");

		model.addAttribute("listWageRecord", wageService.listWageRecord(year));

		return "salaryManagement/paymentRegisterList";
	}

	// 급여대장 - 차수
	@GetMapping("/payment/paymentRegisterPeriodList")
	public String getPaymentRegisterPeriodList(Model model,
			@RequestParam(name = "yearMonth", required = false, defaultValue = "2022") String yearMonth,
			@RequestParam(name = "wagePeriod", required = false, defaultValue = "1") Long wagePeriod) {

		log.info("paymentRegisterPeriodList..............");

		model.addAttribute("listWageRecordInfo",
				wageService.listWageRecordInfo(Long.parseLong(yearMonth.replace("-", "")), wagePeriod));
		model.addAttribute("department", wageService.getDepartmentList());
		model.addAttribute("listWageRecordYMP",
				wageService.listWageRecordYMP(Long.parseLong(yearMonth.replace("-", "")), wagePeriod));
		
		
		log.info("getWageListYMP...........");

		return "salaryManagement/paymentRegisterPeriodList";
	}

	// 사원별 급여 내용
	@GetMapping("/paymentPayList")
	public String paymentPayList(
			@RequestParam(name = "settlementPeriodStartDate", required = false, defaultValue = "2022-01-01") String settlementPeriodStartDate,
			@RequestParam(name = "settlementPeriodEndDate", required = false, defaultValue = "2022-12-31") String settlementPeriodEndDate,
			@RequestParam(name = "employeeId", required = false, defaultValue = "1") Long employeeId, 
			@RequestParam(name = "employeeName", required = false, defaultValue = "") String employeeName, Model model) {

		log.info("paymentPayList..........................");

		model.addAttribute("listWageRecordEMP",
				wageService.listWageRecordEMP(settlementPeriodStartDate, settlementPeriodEndDate, employeeId));
		model.addAttribute("employeeList", wageService.getEmployeeList());
		model.addAttribute("employeeName", employeeName);
		
		return "salaryManagement/paymentPayList";
	}
	
//	// 사원별 급여 내용 - 검색
//	@GetMapping("/paymentPayList")
//	public String paymentPayListSearch(
//			@RequestParam(name = "settlementPeriodStartDate", required = false, defaultValue = "2022-01-01") String settlementPeriodStartDate,
//			@RequestParam(name = "settlementPeriodEndDate", required = false, defaultValue = "2022-12-31") String settlementPeriodEndDate,
//			@RequestParam(name = "employeeId", required = false, defaultValue = "1") Long employeeId, Model model) {
//		
//		log.info("paymentPayList..........................");
//		
//		model.addAttribute("listWageRecordEMP",
//				wageService.listWageRecordEMP(settlementPeriodStartDate, settlementPeriodEndDate, employeeId));
//		
//		return "salaryManagement/paymentPayList";
//	}

	// 항목별 급여 조회
	@GetMapping("/paymentPayItemPart")
	public String paymentPayItem(
			@RequestParam(name = "settlementPeriodStartDate", required = false, defaultValue = "2022-01") String settlementPeriodStartDate,
			@RequestParam(name = "settlementPeriodEndDate", required = false, defaultValue = "2024-12") String settlementPeriodEndDate,
			@RequestParam(name = "wageTypeId", required = false, defaultValue = "1") Long wageTypeId, Model model) {

		model.addAttribute("listWageRecordWT",
				wageService.listWageRecordWT(settlementPeriodStartDate, settlementPeriodEndDate, wageTypeId));
		model.addAttribute("wageType",wageService.getWageIdTypeList());

		// TODO 검색변수 받아서 검색하도록 해야 함
		return "salaryManagement/paymentPayItemPart";
	}

	@GetMapping("/paymentMntDayWorker") // 일용직 급여 관리
	public String paymentMntDayWorker(Model model) {
		// TODO 내용물 넣어야함
		return "salaryManagement/paymentMntDayWorker";
	}

	@GetMapping("/payment/paymentMnt") // 급여입력
	public String paymentMnt(Model model) {
		// TODO wageList 대성이형 이거 옮겨놔
		return "salaryManagement/paymentMnt";
	}

}