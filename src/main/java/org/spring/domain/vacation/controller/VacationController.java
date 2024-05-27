package org.spring.domain.vacation.controller;

import java.util.List;

import org.spring.domain.vacation.model.VacationDetailsEntity;
import org.spring.domain.vacation.service.VacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class VacationController {

	  @Autowired
	    private VacationService service;

	    @GetMapping("/holidaysSearchResult")
	    public String vacList(
	            @RequestParam(value = "status", required = false) String status,
	            @RequestParam(value = "employmentType", required = false) String employmentType,
	            @RequestParam(value = "departmentId", required = false) Long departmentId,
	            @RequestParam(value = "positionId", required = false) Long positionId,
	            @RequestParam(value = "vacationTypeName", required = false) String vacationTypeName,
	            @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
	            @RequestParam(value = "viewCount", required = false, defaultValue = "30") int viewCount,
	            @RequestParam(value = "page", required = false, defaultValue = "1") int page,
	            Model model) {

	        int offset = (page - 1) * viewCount;
	        List<VacationDetailsEntity> vacList = service.getFilteredVacationDetails(
	                status, employmentType, departmentId, positionId, vacationTypeName, searchKeyword, offset, viewCount);
	        int totalRecords = service.countFilteredVacationDetails(status, employmentType, departmentId, positionId, vacationTypeName, searchKeyword);
	        int totalPages = (int) Math.ceil((double) totalRecords / viewCount);

	        model.addAttribute("vacList", vacList);
	        model.addAttribute("vacDaysList", service.getAllVacationDays());
	        model.addAttribute("vacTypeList", service.getAllVacationTypes());
	        model.addAttribute("statusList", service.getAllStatuses());
	        model.addAttribute("employmentTypeList", service.getAllEmploymentTypes());
	        model.addAttribute("departmentList", service.getAllDepartments());
	        model.addAttribute("positionList", service.getAllPositions());
	        model.addAttribute("currentPage", page);
	        model.addAttribute("totalPages", totalPages);
	        model.addAttribute("viewCount", viewCount);
	        log.info("Vacation details: " + model.toString());
	        return "managementOfAtt/holidaysSearchResult";
	    }

	    @GetMapping("managementOfAtt/holidaysSearchResult/filter")
	    public String filterVacations(
	            @RequestParam(value = "status", required = false) String status,
	            @RequestParam(value = "employmentType", required = false) String employmentType,
	            @RequestParam(value = "departmentId", required = false) Long departmentId,
	            @RequestParam(value = "positionId", required = false) Long positionId,
	            @RequestParam(value = "vacationTypeName", required = false) String vacationTypeName,
	            @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
	            @RequestParam(value = "viewCount", required = false, defaultValue = "30") int viewCount,
	            @RequestParam(value = "page", required = false, defaultValue = "1") int page,
	            Model model) {

	        int offset = (page - 1) * viewCount;
	        List<VacationDetailsEntity> filteredVacations = service.getFilteredVacationDetails(
	                status, employmentType, departmentId, positionId, vacationTypeName, searchKeyword, offset, viewCount);
	        model.addAttribute("vacList", filteredVacations);
	        return "partials/vacationList :: vacationList";
	    }
	    @GetMapping("/vacationDetails")
	    @ResponseBody
	    public List<VacationDetailsEntity> getVacationDetails(@RequestParam("employeeId") Long employeeId) {
	        return service.getVacationDetailsByEmployeeId(employeeId);
	    }
	    
	}