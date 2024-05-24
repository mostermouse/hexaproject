package org.spring.domain.vacation.controller;

import java.util.List;

import org.spring.domain.vacation.model.VacationTypeEntity;
import org.spring.domain.vacation.service.VacationTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class VacationTypeController {

    @Autowired
    private VacationTypeService vacationTypeService;

    @GetMapping("/dnLItemSet")
    public String getAllVacationType(Model model) {
        List<VacationTypeEntity> vacationTypes = vacationTypeService.getAllVacationType();
        model.addAttribute("vacationTypes", vacationTypes); // 속성 이름을 "vacationTypes"로 변경
        return "defaultPreferences/dnLItemSet"; // 접두사와 접미사를 제거하여 뷰 이름만 반환
    }

    @PostMapping("/add")
    public String createVacationType(@ModelAttribute VacationTypeEntity vacationType, Model model) {
        vacationTypeService.createVacationType(vacationType);
        return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴
    }

    @PostMapping("/update")
    public String updateVacationType(@ModelAttribute VacationTypeEntity vacationType, Model model) {
        vacationTypeService.updateVacationType(vacationType);
        return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴
    }

    @PostMapping("/delete")
    public String deleteVacationType(@RequestParam Long vacationTypeId, Model model) {
        vacationTypeService.deleteVacationType(vacationTypeId);
        return "redirect:/dnLItemSet"; // 리다이렉트를 통해 GET 요청으로 리턴
    }
}
