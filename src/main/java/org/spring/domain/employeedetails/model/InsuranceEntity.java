package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InsuranceEntity extends EmployeeEntity
{
    private Long insuranceId;
    private String insuranceAgency;
    private String insuranceNumber;
    private Long insuranceAmount;
    private LocalDate insuranceStartDate;
    private LocalDate insuranceEndDate;
    private String remarks;

}
