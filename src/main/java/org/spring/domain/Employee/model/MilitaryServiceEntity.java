package org.spring.domain.Employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MilitaryServiceEntity extends EmployeeEntity {
    private Long militaryServiceId;
    private String serviceType;
    private String branch;
    private LocalDate servicePeriod1;
    private LocalDate servicePeriod2;
    private String finalRank;
    private String department;
    private String exemptionReason;

}
