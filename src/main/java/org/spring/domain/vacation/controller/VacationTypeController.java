package org.spring.domain.vacation.controller;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceTypeEntity;
import org.spring.domain.attendance.service.AttendanceTypeService;
import org.spring.domain.vacation.model.VacationTypeEntity;
import org.spring.domain.vacation.service.VacationTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class VacationTypeController {

	@Autowired
	private VacationTypeService vacationTypeService;
	
    @Autowired
    private AttendanceTypeService attendanceTypeService;

	@GetMapping("/dnLItemSet") //TODO 매퍼 이름 겹침
	public String getAllVacationType(Model model) {
		//TODO 매퍼.xml 등록 안 되어 있습니다.
		/*List<VacationTypeEntity> vacationTypes = vacationTypeService.getAllVacationType();*//*
		model.addAttribute("vacationTypes", vacationTypes); // 속성 이름을 "vacationTypes"로 변경
        List<AttendanceTypeEntity> attendanceTypes = attendanceTypeService.getAllAttendanceTypes();
        model.addAttribute("attendanceTypes", attendanceTypes);*/
		return "defaultPreferences/dnLItemSet"; // 접두사와 접미사를 제거하여 뷰 이름만 반환

	}

	@PostMapping("/addDnlItem")
	public String createVacationType(@ModelAttribute VacationTypeEntity vacationType, Model model) {
		vacationTypeService.createVacationType(vacationType);
		return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴
	}

	@PostMapping("/updateDnlItem1")//TODO 이거 매핑 이름 겹침
	public String updateVacationType(@ModelAttribute VacationTypeEntity vacationType, Model model) {
		vacationTypeService.updateVacationType(vacationType);
		return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴
	}

	@PostMapping("/deleteDnlItem")
	public String deleteVacationType(@RequestParam Long vacationTypeId, Model model) {
		vacationTypeService.deleteVacationType(vacationTypeId);
		return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴

	}
	
    @PostMapping("/addAttItem")
    public String addAttendanceType(@ModelAttribute AttendanceTypeEntity attendanceType) {
		//TODO 매퍼 등록 안되어 있습니다.
        //attendanceTypeService.addAttendanceType(attendanceType);
        return "redirect:/dnLItemSet";
    }

    @PostMapping("/updateAttItem")//TODO 매퍼 이름 겹침
    public String updateAttendanceType(@ModelAttribute AttendanceTypeEntity attendanceType) {
        attendanceTypeService.updateAttendanceType(attendanceType);
        return "redirect:/dnLItemSet";
    }

    @PostMapping("/deleteAttItem")
    public String deleteAttendanceType(@RequestParam Long attendanceTypeId) {
        attendanceTypeService.deleteAttendanceType(attendanceTypeId);
        return "redirect:/dnLItemSet";
    }
}
