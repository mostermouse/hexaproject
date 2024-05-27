package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate insuranceStartDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate insuranceEndDate;
    private String remarks;

}
