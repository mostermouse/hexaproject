package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.cglib.core.Local;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InsuranceEntity extends EmployeeEntity {
    private Long insuranceId;
    private String insuranceAgency;
    private String insuranceNumber;
    private Long insuranceAmount;
    private LocalDate insuranceStartDate;
    private LocalDate insuranceEndDate;
    private String remarks;

}
