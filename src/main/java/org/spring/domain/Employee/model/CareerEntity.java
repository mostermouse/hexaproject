package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CareerEntity extends EmployeeEntity {
    private Long careerId;
    private String companyName;
    private LocalDate startDate;
    private LocalDate endDate;
    private String employmentPeriod;
    private String finalPosition;
    private String responsibilities;
    private String reasonForResignation;

}
