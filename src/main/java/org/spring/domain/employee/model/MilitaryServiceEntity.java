package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MilitaryServiceEntity extends EmployeeEntity {
    private Long militaryServiceId;
    private String serviceType;
    private String branch;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate servicePeriod1;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate servicePeriod2;
    private String finalRank;
    private String department;
    private String exemptionReason;

}
