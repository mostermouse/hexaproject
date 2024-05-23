package org.spring.domain.attendance.controller;

import org.spring.domain.attendance.service.AttendanceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class AttController {
	
private AttendanceService service;
	@GetMapping("/dayWorkerMnt")
	public String dayWorkerList(
			@RequestParam(value = "srchKwrd", required = false) String srchKwrd, 
			@RequestParam(value = "attandanceGroupId", required = false) Long attandanceGroupId,
			@RequestParam(value = "attandanceGroupName", required = false) Long attandanceGroupName,
			Model model) {
		log.info("getDayWorkerList: srchKwrd=" + srchKwrd);
        model.addAttribute("list", service.getDayWorkerList(srchKwrd));
        model.addAttribute("attlist", service.getAttendanceGroup());
        log.info(service.getDayWorkerList(srchKwrd));
        System.out.println("테스트테스트" + model.toString());
        
        return "dayWorkerMnt";
	}
	/*
	 * @GetMapping("/dayWorkerMnt") public void addendanceGroup(Model model) { //
	 * List<AttendanceEntity> attlist = service.getAttendanceGroup();
	 * model.addAttribute("attlist", service.getAttendanceGroup());
	 * 
	 * log.info(service.getAttendanceGroup()); }
	 */
}


