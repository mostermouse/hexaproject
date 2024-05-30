package org.spring.domain.wage.controller;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.spring.domain.wage.mapper.WageMapper;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;
import org.spring.domain.wage.service.WageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
			@RequestParam(name = "employeeName", required = false, defaultValue = "") String employeeName,
			Model model) {

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
		model.addAttribute("wageType", wageService.getWageIdTypeList());

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
		List<WageTypeEntity> wageTypes = wageService.getAllWageTypes();
		model.addAttribute("wageTypes", wageTypes);
		return "salaryManagement/paymentMnt";
	}

	@PostMapping(value = "/wages/search")
	public String searchWages(@RequestParam("wagePeriod") String wagePeriod,
			@RequestParam("settlementStart") String settlementStart,
			@RequestParam("settlementEnd") String settlementEnd, @RequestParam("paymentDate") String paymentDate,
			Model model) {
		log.info("searchWagesByCriteria - wagePeriod: " + wagePeriod + ", settlementStart: " + settlementStart
				+ ", settlementEnd: " + settlementEnd + ", paymentDate: " + paymentDate);
		Map<String, Object> params = new HashMap<>();
		params.put("wagePeriod", wagePeriod);
		params.put("settlementStartDate", settlementStart);
		params.put("settlementEndDate", settlementEnd);
		params.put("wagePaymentDate", paymentDate);

		List<WageEntity> wages = wageService.searchWagesByCriteria(params);
		log.info("searchWagesByCriteria - result: " + wages);

		if (wages == null || wages.isEmpty()) {
			log.error("No wages found for the given criteria");
			model.addAttribute("wages", new ArrayList<>());
		} else {
			Map<Long, Long> wageSumByEmployee = wages.stream()
					.collect(Collectors.groupingBy(WageEntity::getEmployeeId, Collectors.summingLong(wage -> {
						if (wage.getWageValue() == null) {
							log.error("Wage value is null for wage: " + wage);
							return 0L;
						}
						return wage.getWageValue();
					})));

			List<Map<String, Object>> wageData = wages.stream().distinct().map(wage -> {
				Map<String, Object> wageMap = new HashMap<>();
				wageMap.put("employmentType", wage.getEmploymentType());
				wageMap.put("koreanName", wage.getKoreanName());

				String departmentName = wageService.getDepartmentNameById(wage.getDepartmentId());
				if (departmentName == null) {
					departmentName = "Unknown Department";
				}
				wageMap.put("departmentName", departmentName);

				wageMap.put("totalWage", wageSumByEmployee.get(wage.getEmployeeId()));
				wageMap.put("employeeId", wage.getEmployeeId());
				return wageMap;
			}).collect(Collectors.toList());

			model.addAttribute("wages", wageData);
		}

		List<WageTypeEntity> wageTypes = wageService.getAllWageTypes();
		model.addAttribute("wageTypes", wageTypes);

		return "salaryManagement/paymentMnt";
	}

	@PostMapping(value = "/wages/byEmployee", produces = "application/json")
	@ResponseBody
	public List<Map<String, Object>> getWagesByEmployee(@RequestParam("employeeId") Long employeeId) {
		log.info("Fetching wages for employeeId: " + employeeId);
		return wageService.getWagesByEmployeeId(employeeId);
	}

	@PutMapping("/wages/update")
	public String updateWages(@RequestParam("employeeId") Long employeeId,
			@RequestParam("wagePeriod") String wagePeriod,
			@RequestParam("settlementStartDate") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate settlementStartDate,
			@RequestParam("settlementEndDate") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate settlementEndDate,
			@RequestParam("wagePaymentDate") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate wagePaymentDate,
			@RequestBody Map<Integer, Integer> wageValues) {
		wageService.updateWageValues(employeeId, wagePeriod, settlementStartDate, settlementEndDate, wagePaymentDate,
				wageValues);
		return "Success";
	}

}