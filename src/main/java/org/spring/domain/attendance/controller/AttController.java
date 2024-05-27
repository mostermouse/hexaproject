package org.spring.domain.attendance.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.service.AttendanceService;
import org.spring.domain.employee.model.DepartmentEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class AttController {

	private AttendanceService service;

	@GetMapping("/dayWorkerMnt")
	public String dayWorkerList(@RequestParam(value = "searchKeyword", required = false) String searchKeyword,
			@RequestParam(value = "status", required = false) String status, Model model) {
		log.info("getDayWorkerList: searchKeyword: " + searchKeyword);

		DepartmentEntity departmentEntity = new DepartmentEntity();

		if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
			if (searchKeyword.matches("\\d+")) { // 문자열이 숫자로만 이루어져 있는지를 검사
				departmentEntity.setEmployeeId(Long.parseLong(searchKeyword));
			} else if (isDepartmentName(searchKeyword)) {
				log.info("검색한 부서이름 : " + searchKeyword);
				departmentEntity.setDepartmentName(searchKeyword);
			} else {
				log.info("검색한 한국이름 : " + searchKeyword);
				departmentEntity.setKoreanName(searchKeyword);
			}
		}

		departmentEntity.setStatus(status);

		model.addAttribute("list", service.getDayWorkerList(departmentEntity));

		model.addAttribute("feildOrProjectList", service.getFeildOrProject());
		log.info("현장/프로젝트 : " + model.addAttribute("feildOrProjectList", service.getFeildOrProject()));
		model.addAttribute("statuslist", service.getStatusList());

		log.info("Model contents: " + model);

		return "managementOfAtt/dayWorkerMnt";
	}
	
	 @PostMapping("/saveDayWorkerMnt")
	    public String saveDayWorkerMnt(@RequestParam("employeeId") List<Long> employeeIds,
	    								@RequestParam("inputDate") String inputDateStr,
	    								@RequestParam("feildOrProjectId") Long feildOrProjectId,
	    								@RequestParam("amount") Long amount) {

		 for (Long employeeId : employeeIds) {
			  log.info("Processing data for employee ID: " + employeeId);
			  
			  // 입력된 날짜 문자열을 LocalDate로 변환 
			  LocalDate inputDate = LocalDate.parse(inputDateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			  
			  // 각 사원에 대한 데이터를 데이터베이스에 저장 
			  service.saveDayWorker(employeeId, inputDate, feildOrProjectId, amount); // employeeId를 전달하도록 수정
			  
			  log.info("Data saved for employee ID: " + employeeId); } 
		 
		 return "redirect:/dayWorkerMnt"; 
		 }
	
	


	
	/*
	 * @PostMapping("/saveDayWorkerMnt") public String
	 * saveDayWorker(@RequestParam("selectedEmployeeIds") String
	 * selectedEmployeeIds,
	 * 
	 * @RequestParam("employeeId") List<Long> employeeIds,
	 * 
	 * @RequestParam("inputDate") String inputDateStr,
	 * 
	 * @RequestParam("feildOrProjectId") Long feildOrProjectId,
	 * 
	 * @RequestParam("amount") Long amount) { // log.info("Selected employee IDs: "
	 * + employeeIds); log.info("Input date: " + inputDateStr);
	 * log.info("Field or Project ID: " + feildOrProjectId); log.info("Amount: " +
	 * amount);
	 * 
	 * // String 배열로 분리 String[] employeeIdArray = selectedEmployeeIds.split(",");
	 * 
	 * // String 배열을 Long 배열로 변환 Long[] employeeIds = new
	 * Long[employeeIdArray.length]; for (int i = 0; i < employeeIdArray.length;
	 * i++) { employeeIds[i] = Long.parseLong(employeeIdArray[i]); }
	 * 
	 * 
	 * for (Long employeeId : employeeIds) {
	 * log.info("Processing data for employee ID: " + employeeId);
	 * 
	 * // 입력된 날짜 문자열을 LocalDate로 변환 LocalDate inputDate =
	 * LocalDate.parse(inputDateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
	 * 
	 * // 각 사원에 대한 데이터를 데이터베이스에 저장 service.saveDayWorker(employeeId, inputDate,
	 * feildOrProjectId, amount); // employeeId를 전달하도록 수정
	 * 
	 * log.info("Data saved for employee ID: " + employeeId); } return
	 * "redirect:/dayWorkerMnt"; }
	 */
	 

	private boolean isDepartmentName(String searchKeyword) {
		// 예시: "팀", "부", "과", "실" 등으로 끝나는지 확인
		// 해당 패턴으로 끝나면 부서 이름으로 간주
		String regex = ".*[팀부과실]$";
		return searchKeyword.matches(regex);
	}

}
