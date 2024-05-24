package org.spring.domain.wage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.service.WageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;

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

}