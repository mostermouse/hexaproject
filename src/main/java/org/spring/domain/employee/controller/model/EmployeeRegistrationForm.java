package org.spring.domain.employee.controller.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.*;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeRegistrationForm {
    private EmployeeEntity employeeEntity;
    private DependentsEntity dependentsEntity;
    private DegreeEntity degreeEntity;
    private CareerEntity careerEntity;
    private MilitaryServiceEntity militaryServiceEntity;

}
