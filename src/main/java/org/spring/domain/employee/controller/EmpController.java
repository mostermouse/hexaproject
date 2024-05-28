package org.spring.domain.employee.controller;

import org.spring.domain.employee.controller.model.DetailsRegistrationForm;
import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.CompanyEntity;
import org.spring.domain.employee.model.ContactEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.EmployeeSalaryAccountEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.employee.service.EmployeeService;
import org.spring.domain.employeedetails.model.CertificationEntity;
import org.spring.domain.employeedetails.service.EmpDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class EmpController {

    private EmployeeService employeeService;
    private EmpDetailsService empDetailsService;

    // 사원현황판, 급여대장
    @GetMapping("/")
    public String getEmployees(@RequestParam(name="year", required =  false, defaultValue = "2024") Long year, Model model) {
    	log.info("index");
    	
    	//사원현황판
        model.addAttribute("list", employeeService.getAllEmployee());
        model.addAttribute("employed", employeeService.countByStatusEmployed());
        model.addAttribute("regular", employeeService.countByEmploymentTypeRegular());
        model.addAttribute("contract", employeeService.countByEmploymentTypeContract());
        model.addAttribute("temporary", employeeService.countByEmploymentTypeTemporary());
        model.addAttribute("dispatched", employeeService.countByEmploymentTypeDispatched());
        model.addAttribute("appointed", employeeService.countByEmploymentTypeAppointed());
        model.addAttribute("daily", employeeService.countByEmploymentTypeDaily());
        model.addAttribute("resigned", employeeService.countByStatusResigned());
        model.addAttribute("allemployees", employeeService.countAllEmployees());
        log.info("getEmployess...........");
        //회사정보 출력
        model.addAttribute("company", employeeService.getCompany());
        //급여대장
    	model.addAttribute("listWageRecord", employeeService.listWageRecord(year));
    	log.info("getWageList...........");
    	
        return "index";
    }
    
    // 사원등록 1페이지
    @GetMapping("/personnel/employeeIns")
    public String showRegistrationForm(Model model) {
        model.addAttribute("employee", new EmployeeEntity());
        model.addAttribute("dependents", new DependentsEntity());
        model.addAttribute("degree", new DegreeEntity());
        model.addAttribute("career", new CareerEntity());
        model.addAttribute("militaryservice", new MilitaryServiceEntity());
        model.addAttribute("department", employeeService.getDepartment());
        model.addAttribute("position" , employeeService.getPosition());
        log.info("showRegistrationForm : {}" + model.toString());

        return "defaultPreferences/employeeRegistration";
    }

    @PostMapping("/employeeregistration")
    public String registerEmployee(@ModelAttribute EmployeeEntity employeeEntity,
                                   @ModelAttribute DependentsEntity dependentsEntity,
                                    @ModelAttribute DegreeEntity degreeEntity,
                                   @ModelAttribute CareerEntity careerEntity,
                                   @ModelAttribute MilitaryServiceEntity militaryServiceEntity,
                                   Model model) {
        employeeService.registerEmployee(employeeEntity , dependentsEntity , degreeEntity , careerEntity , militaryServiceEntity);

        log.info("register" + model.toString());
        return "redirect:/personnel/register"; // 페이지 경로 수정
    }

    @GetMapping("/employeeMnt")
    public String employeeMnt(Model model) {
        model.addAttribute("list", employeeService.getAllEmployee());
        model.addAttribute("employed", employeeService.countByStatusEmployed());
        model.addAttribute("regular", employeeService.countByEmploymentTypeRegular());
        model.addAttribute("contract", employeeService.countByEmploymentTypeContract());
        model.addAttribute("temporary", employeeService.countByEmploymentTypeTemporary());
        model.addAttribute("dispatched", employeeService.countByEmploymentTypeDispatched());
        model.addAttribute("appointed", employeeService.countByEmploymentTypeAppointed());
        model.addAttribute("daily", employeeService.countByEmploymentTypeDaily());
        model.addAttribute("resigned", employeeService.countByStatusResigned());
        model.addAttribute("allemployees", employeeService.countAllEmployees());
        model.addAttribute("department", employeeService.getDepartment());
        model.addAttribute("position" , employeeService.getPosition());
        log.info(model.toString());

        return "hrManagement/employeeMnt";

    }
    
    
    @GetMapping("/membersInfo") //사용자 정보
    public String membersInfo(Model model){
        model.addAttribute("department", employeeService.getDepartment());
        model.addAttribute("position" , employeeService.getPosition());
        log.info(model.toString());
        return "defaultPreferences/membersInfo";
    }

    @PostMapping("/companyInfo")
    public String companyInfo(@ModelAttribute CompanyEntity companyEntity, @ModelAttribute ContactEntity contactEntity, @ModelAttribute EmployeeSalaryAccountEntity employeeSalaryAccountEntity, Model model) {
        log.info(model.toString());

        // 하나의 서비스 메서드 호출로 세 개의 삽입 작업을 처리
        employeeService.registerCompanyAndDetails(companyEntity, contactEntity, employeeSalaryAccountEntity);

        return "redirect:/personnel/employeeIns";
    }
 // 사원등록 2페이지
    @GetMapping("/personnel/register")
    public String showDetailsRegistrationForm(Model model) {
        model.addAttribute("certification", new CertificationEntity());
        model.addAttribute("languageability", new CertificationEntity());
        model.addAttribute("training", new CertificationEntity());
        model.addAttribute("rewardpenalty", new CertificationEntity());
        model.addAttribute("appointment", new CertificationEntity());
        model.addAttribute("referrer", new CertificationEntity());
        model.addAttribute("insurance", new CertificationEntity());
        model.addAttribute("guarantor", new CertificationEntity());
        model.addAttribute("retirement", new CertificationEntity());

        return "defaultPreferences/employeeRegistration2";
    }

    // 사원등록 2페이지 처리
    @PostMapping("/employeeregistration2")
    public String registerEmployeeDetails(@ModelAttribute DetailsRegistrationForm detailsRegistrationForm, Model model) {
        empDetailsService.registerDetails(detailsRegistrationForm);

        log.info("register" + model.toString());
        return "redirect:/employeeMnt";
    }
}
