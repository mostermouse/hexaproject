package org.spring.domain.attendance.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.model.FeildOrProjectIdEntity;
import org.spring.domain.attendance.service.AttendanceService;
import org.spring.domain.employee.model.DepartmentEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class AttController {

	private AttendanceService service;

	@GetMapping("/dayWorkerMnt")
	public String dayWorkerList(
		//	@RequestParam(value ="employeeId", required = false) Long employeeId,
			@RequestParam(value = "searchKeyword", required = false) String searchKeyword,
			@RequestParam(value = "status", required = false) String status, 
			Model model) {
		log.info("getDayWorkerList: searchKeyword: " + searchKeyword);

		DepartmentEntity departmentEntity = new DepartmentEntity();
		AttendanceEntity attendanceEntity = new AttendanceEntity();

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
	@GetMapping("/diligenceSearchMonth") // 근태 상세 조회
    public String diligenceSearchMonth(Model model) {
        List<AttendanceEntityRequest> attendanceList = service.getEmployeeAttendance();
        model.addAttribute("attendanceList", attendanceList);
        log.info(model.toString());
        return "/managementOfAtt/diligenceSearchMonth";
	}
	
	@PostMapping("/dayWorkerSearchMonth")
	public String allDayWorkerList(
		//	@RequestParam(value ="employeeId", required = false) Long employeeId,
			@RequestParam(value = "searchKeyword", required = false) String searchKeyword,
			@RequestParam(value = "status", required = false) String status, 
			Model model) {
		log.info("getDayWorkerList: searchKeyword: " + searchKeyword);

		DepartmentEntity departmentEntity = new DepartmentEntity();
		AttendanceEntity attendanceEntity = new AttendanceEntity();

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

		return "managementOfAtt/dayWorkerSearchMonth";
	}
	
	 	
	
//		@PostMapping("/saveDayWorkerMnt")
//	    public String saveDayWorkerMnt(@RequestParam("employeeId") List<Long> employeeIds,
//	    								@RequestParam("inputDate") String inputDateStr,
//	    								@RequestParam("feildOrProjectId") Long feildOrProjectId,
//	    								@RequestParam("amount") Long amount,
//	    								Model model) {
//		 
//			 for (Long employeeId : employeeIds) {
//				  log.info("Processing data for employee ID: " + employeeId);
//				  
//				
//				  // 입력된 날짜 문자열을 LocalDate로 변환 
//				  LocalDate inputDate = LocalDate.parse(inputDateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
//				  
//				  AttendanceEntity dayWorkerAttendanceList = service.getDayWorkerAttendance(employeeId);
//				    
//				  
//				  // 각 사원에 대한 데이터를 데이터베이스에 저장 
//				  service.saveDayWorker(employeeId, inputDate, feildOrProjectId, amount); // employeeId를 전달하도록 수정
//				  
//				  
//				  
//				  log.info("Data saved for employee ID: " + employeeId); 
//			 }
//		 return "redirect:/dayWorkerSearchMonth";
//		 }

		@PostMapping("/saveDayWorkerMnt")
	    public String saveDayWorkerMnt(@RequestParam("employeeId") Long employeeId,
	    								@RequestParam("inputDate") String inputDateStr,
	    								@RequestParam("feildOrProjectId") Long feildOrProjectId,
	    								@RequestParam("amount") Long amount,
	    								Model model) {

				  log.info("Processing data for employee ID: " + employeeId);
				
				  // 입력된 날짜 문자열을 LocalDate로 변환 
				  LocalDate inputDate = LocalDate.parse(inputDateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				    
				  // 각 사원에 대한 데이터를 데이터베이스에 저장 
				  service.saveDayWorker(employeeId, inputDate, feildOrProjectId, amount); // employeeId를 전달하도록 수정
				  
				  log.info("Data saved for employee ID: " + employeeId); 

		 return "redirect:/dayWorkerSearchMonth";
		 } 
		 
	/*
	 * @RequestMapping("/dayWorkerAttendanceList") public String
	 * dayWorkerAttendance(@RequestParam("employeeId") Long employeeId, Model
	 * model){
	 * 
	 * AttendanceEntity attendanceEntity = new AttendanceEntity();
	 * 
	 * attendanceEntity.setEmployeeId(employeeId);
	 * model.addAttribute("dayworkerAttlist",service.getDayWorkerAttendance(
	 * employeeId)); return "managementOfAtt/dayWorkerMnt"; }
	 */
	
	/*
	 * @RequestMapping("/dayWorkerAttendanceList")
	 * 
	 * @ResponseBody public Map<String, Object>
	 * getDayWorkerAttendance(@RequestParam("employeeId") Long employeeId) {
	 * List<AttendanceEntity> attendanceList =
	 * service.getDayWorkerAttendance(employeeId); Map<String, Object> response =
	 * new HashMap<>(); response.put("koreanName", "성명"); // 해당 성명 데이터를 추가
	 * response.put("employeeId", "사원번호"); response.put("departmentName", "부서");
	 * response.put("positionId", "직위"); response.put("inputDate", "근무일자");
	 * response.put("name", "현장/프로젝트"); response.put("amount", "일당");
	 * 
	 * response.put("attendanceList", attendanceList); return response; }
	 */
	 	
	private boolean isDepartmentName(String searchKeyword) {
		// 예시: "팀", "부", "과", "실" 등으로 끝나는지 확인
		// 해당 패턴으로 끝나면 부서 이름으로 간주
		String regex = ".*[팀부과실]$";
		return searchKeyword.matches(regex);
	}

}
