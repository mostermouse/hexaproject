package org.spring.domain.employee.controller.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.CompanyEntity;
import org.spring.domain.employee.model.ContactEntity;
import org.spring.domain.employee.model.EmployeeSalaryAccountEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyRegisterationForm {
    private CompanyEntity companyEntity;
    private ContactEntity contactEntity;
    private EmployeeSalaryAccountEntity employeeSalaryAccountEntity;

}
