package org.spring.controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.spring.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@AllArgsConstructor
public class EmpController {

    private EmployeeService service;

    @GetMapping("/list")
    public void list(Model model) {
        log.info("list");
        model.addAttribute("list", service.getAllEmployee());

    }



}
