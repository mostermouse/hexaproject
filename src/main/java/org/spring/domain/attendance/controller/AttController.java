package org.spring.domain.attendance.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.HashMap;
import java.util.Map;

import org.spring.domain.attendance.model.AttendanceEntity;
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
			@RequestParam(value = "status", required = false) String status,
			Model model) {
		log.info("getDayWorkerList: srchKwrd=" + srchKwrd);
		Map<String, Object> params = new HashMap<>();
		params.put("srchKwrd", srchKwrd);
		params.put("status", status);

		model.addAttribute("list", service.getDayWorkerList(params));
		model.addAttribute("feildOrProjectList", service.getFeildOrProject());
		model.addAttribute("statuslist", service.getStatusList());
		/* model.addAttribute("list", service.getDayWorkerStatusList(status)); */

		System.out.println("테스트테스트" + model.toString());

		return "managementOfAtt/dayWorkerMnt";
	}
}

