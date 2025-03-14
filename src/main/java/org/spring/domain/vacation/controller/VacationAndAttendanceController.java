package org.spring.domain.vacation.controller;

import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.spring.domain.attendance.service.AttendanceTypeService;
import org.spring.domain.vacation.model.VacationTypeEntity;
import org.spring.domain.vacation.service.VacationTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class VacationAndAttendanceController {

	private final AttendanceTypeService attendanceTypeService;
	private final VacationTypeService vacationTypeService;

	public VacationAndAttendanceController(AttendanceTypeService attendanceTypeService,
			VacationTypeService vacationTypeService) {
		this.attendanceTypeService = attendanceTypeService;
		this.vacationTypeService = vacationTypeService;
	}

	@GetMapping("/dnLItemSet1")//TODO 매퍼 이름 겹침 임시로 수정함
	public String showDnlItemSet(Model model) {
		model.addAttribute("attendanceTypes", attendanceTypeService.getAllAttendanceTypes());
		model.addAttribute("vacationTypes", vacationTypeService.getAllVacationTypes());
		return "defaultPreferences/dnLItemSet";
	}

	@PostMapping("/createAttItem")
	public String createAttendanceItem(@ModelAttribute AttendanceTypeEntity attendanceTypeEntity) {
		attendanceTypeService.createAttendanceType(attendanceTypeEntity);
		return "redirect:/dnLItemSet1";
	}

	@PostMapping("/createDnlItem")
	public String createVacationItem(@ModelAttribute VacationTypeEntity vacationTypeEntity) {
		vacationTypeService.createVacationType(vacationTypeEntity);
		return "redirect:/dnLItemSet1";
	}

	@PostMapping("/updateAttItem1")//TODO 매퍼 이름 겹침 임시로 바꿈
	public String updateAttendanceItem(@ModelAttribute AttendanceTypeEntity attendanceTypeEntity) {
		attendanceTypeService.updateAttendanceType(attendanceTypeEntity);
		return "redirect:/dnLItemSet1";
	}

	@PostMapping("/updateDnlItem")
	//TODO 매퍼 이름 겹침 임시로 바꿈
	public String updateVacationItem(@ModelAttribute VacationTypeEntity vacationTypeEntity) {
		vacationTypeService.updateVacationType(vacationTypeEntity);
		return "redirect:/dnLItemSet1";
	}

	@DeleteMapping("/deleteAttItem")
	public String deleteAttendanceItem(@RequestParam("id") Long id) {
		attendanceTypeService.deleteAttendanceType(id);
		return "redirect:/dnLItemSet1";
	}

	@DeleteMapping("/deleteDnlItem")
	public String deleteVacationItem(@RequestParam("id") Long id) {
		vacationTypeService.deleteVacationType(id);
		return "redirect:/dnLItemSet1";
	}
}
